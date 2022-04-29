// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Basic_Attack(targ, actArr){
	var ins = instance_create_layer(x,y, "Attack_Layer",Attack_obj)
	ins.source = id
	ins.target = targ
	ins.Actions = actArr
	ins.Side = Side
}