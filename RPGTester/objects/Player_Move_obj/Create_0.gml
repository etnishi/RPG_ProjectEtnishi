/// @description Insert description here
// You can write your code in this editor

event_inherited()

xBack = 0
yBack = 0

x = global.Recall[1]
y = global.Recall[2]

active = 0

control = 0

spr = Player_Tester_Import

var lIns = self
for(var i = 1; i < array_length(global.Player_Team); i ++){
	//[21]
	var ins = instance_create_layer(x, y, "Player_Instances", Follower_Move_obj)
	ins.spr = global.Player_Team[i][21]
	ins.following = lIns
	lIns = ins
}


