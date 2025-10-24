module FrameTiming(
	input  clk,
	input  format,
	output hsn,
	output fsn,
	output preload,
	output rowclear
);

	parameter rowCols = 9'd457;
	parameter hsyncCols = 9'd29;
	parameter rows0 = 9'd257;
	parameter rows1 = 9'd310;
	parameter vsyncRows = 9'd8;
	
	wire [8:0] maxRows;
	assign maxRows = format ? rows1 : rows0;

	wire colReset;
	wire [8:0] colCount; // 8 bits + clk
	assign colReset = ( colCount > rowCols ) ? 1'b1 : 1'b0;
	ext_counter pixelCols (
		.clk	   (clk),
		.reset	   (colReset),
		.count     (colCount)
	);
	
	wire rowReset;
	wire [8:0] rowCount;
	assign rowReset = (rowCount > maxRows);
	counter #(.WIDTH(9)) pixelRows (
		.clk		(colReset),
		.reset	    (rowReset),
		.enable	    (1'b1),
		.counter	(rowCount)
	);
	
	assign fsn = ~(rowCount < vsyncRows);
	assign hsn = ~(colCount < hsyncCols);
	assign rowclear = 1'b1;
	assign preload = 1'b1;

endmodule