// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// This script is run either wneh the attack array contains the Spread out script or the attack has a non 0

function Spread_Out(tIns, sIns){
	
	if((sIns.SKL + AccuracyMod + RandVal - 10) > tIns.AGI){
		if(tIns.Side){
			for(var i = 0; i < array_length(BattleController_obj.allies); i ++){
				if(BattleController_obj.allies[i] != self.id){
					Clone_and_Set(BattleController_obj.allies[i], sIns)
				}
			}
		}else{
			for(var i = 0; i < array_length(BattleController_obj.enemies); i ++){
				if(BattleController_obj.enemies[i] != self.id){
					Clone_and_Set(BattleController_obj.enemies[i], sIns)
				}
			}
		}
	}else{
		array_push(BattleController_obj.notificationLines, "Missed")
	}
}

function Clone_and_Set(targ, elec){
	var ins = instance_copy(false)
	ins.target = targ
	ins.spread = true
	if(!elec){
		ins.DAM[0]	= 0		// Physical 
		ins.DAM[1]	= 0		// Thermal
		ins.DAM[2]	= 0		// Cryo
		ins.DAM[4]	= 0		// Magic
		ins.DAM[5]	= 0		// unblockable (rare)
	}
}

function setup_Spread_Out(){
	//30, [1,0,0,0,0,0], 0, true, Spread_Out
	Base = 30 
	DAM = [1,0,0,0,0,0]
	AccuracyMod = 0
	Actions = [Spread_Out]
}