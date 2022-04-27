/// @description Insert description here
// You can write your code in this editor
	
if(Notification != ""){
	if(startCount < 10){
		startCount ++
	}
	
	if(doPause){
		if(backgroundSpr == ""){
			backgroundSpr = sprite_create_from_surface(application_surface, 0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false, false, 0, 0)
			instance_deactivate_all(true)
		}
	}
	
	if(curInd < string_length(Notification) - 1){
		curInd += global.textSpeed
	}else if(confirm == 0){
		confirm = 1
	}
	
	if(doPause){
		if(keyboard_check_pressed(global.confirm)){
			if(curInd < (string_length(Notification) - 1)){
				curInd = (string_length(Notification) - 1)
				confirm ++
			}else{
				confirm ++
			}
		}
	}else{
		if(pauseTimer > 0){
			pauseTimer --
		}else{
			confirm ++
		}
	}
	
	if(confirm > 1){
		Notification = ""
	}
	
}else{
	if(startCount > 0){
		startCount --
	}
	pauseTimer = 100
	confirm = 0
	if(backgroundSpr != ""){
		sprite_delete(backgroundSpr)
		backgroundSpr = ""
	}
	instance_activate_all()
}
