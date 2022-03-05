/// @description Insert description here
// You can write your code in this editor

Side = false

MHP = 100
CHP = MHP
MMP = 100
CMP = MMP

// attribute stats
ATK = 10	// modifyer used against the base physical damage of an attack
DEF = 10	// deffence modifier used with resistances
MAG = 10	// modifyer used against the base non physical damage of an attack
AGI = 10	// used to determine whether an attack hits (defence)
SKL = 10	// used to determine whether an attack hits (attack)
SPD = 10	// determines turn order
LCK = 10	// effects critical hits

RES = []
// resistance stats 
// these are multiplied against the DEF modifier 
RES[0]	= 1		// Physical will usually be 1
RES[1]	= 0.5	// Thermal
RES[2]	= 0.5	// Cryo
RES[3]	= 0.5	// Electric, hits all targets 
RES[4]	= 0.5	// Magic
RES[5]	= 0		// Unblockable this stat will always be 0
// if a stat is equal to 3 then it will negate damage completely 

Status = []		// turn cooldown for status effects
Status[0] = 0
Status[1] = 0
Status[2] = 0
Status[3] = 0

PreTurn = []	// skills that activate when turn starts

PostTurn = []	// skills that activate after player has taken turn

Active = []		// skills available to choose from during turn [0 , 1, 2, 3]

Reactive = []	// iterate through when hit by attack