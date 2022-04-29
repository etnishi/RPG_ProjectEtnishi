// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Buff(target, statInd, bonus){
	switch(statInd){
		case 0:
			target.ATK += bonus
			break
		case 1:
			target.DEF += bonus
			break
		case 2:
			target.MAG += bonus
			break
		case 3:
			target.AGI += bonus
			break
		case 4:
			target.SKL += bonus
			break
		case 5:
			target.SPD += bonus
			break
		case 6:
			target.LCK += bonus
			break
	}
}

/*
ATK = BATK	// modifyer used against the base physical damage of an attack
DEF = BDEF	// deffence modifier used with resistances
MAG = BMAG	// modifyer used against the base non physical damage of an attack
AGI = BAGI	// used to determine whether an attack hits (defence)
SKL = BSKL	// used to determine whether an attack hits (attack)
SPD = BSPD	// determines turn order
LCK = BLCK	// effects critical hits
*/
