// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_Basic_Rapid_Damage(){
	Base = 2
	DAM = [1,0,0,0,0,0]
	AccuracyMod = 10
	Actions = [Basic_Do_Damage]
}

function setup_Rapid_20(){
	var ins = instance_create_layer(x,y, "Attack_Layer",Entity_Attack_Spawner_obj)
	ins.source = source
	ins.target = target
	ins.Actions = ["", "", setup_Basic_Rapid_Damage]
	ins.Side = Side
	ins.shotCount = 20
	ins.randTarg = true
	instance_destroy()
	// spawn X hit spawner
	// spawner is subclass of attack entity.
}

