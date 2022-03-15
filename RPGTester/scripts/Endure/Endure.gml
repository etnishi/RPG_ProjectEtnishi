// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Endure(trg, total){
	// battle entity reaction script. 
	// trg	 target id of the attack
	// total total damage
	show_debug_message("Endure script started for " + string(trg.insName))
	
	if((trg.TargetHP - total) < 1 and trg.TargetHP > 1){
		total = trg.TargetHP - 1
		show_debug_message("Endured")
	}
	if(total > 0)
		return floor(total)
	else
		return 0
}