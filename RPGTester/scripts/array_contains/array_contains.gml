// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_contains(arr, ele){
	// basic iterative check
	for(var i = 0; i < array_length(arr); i ++){
		if(arr[i] == ele){
			return true
		}
	}
	return false
	// slow but arrays will be smaller than 10
}