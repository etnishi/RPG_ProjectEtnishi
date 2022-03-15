/// @description Insert description here
// You can write your code in this editor

if(initStep){// setup instance stats from array set in creation step
	initStep = false
	
}

for(var i = 0; i < array_length(Other); i ++){	// handles contextual Other skills 
	Other[i]()									// will have unique conditions that activate them.
}

if(TargetHP < ceil(CHP)){			// HP reduce / gain
	CHP -= 0.2						// slowly decreases or increases hp
}else if(TargetHP > ceil(CHP)){	// if character takes critical damage,
	CHP = ceil(CHP + 1)			// will not go down until CHP reaches 0
}									// 