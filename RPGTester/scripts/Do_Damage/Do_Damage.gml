// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Damage(targ, base, type){
	/*	type is
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
		
		var hit = hitChance 
		if(i == 0){
			hit -= ((targ.AGI + targ.SPD) / 2 )
		}else{
			hit -= ((targ.AGI + targ.LCK) / 2 )
		}
		 
		var hitCalc = irandom_range(0, 99)
		
		if(hitCalc <= hit){
			var tmp = base * type[i]
			// amount of damage from base damage and element modifier
		
			tmp -= targ.DEF * targ.RES[i]
			// amount of damage decreased by resistances 
		
			if(tmp < 0){
				tmp = 0
				// damage cant be a negative
			}
			total += tmp
		}else{
			show_debug_message("--MISS--")
		}
	}
	targ.TargetHP -= total
	var ins = instance_create_layer(x, y, "Attack_Layer", Damage_Num_obj)
	ins.val = total
	if(total > 0)
		array_push(BattleController_obj.notificationLines, targ.insName + " takes " + string(total) + " damage")
	else
		array_push(BattleController_obj.notificationLines, targ.insName + " dodges")
	
}

function Get_Damage(targ, base, type){
	var total = 0
	// total damage
	
	for(var i = 0; i < 6; i ++){
		var tmp = base * type[i]
		// amount of damage from base damage and element modifier
		
		tmp -= targ.DEF * targ.RES[i]
		// amount of damage decreased by resistances 
		
		if(tmp < 0){
			tmp = 1
			// damage cant be a negative / 0
		}
		total += tmp
	}
	return total
}
