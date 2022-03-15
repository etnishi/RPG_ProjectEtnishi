// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Basic damage script for all attacks.
// This script calculates whether the attack hits the enemy and the amount of damage dealt.

function Basic_Do_Damage(tIns, sIns){
	if((sIns.SKL + AccuracyMod + RandVal - 10) > tIns.AGI){
		var totDamage = 0
		for(var i = 0; i < 6; i ++){
			if(i == 0){
				totDamage += (Base * DAM[i]) * ((sIns.ATK) / (1 + tIns.DEF * tIns.RES[i]))
			}else{
				totDamage += (Base * DAM[i]) * ((sIns.MAG) / (1 + tIns.DEF * tIns.RES[i]))
			}
		}
		totDamage = Deal_Damage(tIns, totDamage)
		tIns.TargetHP -= totDamage
		show_debug_message("---Attack Damage---")
		show_debug_message(sIns.insName + " uses " + Name)
		show_debug_message(tIns.insName + " takes " + string(totDamage) + " Damage")
		//show_debug_message(tIns.insName + " has " + string(tIns.TargetHP))
		show_debug_message("-------------------")
	}else{
		show_debug_message("Missed")
	}
	instance_destroy()
}

function setup_Basic_Do_Damage(){
	//30, [1,1,1,0,1,1], 0, true, Basic_Do_Damage
	Base = 30 
	DAM = [1,0,0,0,0,0]
	AccuracyMod = 10
	Actions = [Basic_Do_Damage]
}