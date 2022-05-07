// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Pre_Script(){
	//array_push(BattleController_obj.notificationLines, insName + " turn")
	// reinitialize from base stats
	ATK = BATK	// modifyer used against the base physical damage of an attack
	DEF = BDEF	// deffence modifier used with resistances
	MAG = BMAG	// modifyer used against the base non physical damage of an attack
	AGI = BAGI	// used to determine whether an attack hits (defence)
	SKL = BSKL	// used to determine whether an attack hits (attack)
	SPD = BSPD	// determines turn order
	LCK = BLCK	// effects critical hits
	
	RES[5]	= BRES[5]	// Unblockable this stat will always be 0
	RES[0]	= BRES[0]	// Physical will usually be 1
	RES[1]	= BRES[1]	// Thermal,		damage over time
	RES[2]	= BRES[2]	// Cryo,		debuff
	RES[3]	= BRES[3]	// Electric,	hits all targets 
	RES[4]	= BRES[4]	// Magic,		no inherent extra
	
	// run all pre turn scripts
	for(var i = 0; i < array_length(PreTurn); i ++){
		PreTurn[i]()
	}
	/*
	handle all status effect debuffs
	Status[0] = 0	// stagger, stats decreased for X turns
	Status[1] = 0	// stunned, may not act for X turns
	Status[2] = 0	// Fire,	taking damage each turn
	Status[3] = 0	// stop,	can't act for X turns, also counts as down. (temporary down)
	Status[4] = 0	// down,	can't act until healed, if all members are down battle ends.(Can not be -1)
	Status[5] = 0	// 
	Status[6] = 0	// 
	Status[7] = 0	// 
	*/
	if(Status[0] > 0){// lowers stats
		ATK = ATK / 2
		DEF = DEF / 2
		MAG = MAG / 2
		SPD = SPD / 2
		Status[0] --
	}
	if(Status[1] > 0){// 1/4 chance of not acting
		if(irandom_range(1, 4) == 4){
			BattleController_obj.curTurn --
		}
		Status[1] --
	}
	if(Status[2] > 0){
		TargetHP -= MHP / 16
		Status[2] --
	}
	if(Status[3] > 0){// skips turn
		Status[3] --
	}
	val = 0
}
function Post_Script(){
	// all post turn scripts
	for(var i = 0; i < array_length(PostTurn); i ++){
		PostTurn[i]()
	}
}