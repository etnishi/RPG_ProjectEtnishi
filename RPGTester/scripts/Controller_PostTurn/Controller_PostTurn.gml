// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Controller_PostTurn(){
	
	var down = 0
	for(var i = 0; i < array_length(enemies); i ++){
		if((enemies[i].Status[3] > 0) or (enemies[i].Status[4] > 0)){
			down ++
		}
	}
	if(down == array_length(enemies)){
		done = true
		winner = 1
	}else{
		down = 0
		for(var i = 0; i < array_length(allies); i ++){
			if((allies[i].Status[3] > 0) or (allies[i].Status[4] > 0)){
				down ++
			}
		}
		if(down == array_length(allies)){
			done = true
			winner = 0
		}else{
			done = false
		}
	}
	
}

function Controller_PostSide(){
	
}