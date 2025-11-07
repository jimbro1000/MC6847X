module FrameTiming(
	input  clk, 	// pixel clock (==NTSC)
	input  format, // 0 = NTSC, 1 = PAL
	input	 div2, 	// pixel clock divider
	output hsn, 	// horizontal sync, active low
	output fsn, 	// vertical sync, active low
	output preload, // data preload sync
	output rowclear, // ext char rom row counter reset
	output [3:0] alphaCount, // char rom row counter
	output reg [1:0] active, // active viewport/border/blank 00=blank 10=border 11=viewport
	output [8:0] debug //debug frame row counter
);

	parameter rowCols = 9'd458;
	parameter rows0 = 9'd257;
	parameter rows1 = 9'd310;
	parameter vsyncStart = 9'd3;
	parameter vsyncEnd = 9'd8;
	parameter vblankBoundary = 9'd10;
	parameter portx = 9'd129;
	parameter maxPortX = 9'd385;
	parameter porty0 = 9'd63;
	parameter porty1 = 9'd88;
	parameter portHeight = 9'd191;
	parameter hsyncStart = 9'd10;
	parameter hsyncEnd = 9'd34;
	parameter blankBoundary = 9'd78;
	
	reg [8:0] maxRows;
	reg [8:0] portY;
	reg [8:0] maxPortY;
	reg [1:0] state;
	reg [8:0] activeRow;
	
	wire [5:0] width;
	wire [8:0] nPreload;
	wire [4:0] dataCount;
	wire blank;
	
	assign nPreload = portx - 9'd8;
	
	assign width = div2 ? 5'd16 : 5'd32;

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
	
	// define data load trigger for 16 or 32 byte wide view ports
	// needs to count to 16 or 32
	wire dataReset;
	assign dataReset = (colCount < nPreload) || (dataCount == width);
	wire dataClock;
	assign dataClock = (width == 6'd32) ? colCount[3] : colCount[4];
	counter #(.WIDTH(5)) dataCounter (
		.clk		(dataClock),
		.reset	(dataReset),
		.enable	(1'b1),
		.counter (dataCount)
	);
	
	assign fsn = !((rowCount > vsyncStart) && (rowCount < vsyncEnd));
	assign hsn = !((colCount > hsyncStart) && (colCount < hsyncEnd));
	assign blank = colCount < blankBoundary || rowCount < vblankBoundary;

	wire alphaReset;
	assign alphaReset = (rowCount < portY) || (rowCount > maxPortY) || (alphaCount == 4'd12);
	counter #(.WIDTH(4)) alphaCounter (
		.clk		(~hsn),
		.reset	(alphaReset),
		.enable  (1'b1),
		.counter	(alphaCount)
	);
	
	assign rowclear = alphaCount == 4'd12;
	assign preload = dataCount == 5'd1;

	always @(clk, dataCount) begin
		activeRow = {4'b0000, dataCount};
	end
	
	always @(colCount, rowCount, blank, portY, maxPortY) begin
		if (blank) 
			active = 2'b00;
		else if ((colCount > portx) && (colCount < maxPortX) && (rowCount > portY) && (rowCount < maxPortY))
			active = 2'b11;
		else
			active = 2'b10;
	end
	
	assign debug = activeRow;
		
endmodule