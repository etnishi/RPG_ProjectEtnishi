/// @description Insert description here
// You can write your code in this editor

if(firstStep){// initialize attribute variables 
	Name = Actions[0]
	Desc = Actions[1]
	firstStep = false
	Actions[2]()	// setup script
}

TTL --	// this will destroy the instance after X steps just incase it gets stuck somehow

var ins = instance_place(x, y, Battle_Entity_Super_obj)

if(ins == target){// collision with intended target
	
	//show_debug_message("Instance target is " + string(ins) + " from " + string(source) + ". ID is " + string(self.id))
	if(!spread){
		if(Name != "")
			array_push(BattleController_obj.notificationLines, source.insName + " uses " + Name)
		for(var i = 0; i < array_length(Actions); i ++){
			if(Actions[i] != "")
				Actions[i](ins, source)// iterates through all actions in Actions array
		}
		if(DAM[3] > 0 and (!array_contains(Actions, Spread_Out))){
			Spread_Out(ins, source)// built in spread that is caused bu electric elemental damage
		}
	}else{
		Basic_Do_Damage(ins, source)// damage from spread 
	}
	instance_destroy()
}

if(target != "")// movement towards target
	move_towards_point(target.x + (target.sprite_width / 2), target.y + (target.sprite_height / 2), movSpd)
// todo: once there are animations, can time travel time to animation 


if(TTL == 0){// destroys the instance after a countdown
	instance_destroy()
}
