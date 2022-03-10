/// @description Insert description here
// You can write your code in this editor

if(firstStep){// initialize attribute variables 
	Name = Actions[0]
	Desc = Actions[1]
	Actions[2]()
	firstStep = false
}

TTL --	// this will destroy the instance after X steps just incase it gets stuck somehow

var ins = instance_place(x, y, Battle_Entity_Super_obj)

if(ins == target){// collision with intended target
	
	//show_debug_message("Instance target is " + string(ins) + " from " + string(source) + ". ID is " + string(self.id))
	if(!spread){
		
		for(var i = 0; i < array_length(Actions); i ++){
			if(Actions[i] != "")
				Actions[i](ins, source)
		}
		if(DAM[3] > 0 and (!array_contains(Actions, Spread_Out))){
			Spread_Out(ins, source)
		}
	}else{
		Basic_Do_Damage(ins, source)
	}
}

if(target != "")
	move_towards_point(target.x + (target.sprite_width / 2), target.y + (target.sprite_height / 2), movSpd)

if(TTL == 0){
	instance_destroy()
}