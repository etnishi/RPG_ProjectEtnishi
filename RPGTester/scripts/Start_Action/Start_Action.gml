/* Script assets have changed for v2.3.0 see
https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
arr	format
Name,	Description,	Script,	TargetSide,	TargType	MP Cost,	base,	type	HitRate,	cooldown,	sprite
0		1				2		3			4			5			6		7		8			9			10
ex: ["name", "Desc", ]
*/

function Start_Action(targ, arr){
	
	var acts = arr[4](targ)
	
	for(var i = 0; i < array_length(acts); i ++){
		acts.target = targ
		acts.scr = arr[2]
		acts.base = arr[6] + getMod(arr[7])
		acts.etype = arr[7]
		acts.hitChance = arr[8] + (SKL * 1.5) + (LCK / 2)
		acts.spr = arr[10]
	}
	doTurn = false
}

function getMod(arr){
	var out = 0
	for(var i = 0; i < array_length(arr); i ++){
		if(i == 0){
			out += ATK * arr[i]
		}else{
			out += MAG * arr[i]
		}
	}
	return out
}

/*
	var ins = instance_create_layer(x, y, "Attack_Layer", Support_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.base = MAG + 20
	ins.scr = Do_Heal
	ins.spr = Magic_spr
	var tnam = " themselves"
	if(targ != self)
		tnam = BattleController_obj.entities[side][targ].insName
	array_push(BattleController_obj.notificationLines, string( insName + " Heals ") + tnam)
	doTurn = false
*/
