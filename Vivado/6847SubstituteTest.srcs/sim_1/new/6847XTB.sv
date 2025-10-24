`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2025 17:07:49
// Design Name: 
// Module Name: 6847XTB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MC6847XTB;

    bit NTSCClk;
    bit PALClk;
    bit RequestFormat;
    bit DA0;
    bit FSn;
    bit HSn;
    bit FormatClk;
    bit Format;
    bit RP;
    
    initial begin
        RequestFormat = 1'b0;
        NTSCClk = 1'b0;
        PALClk = 1'b0;
    end
    
    MC6847X subject(.*);
    
    always #231 PALClk = ~PALClk;
    always #270 NTSCClk = ~NTSCClk;
    
    bit clk;
    bit reset;
    bit [8:0] count;
    
    initial begin
        clk = 0;
        reset = 0;
    end
    ext_counter subject2(.*);
    
    always #10 clk = ~clk;
endmodule
