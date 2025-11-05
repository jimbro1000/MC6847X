module textModeToPixel(
	input [1:0] data,
	input clk,
	input [3:0] colour,
	output wire [3:0] palette
);
	wire pixel;

	assign pixel = (clk == 1'b1) ? data[0] : data[1];
	assign palette = (pixel == 1'b1) ? colour : 4'b1000;

endmodule

/*
Tested working in simulation
*/