// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Pre_Script(){
	if(firstStep){// all control scripts will have a variation of this block
		firstStep = false
		//array_push(BattleController_obj.notificationLines, insName + " turn")
		// reinitialize from base stats
		ATK = BATK	// modifyer used against the base physical damage of an attack
		DEF = BDEF	// deffence modifier used with resistances
		MAG = BMAG	// modifyer used against the base non physical damage of an attack
		AGI = BAGI	// used to determine whether an attack hits (defence)
		SKL = BSKL	// used to determine whether an attack hits (attack)
		SPD = BSPD	// determines turn order
		LCK = BLCK	// effects critical hits
		// run all pre turn scripts
		for(var i = 0; i < array_length(PreTurn); i ++){
			PreTurn[i]()
		}
		/*
		handle all status effect debuffs
		Status[0] = 0	// stagger, stats decreased for X turns
		Status[1] = 0	// stunned, may not act for X turns
		Status[2] = 0	// Fire,	taking damage each turn
		Status[3] = 0	// sleep,	can't act for X turns, also counts as down. (temporary down)
		Status[4] = 0	// down,	can't act until healed, if all members are down battle ends.(Can not be -1)
		*/
		if(Status[0] > 0){// lowers accuracy and dodge rate
			AGI = AGI / 2
			SKL = SKL / 2
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
	}
}

function Post_Script(){
	// all post turn scripts
	for(var i = 0; i < array_length(PostTurn); i ++){
		PostTurn[i]()
	}
}