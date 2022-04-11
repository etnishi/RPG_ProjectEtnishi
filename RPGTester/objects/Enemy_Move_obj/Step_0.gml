/// @description Insert description here
// You can write your code in this editor

if(secondTimer == 60){
	// runs once a second
	
	if(thinkCooldown > 0){
		thinkCooldown --
	}
}

if(targ != "" and thinkCooldown > 0){
	move_towards_point(targ.x, targ.y, mSpeed)
}else{
	targ = ""
	if(idleDir >= 0){
		motion_set(idleDir, mSpeed)
	}
}

if(thinkCooldown == 0){
	if(idleScr != ""){
		idleScr()
	}
	if(targScr != ""){
		targScr()
	}
}else if(thinkCooldown < 2){
	idleDir = -1
}



event_inherited()

do_col(Enemy_Only_Solid)
