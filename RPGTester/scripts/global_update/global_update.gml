// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function global_update(ind, ins){
	
	global.Player_Team[ind][19] = ins.controlType
	global.Player_Team[ind][0] = ins.insName// name
	global.Player_Team[ind][1] = ins.EXP// xp

	global.Player_Team[ind][2] = ins.MHP		// max health points
	global.Player_Team[ind][3] = ins.CHP 		// current health points
	global.Player_Team[ind][4] = ins.MMP 		// max magic points
	global.Player_Team[ind][5] = ins.CMP 		// current magic points
	global.Player_Team[ind][3] = ins.TargetHP

	global.Player_Team[ind][6]  = ins.BATK 		// modifyer used against the base physical damage of an attack
	global.Player_Team[ind][7]  = ins.BDEF 		// deffence modifier used with resistances
	global.Player_Team[ind][8]  = ins.BMAG 		// modifyer used against the base non physical damage of an attack
	global.Player_Team[ind][9]  = ins.BAGI 		// used to determine whether an attack hits (defence)
	global.Player_Team[ind][10] = ins.BSKL 		// used to determine whether an attack hits (attack)
	global.Player_Team[ind][11] = ins.BSPD 		// determines turn order
	global.Player_Team[ind][12] = ins.BLCK 		// effects critical hits
	
	global.Player_Team[ind][13] = ins.RES
	global.Player_Team[ind][14] = ins.PreTurn
	global.Player_Team[ind][15] = ins.PostTurn
	global.Player_Team[ind][16] = ins.Active
	global.Player_Team[ind][17] = ins.Reactive
	global.Player_Team[ind][18] = ins.Other
}