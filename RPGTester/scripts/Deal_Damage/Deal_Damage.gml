// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Deal_Damage(targ, total){
	// applies all reactive scripts to a damage amount
	show_debug_message("--------------------------------------targeting " + targ.insName)
	for(var i = 0; i < array_length(targ.Reactive); i ++){
		total = targ.Reactive[i](targ, total)
	}
	return total
}