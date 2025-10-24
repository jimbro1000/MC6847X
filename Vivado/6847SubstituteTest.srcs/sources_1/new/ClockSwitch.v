module ClockSwitch(
	input Format,
	input Clk1,
	input Clk2,
	output Clk
);

	assign Clk = (Format && Clk2) || (~Format && Clk1);

endmodule