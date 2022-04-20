/// @description Insert description here
// You can write your code in this editor

if(crit){
	draw_text(x,y - 8,"CRITICAL!")
	draw_text(x,y,string(val))
}else{
	draw_text(x,y,string(val))
}