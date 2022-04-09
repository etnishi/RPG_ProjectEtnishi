/// @description Insert description here
// You can write your code in this editor

if(secondTimer > 0){
	secondTimer --
}else{
	secondTimer = 60
}
// countdown for one second timer. one second ~ 60 frames

var thspd = 0
var tvspd = 0
var sgnh = sign(hspeed)
var sgnv = sign(vspeed)
// snapshot of current movement speed

for(var i = 1; i < abs(hspeed); i ++){
	if(!place_meeting(x + (i * sgnh), y, Solid_Super)){
		thspd ++
	}
}

for(var i = 1; i < abs(vspeed); i ++){
	if(!place_meeting(x, y + (i * sgnv), Solid_Super)){
		tvspd ++
	}
}

hspeed = thspd * sgnh
vspeed = tvspd * sgnv
// update movement speed
