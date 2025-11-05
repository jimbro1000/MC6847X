module ext_counter (
	input  clk,
	input  reset,
	output [8:0] count
);

	reg [7:0] cheatCount;
	
	initial begin
        cheatCount = 8'b11111111;
	end
	
	assign count = { cheatCount, clk };
	
	always @(negedge clk) begin
		cheatCount = reset ? 8'd0 : cheatCount + 8'd1;
	end
	
endmodule