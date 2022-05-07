// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function initBEntity(arr, side){
	var ins = -1
	if(side == 0){
		ins = instance_create_layer(0,0,"Instances", Battle_Entity_Player_obj)
	}else{
		ins = instance_create_layer(0,0,"Instances", Battle_Entity_Enemy_obj)
	}
	if(ins != -1){
		ins.Side = side
		ins.role = arr[20]
		ins.controlType	= arr[19]
		ins.insName = arr[0]	// name
		ins.EXP = arr[1]		// xp
	
		ins.MHP = arr[2]		// max health points
		ins.CHP = arr[3]		// current health points
		ins.MMP = arr[4]		// max magic points
		ins.CMP = arr[5]		// current magic points
		ins.TargetHP = arr[3]
	
		ins.BATK = arr[6]		// modifyer used against the base physical damage of an attack
		ins.BDEF = arr[7]		// deffence modifier used with resistances
		ins.BMAG = arr[8]		// modifyer used against the base non physical damage of an attack
		ins.BAGI = arr[9]		// used to determine whether an attack hits (defence)
		ins.BSKL = arr[10]		// used to determine whether an attack hits (attack)
		ins.BSPD = arr[11]		// determines turn order
		ins.BLCK = arr[12]		// effects critical hits
		
		ins.BRES		= arr[13]
		ins.PreTurn		= arr[14]
		ins.PostTurn	= arr[15]
		ins.Active		= arr[16]
		ins.Reactive	= arr[17]
		ins.Other		= arr[18]
	}
	return ins
}

function setup_Alies(cIns){
	for(var i = 0; i < array_length(global.Player_Team); i ++){
		if(global.Player_Team[i] != -1){
			array_push(cIns.entities[0], initBEntity(global.Player_Team[i], 0 ))
			cIns.entities[0][array_length(cIns.entities[0])-1].insInd = array_length(cIns.entities[0])-1
		}
	}
}

function setup_Enemies(cIns, eArr){
	for(var i = 0; i < array_length(eArr); i ++){
		array_push(cIns.entities[1], initBEntity(eArr[i], 1 ))
		cIns.entities[1][array_length(cIns.entities[1])-1].insInd = array_length(cIns.entities[1])-1
	}
}
