/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_81(char*, char *);
IKI_DLLESPEC extern void execute_82(char*, char *);
IKI_DLLESPEC extern void execute_83(char*, char *);
IKI_DLLESPEC extern void execute_87(char*, char *);
IKI_DLLESPEC extern void execute_94(char*, char *);
IKI_DLLESPEC extern void execute_95(char*, char *);
IKI_DLLESPEC extern void execute_96(char*, char *);
IKI_DLLESPEC extern void execute_99(char*, char *);
IKI_DLLESPEC extern void execute_104(char*, char *);
IKI_DLLESPEC extern void execute_109(char*, char *);
IKI_DLLESPEC extern void execute_110(char*, char *);
IKI_DLLESPEC extern void execute_164(char*, char *);
IKI_DLLESPEC extern void execute_165(char*, char *);
IKI_DLLESPEC extern void execute_166(char*, char *);
IKI_DLLESPEC extern void execute_167(char*, char *);
IKI_DLLESPEC extern void execute_168(char*, char *);
IKI_DLLESPEC extern void execute_169(char*, char *);
IKI_DLLESPEC extern void execute_170(char*, char *);
IKI_DLLESPEC extern void execute_171(char*, char *);
IKI_DLLESPEC extern void execute_172(char*, char *);
IKI_DLLESPEC extern void execute_173(char*, char *);
IKI_DLLESPEC extern void execute_174(char*, char *);
IKI_DLLESPEC extern void execute_175(char*, char *);
IKI_DLLESPEC extern void execute_176(char*, char *);
IKI_DLLESPEC extern void execute_177(char*, char *);
IKI_DLLESPEC extern void execute_178(char*, char *);
IKI_DLLESPEC extern void execute_179(char*, char *);
IKI_DLLESPEC extern void execute_180(char*, char *);
IKI_DLLESPEC extern void execute_181(char*, char *);
IKI_DLLESPEC extern void execute_182(char*, char *);
IKI_DLLESPEC extern void execute_183(char*, char *);
IKI_DLLESPEC extern void execute_184(char*, char *);
IKI_DLLESPEC extern void execute_185(char*, char *);
IKI_DLLESPEC extern void execute_186(char*, char *);
IKI_DLLESPEC extern void execute_187(char*, char *);
IKI_DLLESPEC extern void execute_188(char*, char *);
IKI_DLLESPEC extern void execute_189(char*, char *);
IKI_DLLESPEC extern void execute_190(char*, char *);
IKI_DLLESPEC extern void execute_191(char*, char *);
IKI_DLLESPEC extern void execute_192(char*, char *);
IKI_DLLESPEC extern void execute_193(char*, char *);
IKI_DLLESPEC extern void execute_194(char*, char *);
IKI_DLLESPEC extern void execute_195(char*, char *);
IKI_DLLESPEC extern void execute_196(char*, char *);
IKI_DLLESPEC extern void execute_197(char*, char *);
IKI_DLLESPEC extern void execute_198(char*, char *);
IKI_DLLESPEC extern void execute_199(char*, char *);
IKI_DLLESPEC extern void execute_200(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_139(char*, char *);
IKI_DLLESPEC extern void execute_140(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_for_reg(char*, char*, char*);
IKI_DLLESPEC extern void execute_142(char*, char *);
IKI_DLLESPEC extern void execute_143(char*, char *);
IKI_DLLESPEC extern void execute_144(char*, char *);
IKI_DLLESPEC extern void execute_145(char*, char *);
IKI_DLLESPEC extern void execute_146(char*, char *);
IKI_DLLESPEC extern void execute_147(char*, char *);
IKI_DLLESPEC extern void execute_148(char*, char *);
IKI_DLLESPEC extern void execute_149(char*, char *);
IKI_DLLESPEC extern void execute_151(char*, char *);
IKI_DLLESPEC extern void execute_152(char*, char *);
IKI_DLLESPEC extern void execute_153(char*, char *);
IKI_DLLESPEC extern void execute_154(char*, char *);
IKI_DLLESPEC extern void execute_155(char*, char *);
IKI_DLLESPEC extern void execute_156(char*, char *);
IKI_DLLESPEC extern void execute_157(char*, char *);
IKI_DLLESPEC extern void execute_158(char*, char *);
IKI_DLLESPEC extern void execute_159(char*, char *);
IKI_DLLESPEC extern void execute_160(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_116(char*, char *);
IKI_DLLESPEC extern void execute_40(char*, char *);
IKI_DLLESPEC extern void execute_53(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_117(char*, char *);
IKI_DLLESPEC extern void execute_118(char*, char *);
IKI_DLLESPEC extern void execute_119(char*, char *);
IKI_DLLESPEC extern void execute_121(char*, char *);
IKI_DLLESPEC extern void execute_122(char*, char *);
IKI_DLLESPEC extern void execute_123(char*, char *);
IKI_DLLESPEC extern void execute_124(char*, char *);
IKI_DLLESPEC extern void execute_126(char*, char *);
IKI_DLLESPEC extern void execute_127(char*, char *);
IKI_DLLESPEC extern void execute_130(char*, char *);
IKI_DLLESPEC extern void execute_131(char*, char *);
IKI_DLLESPEC extern void execute_132(char*, char *);
IKI_DLLESPEC extern void execute_37(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_45(char*, char *);
IKI_DLLESPEC extern void execute_46(char*, char *);
IKI_DLLESPEC extern void execute_43(char*, char *);
IKI_DLLESPEC extern void execute_44(char*, char *);
IKI_DLLESPEC extern void execute_48(char*, char *);
IKI_DLLESPEC extern void execute_49(char*, char *);
IKI_DLLESPEC extern void execute_51(char*, char *);
IKI_DLLESPEC extern void execute_52(char*, char *);
IKI_DLLESPEC extern void execute_59(char*, char *);
IKI_DLLESPEC extern void execute_60(char*, char *);
IKI_DLLESPEC extern void execute_133(char*, char *);
IKI_DLLESPEC extern void execute_134(char*, char *);
IKI_DLLESPEC extern void execute_57(char*, char *);
IKI_DLLESPEC extern void execute_58(char*, char *);
IKI_DLLESPEC extern void execute_62(char*, char *);
IKI_DLLESPEC extern void execute_135(char*, char *);
IKI_DLLESPEC extern void execute_64(char*, char *);
IKI_DLLESPEC extern void execute_66(char*, char *);
IKI_DLLESPEC extern void execute_68(char*, char *);
IKI_DLLESPEC extern void execute_136(char*, char *);
IKI_DLLESPEC extern void execute_137(char*, char *);
IKI_DLLESPEC extern void execute_71(char*, char *);
IKI_DLLESPEC extern void execute_73(char*, char *);
IKI_DLLESPEC extern void execute_77(char*, char *);
IKI_DLLESPEC extern void execute_79(char*, char *);
IKI_DLLESPEC extern void execute_80(char*, char *);
IKI_DLLESPEC extern void execute_85(char*, char *);
IKI_DLLESPEC extern void execute_86(char*, char *);
IKI_DLLESPEC extern void execute_161(char*, char *);
IKI_DLLESPEC extern void execute_112(char*, char *);
IKI_DLLESPEC extern void execute_113(char*, char *);
IKI_DLLESPEC extern void execute_114(char*, char *);
IKI_DLLESPEC extern void execute_115(char*, char *);
IKI_DLLESPEC extern void execute_201(char*, char *);
IKI_DLLESPEC extern void execute_202(char*, char *);
IKI_DLLESPEC extern void execute_203(char*, char *);
IKI_DLLESPEC extern void execute_204(char*, char *);
IKI_DLLESPEC extern void execute_205(char*, char *);
IKI_DLLESPEC extern void execute_206(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback_2state(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[200] = {(funcp)execute_2, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_87, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_99, (funcp)execute_104, (funcp)execute_109, (funcp)execute_110, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_168, (funcp)execute_169, (funcp)execute_170, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_181, (funcp)execute_182, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_186, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_196, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_200, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_139, (funcp)execute_140, (funcp)vlog_const_rhs_process_execute_0_fast_for_reg, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_151, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_160, (funcp)execute_5, (funcp)execute_6, (funcp)execute_116, (funcp)execute_40, (funcp)execute_53, (funcp)execute_54, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_126, (funcp)execute_127, (funcp)execute_130, (funcp)execute_131, (funcp)execute_132, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_35, (funcp)execute_36, (funcp)execute_45, (funcp)execute_46, (funcp)execute_43, (funcp)execute_44, (funcp)execute_48, (funcp)execute_49, (funcp)execute_51, (funcp)execute_52, (funcp)execute_59, (funcp)execute_60, (funcp)execute_133, (funcp)execute_134, (funcp)execute_57, (funcp)execute_58, (funcp)execute_62, (funcp)execute_135, (funcp)execute_64, (funcp)execute_66, (funcp)execute_68, (funcp)execute_136, (funcp)execute_137, (funcp)execute_71, (funcp)execute_73, (funcp)execute_77, (funcp)execute_79, (funcp)execute_80, (funcp)execute_85, (funcp)execute_86, (funcp)execute_161, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_201, (funcp)execute_202, (funcp)execute_203, (funcp)execute_204, (funcp)execute_205, (funcp)execute_206, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_40, (funcp)transaction_42, (funcp)transaction_46, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_54, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_73, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_94, (funcp)transaction_100, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_106, (funcp)transaction_121, (funcp)transaction_150, (funcp)transaction_174, (funcp)transaction_176, (funcp)transaction_178, (funcp)transaction_180, (funcp)transaction_182, (funcp)transaction_184, (funcp)transaction_186, (funcp)transaction_188, (funcp)transaction_190, (funcp)transaction_192, (funcp)transaction_194, (funcp)transaction_196, (funcp)transaction_198, (funcp)transaction_0, (funcp)transaction_1, (funcp)transaction_2, (funcp)vlog_transfunc_eventcallback_2state, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_16, (funcp)transaction_18, (funcp)transaction_19, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_23, (funcp)transaction_25, (funcp)transaction_27, (funcp)transaction_28, (funcp)transaction_30, (funcp)transaction_31, (funcp)transaction_32, (funcp)transaction_65, (funcp)transaction_68, (funcp)transaction_75, (funcp)transaction_83};
const int NumRelocateId= 200;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/MC6847XTB_behav/xsim.reloc",  (void **)funcTab, 200);
	iki_vhdl_file_variable_register(dp + 48808);
	iki_vhdl_file_variable_register(dp + 48864);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/MC6847XTB_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/MC6847XTB_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 87656, dp + 52288, 0, 11, 0, 11, 12, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 86216, dp + 65696, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 86624, dp + 65752, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 84448, dp + 65808, 0, 3, 0, 3, 4, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 84792, dp + 65864, 0, 3, 0, 3, 4, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 85928, dp + 65976, 0, 3, 0, 3, 4, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77512, dp + 73704, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77472, dp + 73760, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 78920, dp + 73872, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 90608, dp + 55032, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 90960, dp + 55368, 0, 3, 0, 3, 4, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 91248, dp + 55592, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 91656, dp + 56040, 0, 3, 0, 3, 4, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 91944, dp + 56264, 0, 8, 0, 8, 9, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/MC6847XTB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/MC6847XTB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/MC6847XTB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
