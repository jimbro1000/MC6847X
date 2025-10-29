module videoShiftClock(
	input clk,
	input div2,
	output reg vsclk
);

initial begin
	vsclk = 0;
end

always @(clk, div2) begin
	if (div2) begin
		if (clk)
			vsclk = ~vsclk;
	end else begin
		vsclk = clk;
	end
end

endmodule