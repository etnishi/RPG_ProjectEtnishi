/// @description Insert description here
// You can write your code in this editor

if(initStep){// setup instance stats from array set in creation step
	initStep = false
	
}


for(var i = 0; i < array_length(Other); i ++){	// handles contextual Other skills 
	Other[i]()									// will have unique conditions that activate them.
}

if(TargetHP < ceil(CHP)){			// HP reduce / gain
	CHP -= changeRate				// slowly decreases or increases hp
}else if(TargetHP > ceil(CHP)){	// if character takes critical damage,
	CHP = ceil(CHP + 1)			// will not go down until CHP reaches 0
}								// 

if((CHP) <= 0){// if CHP is less than 1 applies down status
	Status[4] = 1
	TargetHP = 0
	CHP = 0
}else{
	Status[4] = 0
}