module FormatSwitch (
	input  RequestFormat,
	input  Sync,
	output reg FormatOut
);

	initial begin
		FormatOut = 1'b0;
	end

	always @(posedge Sync) begin
		FormatOut <= RequestFormat;
	end
		
endmodule