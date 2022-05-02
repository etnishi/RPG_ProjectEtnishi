// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getSide(side, check){
	if(check == 1)
		return side
	else{
		if(side == 0){
			return 1
		}else{
			return 0
		}
	}
}