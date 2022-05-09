// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function In_Range(val, check, range){
	// Checks if a value is within the check +- range
	// check if 10 is within the range of 9 + or - 3
	// 
	if(check < 90){
		val += 90
		check += 90
	}else if(val > 270){
		val -= 90
		check -= 90
	}
	
	if((val >= (check - range)) and (val <= (check + range))){
		return true
	}else{
		return false
	}
}

