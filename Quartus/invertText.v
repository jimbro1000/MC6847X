module invertText(
	input [7:0] pixelsIn,
	input Inv,
	output [7:0] pixelsOut
);

	assign pixelsOut = Inv ? ~pixelsIn : pixelsIn;

endmodule
