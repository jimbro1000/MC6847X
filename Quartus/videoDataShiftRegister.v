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

always @(negedge vsclk) begin
	pixels <= pixels << 2;
	if (load) begin
		pixels[7:0] <= data;
	end
end

assign pixelData = pixels[9:8];

endmodule

/*
Tested working in simulation for load, shift and slow clock
PixelData output is correct
Shift must be on falling edge to ensure the correct bit is selected
*/