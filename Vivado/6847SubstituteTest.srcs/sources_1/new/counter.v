module counter
	#(parameter WIDTH = 8)
(
	input  clk,
	input  reset,
	input  enable,
	output reg [WIDTH-1:0] counter
);

	initial begin
		counter = 0;
	end
	
	always @(negedge clk) begin
		counter <= reset ? 0 : enable ? counter + 1 : counter;
	end

endmodule