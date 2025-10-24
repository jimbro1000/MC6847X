module counter
	#(parameter WIDTH = 8)
(
	input  clk,
	input  reset,
	input  enable,
	output [WIDTH-1:0] counter
);

	reg [WIDTH-1:0] count;
	
	assign counter = count;
	
	initial begin
		count = 0;
	end
	
	always @(negedge clk) begin
		count = reset ? 1'b0 : enable ? count + 1'b1 : count;
	end

endmodule