/// @description Insert description here
// You can write your code in this editor



frameCounter = 0
turnCounter = 0

canRun = true
runTry = true
runVal = 75

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

function fight_end(){
	for(var i = 0; i < array_length(entities[0]); i ++){
		for(var o = 0; o < array_length(global.Player_Team); o ++){
			if(global.Player_Team[o][0] == entities[0][i].insName){
				if(win){
					var xp = loot[0]
					var msg = entities[0][i].insName + " Gains "
					if(entities[0][i].EXP < global.Team_Exp){
						xp = xp * (global.Team_Exp / entities[0][i].EXP)
						entities[0][i].EXP += xp
						msg += "Bonus "
						// bonus catch up EXP 
					}else{
						entities[0][i].EXP += xp
					}
				}
				global_update(o, entities[0][i])
			}
		}
	}
}

