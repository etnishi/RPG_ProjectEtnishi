// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getTeamAvgSpd(team){
	var out = 0
	for(var i = 0; i < array_length(team); i ++){
		out += team[i].SPD
	}
	out = out / array_length(team)
	return out
}