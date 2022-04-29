// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Damage(targ, base, type){
	/* type is
		RES[0]	= 1		// Physical will usually be 1
		RES[1]	= 0.5	// Thermal,		damage over time
		RES[2]	= 0.5	// Cryo,		debuff
		RES[3]	= 0.5	// Electric,	hits all targets 
		RES[4]	= 0.5	// Magic,
		RES[5]	= 0		// Unblockable this stat will always be 0
	*/
	var total = 0
	// total damage
	
	for(var i = 0; i < 6; i ++){
		var tmp = base * type[i]
		// amount of damage from base damage and element modifier
		
		tmp -= targ.DEF * targ.RES[i]
		// amount of damage decreased by resistances 
		
		if(tmp < 0){
			tmp = 0
			// damage cant be a negative
		}
		total += tmp
	}
	targ.TargetHP -= total
}