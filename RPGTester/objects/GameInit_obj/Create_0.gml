/// @description Insert description here
// You can write your code in this editor

var _path = working_directory  + "Silver.ttf";
show_debug_message("Loading from ... " + string(_path));

fnt_Silver = font_add(_path, 20, true, false, 32, 128);
draw_set_font(fnt_Silver)

global.keyUp	= ord("W")
global.keyDown	= ord("S")
global.keyLeft	= ord("A")
global.keyRight	= ord("D")
global.confirm	= vk_space
global.back		= vk_shift

global.Player_Team = [Init_Olly(), Init_Doe(), Init_Rob()]
// setup of players
global.Team_Exp = 0

global.indexes = [-1, -1]

global.Enemy_Team = [Init_Enemy()]

global.lastRoom = Overworld
global.nextRoom = Overworld

global.flags = []

global.textSpeed = 0.5

global.Recall = []
global.Recall[5] = ""
global.Recall[0] = global.Player_Team
global.Recall[1] = 100
global.Recall[2] = 100
global.Recall[3] = Overworld
global.Recall[4] = global.flags


var dArr = [["Testing 1 2 3", ""], 
	["This is a test RPG system that I am working on", ""], 
	["The purpose of this is to practice working with GameMaker", ""],
	["I may develop this into something more someday...", ""], 
	["'Silver' Font by poppyworks, poppyworks.itch.io", ""], 
	["Tilesets by Clockwork Raven Studios, clockworkraven.itch.io", ""], 
	["starting the game ", StartGame]]


room_goto(Overworld)

//Start_Dialog(dArr, "Instances")



