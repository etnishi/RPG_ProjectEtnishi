// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Endure(trg, total){
	// battle entity reaction script. 
	// trg	 target id of the attack
	// total total damage
	show_debug_message("Endure script started for " + string(trg.insName))
	
	// if has more than one HP survive with one HP if takes mortal damage 
	if((trg.TargetHP - total) < 1 and trg.TargetHP > 1){
		total = trg.TargetHP - 1
		array_push(BattleController_obj.notificationLines, trg.insName + " Endured the hit")
	}
	if(total > 0)
		return floor(total)
	else// handles if somehow damage is 0 
		return 0// may not be needed...
}