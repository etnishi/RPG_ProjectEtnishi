/// @description Insert description here
// You can write your code in this editor

if(firstStep){
	Base = Actions[1]
	if(array_length(Actions[2]) > 0){
		DAM = Actions[2]
	}
	AccuracyMod = Actions[3]
}

TTL --	// this will destroy the instance after X steps just incase it gets stuck somehow

var ins = instance_place(x, y, Battle_Entity_Super_obj)

if(ins == target){// collision with intended target
	
	if(!spread){
		
		for(var i = 4; i < array_length(Actions); i ++){
			if(Actions[i] != "")
				Actions[i](ins, source)
		}
		if(DAM[3] > 0 and (!array_contains(Actions, Spread_Out))){
			Spread_Out(ins, source)
		}
	}else if(DAM[3] > 0){
		Basic_Do_Damage(ins, false)
	}
	instance_destroy()
}

if(target != "")
	move_towards_point(target.x + (target.sprite_width / 2), target.y + (target.sprite_height / 2), 10)

if(TTL == 0){
	instance_destroy()
}