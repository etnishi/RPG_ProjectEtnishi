// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Basic_Do_Damage(tIns){
	if((source.SKILL + AccuracyMod + RandVal - 10) > ins.AGI){
		var totDamage = 0
		for(var i = 0; i < 6; i ++){
			if(i == 0){
				totDamage += (Base * DAM[i]) * ((source.ATK) / (tIns.DEF * tIns.RES[i]))
			}else{
				totDamage += (Base * DAM[i]) * ((source.MAG) / (tIns.DEF * tIns.RES[i]))
			}
		}
		tIns.CHP -= totDamage
	}
}