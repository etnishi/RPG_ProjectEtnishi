/// @description Insert description here
// You can write your code in this editor

Lines = []
// lines format	[["Line 1", EndFunction, [extra]], ["Line 2", EndFunction]]

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
