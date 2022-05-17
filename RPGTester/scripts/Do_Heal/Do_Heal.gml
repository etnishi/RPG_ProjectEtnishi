// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Heal(target, base, bonus){
	var amount = base
	target.TargetHP += amount
	if(target.TargetHP > target.MHP)
		target.TargetHP = target.MHP
	show_debug_message("Heal")
}