module videoDataShiftRegister(
	input clk,
	input load,
	input [7:0] data,
	input div2,
	output [1:0] pixelData
);

reg [9:0] pixels;
wire vsclk;

videoShiftClock shiftClock(
	.clk (clk),
	.div2 (div2),
	.vsclk (vsclk)
);

initial begin
	pixels = 10'd0;
end

always @(posedge vsclk) begin
	pixels <= pixels << 2;
	if (load) begin
		pixels[7:0] = data;
	end
end

assign pixeldata = pixels[9:8];

endmodule