module textModeToPixel(
	input data,
	input [3:0] colour,
	output wire [3:0] palette
);

	assign palette = (data == 1'b1) ? colour : 4'b1000;

endmodule
