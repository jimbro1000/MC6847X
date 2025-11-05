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
    bit DA;
    bit Q;
	bit Inv;
	bit AnG;
	bit AnS;
	bit CSS;
	bit [2:0] GM;
	bit Ext;
	bit RP;
	bit [8:0] rgb;
    
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
    
    bit load;
    bit [7:0] data;
    bit div2;
    bit [1:0] pixelData;
    
    initial begin
        load = 0;
        div2 = 0;
        data = 8'b11001001;
    end
    videoDataShiftRegister subject3(.*);
    
    always #10 clk = ~clk;
    
    always begin
        #27 load = 1;
        #5 load = 0;
        #48;
        data = ~data;
    end
    
    always begin
        #320 div2 = ~div2;
    end
    
    bit [3:0] colour_value = 4'd0;
    bit [8:0] colour_rgb;
    
    colourMux subject4(
        .data (colour_value),
        .rgb (colour_rgb)
    );
    
    always begin
        #20 colour_value = colour_value + 4'd1;
    end
    
    bit [2:0] gmtpIn = 3'd0;
    bit [3:0] gmPalette;
    bit [8:0] gmrgb;
    
    graphicModeToPalette gmtp(
        .data (gmtpIn[1:0]),
        .CS (gmtpIn[2]), 
        .palette (gmPalette)   
    );
    
    colourMux subject5(
        .data (gmPalette),
        .rgb (gmrgb)
    );
    
    always begin
        #20 gmtpIn = gmtpIn + 1;
    end
    
    bit [2:0] rmtpIn = 3'd0;
    bit rmtpClk = 0;
    bit [3:0] rmPalette;
    bit [8:0] rmrgb;
    
    resModeToPalette rmtp(
        .data (rmtpIn[1:0]),
        .CS (rmtpIn[2]),
        .clk (rmtpClk),
        .palette (rmPalette)
    );
    
    colourMux subject6(
        .data (rmPalette),
        .rgb (rmrgb)
    );
    
    always begin
        #10 rmtpClk = 0;
        #10 rmtpIn = rmtpIn + 1;
        rmtpClk = 1;
    end
    
endmodule
