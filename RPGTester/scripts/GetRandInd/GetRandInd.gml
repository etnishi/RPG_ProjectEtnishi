// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetRandInd(side){
	var out = 0
	if(side){
		out = irandom_range(0, ds_list_size(global.indexes[0])-1)
		return global.indexes[0][| out]
	}else{
		out = irandom_range(0, ds_list_size(global.indexes[1])-1)
		return global.indexes[1][| out]
	}
}