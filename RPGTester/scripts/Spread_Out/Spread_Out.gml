// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Spread_Out(tIns){
	if(tIns.Side){
		for(var i = 0; i < array_length(BattleController_obj.allies); i ++){
			if(BattleController_obj.allies[i] != self){
				Clone_and_Set(BattleController_obj.allies[i])
			}
		}
	}else{
		for(var i = 0; i < array_length(BattleController_obj.enemies); i ++){
			if(BattleController_obj.enemies[i] != self){
				Clone_and_Set(BattleController_obj.enemies[i])
			}
		}
	}
	
}

function Clone_and_Set(targ){
	var ins = instance_copy(false)
	ins.target = targ
	ins.source = ""
	ins.DAM[0]	= 0		// Physical 
	ins.DAM[1]	= 0		// Thermal
	ins.DAM[2]	= 0		// Cryo
	ins.DAM[4]	= 0		// Magic
	ins.DAM[5]	= 0		// unblockable (rare)
}