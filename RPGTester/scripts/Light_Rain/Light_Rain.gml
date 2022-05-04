// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Light_Rain(side, turn){
	entities[side][turn].RES[1] += 0.2
	entities[side][turn].RES[2] -= 0.1
	entities[side][turn].RES[3] -= 0.2
}