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
wire  [3:0] alphaRow;
wire  [8:0] rowCount;
wire  [1:0] outputSelect;
wire	[8:0] VPStream;
wire  [8:0] BDStream;
wire	[3:0] resPaletteValue;
wire	[3:0] graphicPaletteValue;
wire	[3:0] alphaPaletteValue;
wire	[3:0] paletteValue;
wire	[1:0] pixelData;
wire div2;

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
	
	clockDivide pixelClockDivider(
		.AnG (AnG),
		.GM (GM),
		.div2 (div2)
	);
	
	FrameTiming		Frame(
		.clk 			(NTSCClk),
		.format 		(Format),
		.div2			(div2),
		.hsn			(HSn),
		.fsn			(FSn),
		.preload		(DataPreLoad),
		.rowclear 	(AlphaRowClear),
		.active		(outputSelect)
	);
	
	videoDataShiftRegister videoDataRegister(
		.clk	(NTSCClk),
		.load	(DataPreLoad),
		.data	(videoData),
		.div2	(div2),
		.pixelData (pixelData)
	);
	
	alphaDataMux	charDataSelect(
		.index		(6'b010101),
		.row			(alphaRow),
		.chardata	(charRowData)
	);
	
	invertText		invCharData(
		.pixelsIn (charRowData),
		.Inv	(Inv),
		.pixelsOut (invCharRowData)
	);
	
	videoMux			outputStream(
		.select		(outputSelect),
		.channel1	(9'b000000000), //blank
		.channel2	(9'b111111111), //illegal
		.channel3	(9'b001001001), //BorderStream
		.channel4	(VPStream), 	 //ViewPortStream
		.result		(rgb)
	);
	
	resModeToPalette	resMode(
		.data			(pixelData),
		.clk			(NTSCClk),
		.CS			(CSS),
		.palette		(resPaletteValue)
	);
	
	graphicModeToPalette graphicMode(
		.data			(pixelData),
		.CS			(CSS),
		.palette		(graphicPaletteValue)
	);	
	
	textModeToPixel textMode(
		.data			(pixelData),
		.clk			(NTSCClk),
		.colour		(4'b0001),
		.palette		(alphaPaletteValue)
		
	);
	
	modeMux			modeSelector(
		.AnG			(AnG),
		.GM			(GM),
		.alphaData	(alphaPaletteValue),
		.graphData	(graphicPaletteValue),
		.resData		(resPaletteValue),
		.palette		(paletteValue)
	);
	
	colourMux		colourSelect(
		.data			(4'b0100), //paletteValue
		.RGB			(VPStream)
	);
	
	borderMux		borderSelect(
		.mode			(GM),
		.CS			(CSS),
		.AnG			(AnG),
		.RGB			(BDStream)
	);
	
	wire rowDiv2;
	wire rowDiv3;
	wire rowDiv12;
	
	rowDivide		rowRepeat(
		.AnG (AnG),
		.GM (GM),
		.div2 (rowDiv2),
		.div3 (rowDiv3),
		.div12 (rowDiv12)
	);
	
	data_counter_vhdl  dataAddress(
		.clk			(~DataPreLoad),
		.reset		(~FSn),
		.hsn			(HSn),
		.rp			(AlphaRowClear),
		.wide			(~div2),
		.div2			(rowDiv2),
		.div3			(rowDiv3),
		.div12		(rowDiv12),
		.count		(DA)
	);
	
	// DA0 needs to tick on DataPreLoad pulse
	// bit 0 of a 10 bit counter
	// needs to reset lower bits depending on mode
	// either lower 4 or 5 bits (or none)
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