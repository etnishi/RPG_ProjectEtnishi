// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Init_Doe(){
	var arr = []
	
	var RES = []	// resistance stats 
	// these are multiplied against the DEF modifier 
	RES[5]	= 0		// Unblockable this stat will always be 0
	RES[0]	= 1		// Physical will usually be 1
	RES[1]	= 0.5	// Thermal,		damage over time
	RES[2]	= 0.5	// Cryo,		debuff
	RES[3]	= 0.5	// Electric,	hits all targets 
	RES[4]	= 0.5	// Magic,		no inherent extra
	
	var pre = []
	var post = []
	var act = []
	act = [Basic_Bash_I(), Charge_Bash_I(), "", "", "", "", "", Multi_Bash_I(), "", "", ""]
	var react = []
	react[0] = Endure
	var oth = []
	
	arr[20] = 1
	arr[19] = Player_Control	// control
	arr[0] = "J.Doe"	// name
	arr[1] = 8		// xp
	arr[2] = 100	// mhp
	arr[3] = 100	// chp
	arr[4] = 100	// mmp
	arr[5] = 100	// mcp
	
	arr[6] = 45		// atk
	arr[7] = 30		// def
	arr[8] = 50		// mag
	arr[9] = 35		// agi
	arr[10] = 25	// skl
	arr[11] = 35	// spd
	arr[12] = 40	// lck
	
	arr[13] = RES	// res
	
	arr[14] = pre	// pre
	arr[15] = post	// post
	arr[16] = act	// active
	arr[17] = react	// reactive
	arr[18] = oth	// other
	
	return arr
}