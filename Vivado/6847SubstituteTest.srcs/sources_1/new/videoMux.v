module videoMux(
	input [1:0] select,
	input [8:0] channel1,
	input [8:0] channel2,
	input [8:0] channel3,
	input [8:0] channel4,
	output reg [8:0] result
);

	always @(select,channel1,channel2,channel3,channel4) begin
		case(select)
			2'b01 : result = channel2;
			2'b10 : result = channel3;
			2'b11 : result = channel4;
			default : result = channel1;
		endcase
	end

endmodule
