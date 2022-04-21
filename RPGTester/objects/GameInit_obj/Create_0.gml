/// @description Insert description here
// You can write your code in this editor

global.keyUp	= ord("W")
global.keyDown	= ord("S")
global.keyLeft	= ord("A")
global.keyRight	= ord("D")
global.confirm	= vk_space
global.back		= vk_shift

global.Player_Team = [Init_Rob(), Init_Olly()]
// setup of players

global.indexes = [-1, -1]

global.Enemy_Team = [Init_Enemy()]

global.lastRoom = Overworld

global.flags = []

global.textSpeed = 0.5

global.Recall = []
global.Recall[5] = ""
global.Recall[0] = global.Player_Team
global.Recall[1] = 0
global.Recall[2] = 0
global.Recall[3] = Overworld
global.Recall[4] = global.flags

room_goto(Overworld)
