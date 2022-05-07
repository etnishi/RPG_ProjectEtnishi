/// @description Insert description here
// You can write your code in this editor

draw_text_color(x, y - 16, insName, c_white, c_white, c_white, c_white, 1)	// drawing instance name

draw_text_color(x, y + 16, string(CHP), c_white, c_white, c_white, c_white, 1) // current health

draw_text_color(x, y + 32, string(TargetHP), c_white, c_white, c_white, c_white, 1) // current target HP. not necissarly the current HP



// health and magic bars
var hPer = CHP / MHP
draw_bar(x + 2, y + 2, 60, 10, hPer, true)

var mPer = CMP / MMP
draw_bar(x + 2, y + 16, 60, 10, mPer, false)


