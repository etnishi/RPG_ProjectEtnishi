/// @description Insert description here
// You can write your code in this editor

if(active <= 0){
	if(control <= 0){
		if(keyboard_check(global.keyRight)){
			hspeed = mSpeed
		}
		if(keyboard_check(global.keyLeft)){
			hspeed = -mSpeed
		}
		if(keyboard_check(global.keyLeft) and keyboard_check(global.keyRight)){
			hspeed = 0
		}

		

		if(keyboard_check(global.keyUp)){
			vspeed = -mSpeed
		}
		if(keyboard_check(global.keyDown)){
			vspeed = mSpeed
		}
		if(keyboard_check(global.keyDown) and keyboard_check(global.keyUp)){
			vspeed = 0
		}


		if(keyboard_check(global.back)){
			// Sprint 
			mSpeed = 10
		}else{
			mSpeed = 5
		}

		if(keyboard_check(global.confirm)){
			// Testing jump functionality
			heightLevel = 5
		}else{
			heightLevel = heightCur
		}
		
		if(keyboard_check_pressed(ord("F"))){
			//Notification_obj.Notification = "TESTING"
			//Dialog_obj.Lines = [["Line 1  q w e r t y u i o p a s d f g h j k l z x c v b n m 1 2 3 4 5 6 7 8 9 0", "", ["Tester Man", Portrait_test]], ["Line 2", "", []]]
		}

		if(!place_meeting(x,y,Background_Super)){
			xBack = x
			yBack = y
		}
		
	}else{
		if(control > 0)
			control --
	}
}else{
	if(active > 0)
		active --
}
event_inherited()

do_col(Player_Only_Solid)


