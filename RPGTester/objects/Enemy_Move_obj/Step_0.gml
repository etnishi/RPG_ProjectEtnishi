/// @description Insert description here
// You can write your code in this editor

if(secondTimer == 60){
	// runs once a second
	
	if(thinkCooldown > 0){
		thinkCooldown --
	}
}

if(thinkCooldown == 0){
	if(idleScr != ""){
		idleScr()
	}
	if(targScr != ""){
		targScr()
	}
}

if(targ != ""){
	move_towards_point(targ.x, targ.y, mSpeed + 2)
}

event_inherited()


