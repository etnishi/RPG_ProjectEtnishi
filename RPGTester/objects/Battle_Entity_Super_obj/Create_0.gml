/// @description Insert description here
// You can write your code in this editor

HP = 100
MP = 100

// attribute stats
ATK = 10
DEF = 10	// deffence modifier used with resistances
MAG = 10
AGI = 10
SPD = 10
LCK = 10

RES = []
// resistance stats 
// these are multiplied against the DEF modifier 
RES[0]	= 1		// Physical
RES[1]	= 1		// Thermal
RES[2]	= 1		// Cryo
RES[3]	= 1		// Electric, hits all targets 
RES[4]	= 1		// Wave passes Block
RES[5]	= 0		// Unblockable this stat will nearly always be 0
// if a stat is greater than 3 then it will negate damage completely 

PreTurn = []	// skills that activate when turn starts

PostTurn = []	// skills that activate after player has taken turn

Active = []		// skills available to choose from during turn

Reactive = []	// iterate through when hit by attack