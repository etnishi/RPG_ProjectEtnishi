// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OrderTeamBySpd(team){
	for(var i = 0; i < array_length(team); i ++){
		var hold = team[i].SPD
		for(var n = i; n < array_length(team); n ++){
			if(hold < team[n].SPD){
				team = arr_Swap(team, i, n)
			}
		}
	}
	return team
}

function arr_Swap(arr, i1, i2){
	var hold = arr[i1]
	arr[i1] = arr[i2]
	arr[i2] = hold
	return arr
}