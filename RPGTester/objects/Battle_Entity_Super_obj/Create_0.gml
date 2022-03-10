/// @description Insert description here
// You can write your code in this editor

Side = false

target = 0
targetSide = !Side
selectSkill = 0 
selectLevel = 0

insName = "TESTER_DAN"

MHP = 100
CHP = MHP
MMP = 100
CMP = MMP

// attribute stats
ATK = 40	// modifyer used against the base physical damage of an attack
DEF = 40	// deffence modifier used with resistances
MAG = 40	// modifyer used against the base non physical damage of an attack
AGI = 40	// used to determine whether an attack hits (defence)
SKL = 40	// used to determine whether an attack hits (attack)
SPD = 40	// determines turn order
LCK = 40	// effects critical hits

RES = []
// resistance stats 
// these are multiplied against the DEF modifier 
RES[0]	= 1		// Physical will usually be 1
RES[1]	= 0.5	// Thermal,		damage over time
RES[2]	= 0.5	// Cryo,		debuff
RES[3]	= 0.5	// Electric,	hits all targets 
RES[4]	= 0.5	// Magic,		no inherent extra
RES[5]	= 0		// Unblockable this stat will always be 0
// if a stat is equal to 3 then it will negate damage completely 

Status = []		// turn cooldown for status effects if value is -1 then is immune to effect
Status[0] = 0	// stagger, stats decreased for X turns
Status[1] = 0	// stunned, can't act for X turns
Status[2] = 0	// Fire,	taking damage each turn
Status[3] = 0	// sleep,	can't act for X turns, also counts as down. (temporary down)
Status[4] = 0	// down,	can't act until healed, if all members are down battle ends.(Can not be -1)
// status effect resistance is determined by LCK stat

PreTurn = []	// skills that activate when turn starts

PostTurn = []	// skills that activate after player has taken turn

Active = []		// skills available to choose from during turn [0 , 1, 2, 3]
Active[0] = ["Name", "description", setup_Basic_Do_Damage]
Active[1] = ["Name", "description", setup_Spread_Out]
Active[2] = ["Name", "description", setup_Do_Nothing]

Reactive = []	// iterate through when hit by attack

controlType = ""// script that runs during turn. determines action taken. 
/*
control type ideas
player,		player controlled
random,		will choose random action
smart*,		will try to choose best option
scripted,	will always follow determined path

---maybe---
monte carlo,	might try to implement this.
*/
