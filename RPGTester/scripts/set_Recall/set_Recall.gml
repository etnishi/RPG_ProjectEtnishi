// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_Recall(){
	global.Recall[0] = global.Player_Team
	global.Recall[1] = Player_Move_obj.x
	global.Recall[2] = Player_Move_obj.y
	global.Recall[3] = room
	global.Recall[4] = global.flags
	global.Recall[5] = ""
}

function return_Recall(){
	global.Player_Team = global.Recall[0]
	Player_Move_obj.x = global.Recall[1]
	Player_Move_obj.y = global.Recall[2]
	if(room != global.Recall[3] && global.Recall[3] != ""){
		room_goto(global.Recall[3])
	}
	global.flags = global.Recall[4]
}