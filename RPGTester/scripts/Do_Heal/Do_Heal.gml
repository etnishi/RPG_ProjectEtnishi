// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Heal(target, base, bonus){
	var amount = base + bonus
	
	target.TargetHP += amount
}