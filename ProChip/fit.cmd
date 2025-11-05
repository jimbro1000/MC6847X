-i h:\MC6847X\ProChip\MC6847X.edf
-ifmt EDIF
-lib c:\ATMEL_PLS_Tools\ProChip\PLDFit\aprim.lib 

-pinfile
 -tech ATF1508AS
 -device PLCC84
-preassign try
-str logic_doubling off
-str pin_keep = DA0 Format FormatClk FSn HSn NTSCClk PALClk RequestFormat rgb_0 rgb_1 rgb_2 rgb_3 rgb_4 rgb_5 rgb_6 rgb_7 rgb_8
 -str JTAG ON 
-str TDI_pullup = ON 
-str TMS_pullup = ON 
 -verilog_sim SDF
-tPD 10

 
-str power_reset OFF
-str Optimize ON -str PUSH_GATE ON 
-str output_fast = DA0 Format FormatClk FSn HSn rgb_0 rgb_1 rgb_2 rgb_3 rgb_4 rgb_5 rgb_6 rgb_7 rgb_8
-str fast_inlatch = NTSCClk PALClk RequestFormat
-str Foldback_Logic =  DA0 Format FormatClk FSn HSn rgb_0 rgb_1 rgb_2 rgb_3 rgb_4 rgb_5 rgb_6 rgb_7 rgb_8
-str Global_OE = DA0 Format FormatClk FSn HSn rgb_0 rgb_1 rgb_2 rgb_3 rgb_4 rgb_5 rgb_6 rgb_7 rgb_8
-str XOR_Synthesis = ON
-str pd1 off
-str pd2 off
