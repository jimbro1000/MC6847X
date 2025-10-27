module FrameTiming(
	input  clk, 	// pixel clock (==NTSC)
	input  format, // 0 = NTSC, 1 = PAL
	input	 [5:0] width, 	// bytes
	output hsn, 	// horizontal sync, active low
	output fsn, 	// vertical sync, active low
	output preload, // data preload sync
	output rowclear, // char rom row counter reset
	output wire [8:0] row //debug frame row counter
);

	parameter rowCols = 9'd458;
	parameter hsyncCols = 9'd29;
	parameter rows0 = 9'd257;
	parameter rows1 = 9'd310;
	parameter vsyncRows = 9'd8;
	parameter portx = 9'd129;
	parameter porty0 = 9'd63;
	parameter porty1 = 9'd88;
	parameter portHeight = 9'd191;
	
	reg [8:0] maxRows;
	reg [8:0] portY;
	reg [8:0] maxPortY;
	
	reg [8:0] activeRow;
	
	wire [8:0] nPreload = portx - 9'd8;
	wire [4:0] dataCount;
	wire [3:0] alphaCount;

	wire rowClk;
	wire [8:0] colCount;
	col_counter_vhdl pixelCols (
		.clk		(clk),
		.count	(colCount),
		.carry	(rowClk)
	);
	
	always @(format, colCount) begin
		if (colCount > 9'd2) begin
			if (format) begin
				maxRows <= rows1;
				portY <= porty1;
				maxPortY <= porty1 + portHeight;
			end else begin
				maxRows <= rows0;
				portY <= porty0;
				maxPortY <= porty0 + portHeight;
			end
		end else begin
			maxRows <= rows0;
			portY <= porty0;
			maxPortY <= porty0 + portHeight;
		end
	end
	
	
	
	wire rowReset;
	wire [8:0] rowCount;
	row_counter_vhdl pixelRows (
		.clk		(rowClk),
		.limit	(maxRows),
		.count	(rowCount)
	);
	
	assign row = rowCount;
	
	
	wire dataReset;
	assign dataReset = (colCount < nPreload) || (dataCount == width);
	wire dataClock;
	assign dataClock = (width == 6'd8) ? colCount[5] : (width == 6'd16) ? colCount[4] : colCount[3];
	counter #(.WIDTH(5)) dataCounter (
		.clk		(dataClock),
		.reset	(dataReset),
		.counter (dataCount)
	);
	
	assign fsn = !(rowCount < vsyncRows);
	assign hsn = !(colCount < hsyncCols);

	wire alphaReset;
	assign alphaReset = (rowCount < portY) || (rowCount > maxPortY) || (alphaCount == 4'd12);
	counter #(.WIDTH(4)) alphaCounter (
		.clk		(~hsn),
		.reset	(alphaReset),
		.counter	(alphaCount)
	);
	
	assign rowclear = alphaCount == 4'd12;
	assign preload = dataCount == 5'd1;

endmodule