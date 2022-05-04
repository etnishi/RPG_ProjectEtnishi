// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Rough_Ground(side, turn){
	entities[side][turn].SPD -= (entities[side][turn].SPD * 0.1)
}