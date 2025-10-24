`timescale 1ns / 1ps

module MC6847X(
	NTSCClk,
	PALClk,
	RequestFormat,
	DA0,
	FSn,
	HSn,
	FormatClk,
	Format,
	RP
);

input		NTSCClk;
input		PALClk;
input		RequestFormat;

output	DA0;
output	FSn;
output	HSn;
output	FormatClk;
output	Format;
output  RP;

wire	DataPreLoad;
wire	AlphaRowClear;

	FormatSwitch	FormatSelect(
		.RequestFormat (RequestFormat),
		.Sync 		(FSn),
		.FormatOut 	(Format)
	);
	
	ClockSwitch		ColourClock(
		.Format		(Format),
		.Clk1 		(NTSCClk),
		.Clk2 		(PALClk),
		.Clk		(FormatClk)
	);
	
	FrameTiming		Frame(
		.clk 		(NTSCClk),
		.format 	(Format),
		.hsn		(HSn),
		.fsn		(FSn),
		.preload	(DataPreLoad),
		.rowclear 	(RP)
	);
	
	assign DA0 = 1'b0;

endmodule