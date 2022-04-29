/// @description Insert description here
// You can write your code in this editor

frameCounter = 0
turnCounter = 0

init = true
turnStart = true
pause = false
done = false
win = false

notificationLines = []

entities = [[],[]]
// index 0 is allies 
// index 1 is enemies

sideInd = 0
turnInd = 0

loot = [1]
// index 0 is Experience

ground = ""
// ground effect script

air = ""
// air effect script

function team_check(arr){
	var down = 0
	for(var i = 0; i < array_length(arr); i ++){
		if(arr[i].Status[3] > 0 or arr[i].Status[4] > 0){
			down ++
		}
	}
	if(down >= array_length(arr))
		return true
	else 
		return false
}


