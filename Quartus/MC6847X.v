`timescale 1ns / 1ps

module MC6847X(
	NTSCClk,
	PALClk,
	RequestFormat,
	DA,
	FSn,
	HSn,
	FormatClk,
	Format,
	Q,
	Inv,
	AnG,
	AnS,
	CSS,
	GM,
	Ext,
	RP,
	rgb
);

input		NTSCClk;
input		PALClk;
input		RequestFormat;
input		[7:0] Q;
input		Inv;
input		AnG;
input		AnS;
input		CSS;
input		[2:0] GM;
input		Ext;

output	wire [12:0] DA;
output	FSn;
output	HSn;
output	FormatClk;
output	Format;
output	RP;
output	wire [8:0] rgb;

wire	DataPreLoad;
wire	AlphaRowClear;
wire  [8:0] rowCount;
wire  [1:0] outputSelect;

	FormatSwitch	FormatSelect(
		.RequestFormat (RequestFormat),
		.Sync 		(FSn),
		.FormatOut 	(Format)
	);
	
	ClockSwitch		ColourClock(
		.Format		(Format),
		.Clk1 		(NTSCClk),
		.Clk2 		(PALClk),
		.Clk			(FormatClk)
	);
	
	FrameTiming		Frame(
		.clk 			(NTSCClk),
		.format 		(Format),
		.width		(6'b100000),
		.hsn			(HSn),
		.fsn			(FSn),
		.preload		(DataPreLoad),
		.rowclear 	(AlphaRowClear),
		.active		(outputSelect)
	);
	
	videoMux			outputStream(
		.select		(outputSelect),
		.channel1	(9'b000000000),
		.channel2	(9'b111111111),
		.channel3	(9'b111000000),
		.channel4	(9'b000111000),
		.result		(rgb)
	);
	
	counter #(.WIDTH(13)) dataAddress(
		.clk			(~DataPreLoad),
		.reset		(~FSn),
		.counter		(DA)
	);
	
	// DA0 needs to tick on DataPreLoad pulse
	// bit 0 of a 10 bit counter
	// needs to reset lower bits depending on mode
	// either lower 3, 4 or 5 bits (or none)
	// actual behaviour is quite complex - da0 triggers data fetch and needs to happen in the video ticks immediately before it is required
	// for 192 row mode the counter is continuous
	// for 96 row mode each row must repeat twice
	// for 64 row mode each row must repeat three times
	// for alpha modes each row must repeat twelve times
	// GMode 0 - 4 colour (2bpp) 64x64 - 16 byte wide - row div 3
	// GMode 1 - 2 colour 128x64 - 16 byte wide - row div 3
	// GMode 2 - 4 colour 128x64 - 32 byte wide - row div 3
	// GMode 3 - 2 colour 128x96 - 16 byte wide - row div 2
	// GMode 4 - 4 colour 128x96 - 32 byte wide - row div 2
	// Gmode 5 - 2 colour 128x192 - 16 byte wide
	// Gmode 6 - 4 colour 128x192 - 32 byte wide
	// Gmode 7 - 2 colour 256x192 - 32 byte wide
	// Alpha (A/S4/S6) - 256x192 - 32 byte wide - row div 12

	assign RP = AlphaRowClear;
endmodule