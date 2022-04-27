/// @description Insert description here
// You can write your code in this editor

if(firstStep){
	var hi = instance_place(x,y,Elevate_super)
	if(hi){
		heightLevel = hi.heightLevel
	}
}

if(secondTimer > 0){
	secondTimer --
}else{
	secondTimer = 60
}
// countdown for one second timer. one second ~ 60 frames

var ins = instance_place(x,y,Elevate_super)

if(ins){
	if(abs(ins.targHeight - heightCur) <= 1){
		heightCur = ins.targHeight
	}
}else{
	heightCur = 0
}

do_col(Solid_Super)
event_inherited()
// update movement speed
