/// @description Insert description here
// You can write your code in this editor

Lines = []
// lines format	[["Line 1", EndFunction, [extra]], ["Line 2", EndFunction, [extra]]]
// Lines are Strings
// EndFunction is the script executed at the end of the lines
// Extra array is the array of visual changes that can be added to the dialog box
// extra array [name, portrait, To Be Determined] can also be left blank

lineInd = 0

charInd = 0

sourceIns = ""

function toIndex(str, ind){
	var out = ""
	for(var i = 1; i <= ind; i ++){
		out += string_char_at(str, i)
	}
	return out
}
