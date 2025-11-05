module invertText(
	bit [7:0] pixelsIn,
	bit Inv,
	bit [7:0] pixelsOut;
);

	assign pixelsOut = Inv ? ~pixelsIn : pixelsIn;

endmodule
