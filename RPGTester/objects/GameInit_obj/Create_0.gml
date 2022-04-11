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

room_goto(Overworld)
