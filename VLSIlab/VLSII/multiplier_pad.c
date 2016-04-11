#include <genlib.h>

main()
{
int i;
	GENLIB_DEF_LOFIG("multiplier_pad");
	
	GENLIB_LOCON("vdd",			IN			,"vdd");
	GENLIB_LOCON("vss",			IN			,"vss");
	GENLIB_LOCON("vdde",			IN			,"vdde");
	GENLIB_LOCON("vsse",			IN			,"vsse");
	GENLIB_LOCON("op_a[7:0]",		IN			,"op_a[7:0]");
	GENLIB_LOCON("op_b[7:0]",		IN			,"op_b[7:0]");
	GENLIB_LOCON("reset",			IN			,"reset");
	GENLIB_LOCON("start",			IN			,"start");
	GENLIB_LOCON("clk",			IN			,"clk");
	GENLIB_LOCON("ready",			OUT			,"ready");
	GENLIB_LOCON("result[15:0]",	  	OUT			,"result[15:0]");
	
	GENLIB_LOINS ("pvsse_sp", "p20", "clk", "vdde", "vdd", "vsse", "vss",0);
	GENLIB_LOINS ("pvdde_sp", "p21", "clk", "vdde", "vdd", "vsse", "vss",0);
	GENLIB_LOINS ("pvddeck_sp", "p22", "clk", "vdde", "vdd","vsse", "vss",0);
	GENLIB_LOINS ("pvssi_sp", "p23", "clk", "vdde", "vdd", "vsse", "vss",0);
	GENLIB_LOINS ("pvddi_sp", "p24", "clk", "vdde", "vdd", "vsse", "vss",0);
	
	for (i = 0; i < 8; i++)
		GENLIB_LOINS("pi_sp", 	
					GENLIB_NAME("p%d", i), 
					GENLIB_NAME("op_a[%d]", i), 
					GENLIB_NAME("op_a[%d]", i), "clk", "vdde", "vdd", "vsse", "vss", 0);
	for (i = 0; i < 8; i++)
		GENLIB_LOINS("pi_sp", 
					GENLIB_NAME("p%d", i + 8),
					GENLIB_NAME("op_b[%d]", i), 
					GENLIB_NAME("op_b[%d]", i),"clk", "vdde", "vdd", "vsse", "vss", 0);
	for (i = 0; i < 16; i++)
		GENLIB_LOINS("po_sp", 
					GENLIB_NAME("p%d", i + 16),
					GENLIB_NAME("result[%d]", i), 
					GENLIB_NAME("result[%d]", i),"clk", "vdde", "vdd", "vsse", "vss", 0);

	GENLIB_LOINS("pi_sp", "p16", "start", "clk", "vdde", "vdd", "vsse", "vss", 0);
	GENLIB_LOINS("pi_sp", "p17", "reset", "clk", "vdde", "vdd", "vsse", "vss", 0);
	GENLIB_LOINS("pck_sp", "p18", "clk", "vdde", "vdd", "vsse", "vss", 0);
	GENLIB_LOINS("po_sp", "p19",  "ready", "clk", "vdde", "vdd", "vsse", "vss", 0); 
	GENLIB_LOINS("multiplier", "multiplier", "vdd", "vss",  "op_a[7:0]", "op_b[7:0]","result",
				"start", "reset", "clk", "ready", 0);
	
	GENLIB_SAVE_LOFIG();
exit(0);
}
