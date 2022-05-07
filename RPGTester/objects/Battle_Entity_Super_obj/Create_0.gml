/// @description Creation script for the Battle Entity super object
// You can write your code in this editor

// role variable used for AI targeting 0 = TEK, 1 = DPS, 2 = TNK, 3 = HLR
role = 0

Side = 0
insInd = 0

val = 0

initStep = true

target = 0
lastTarg = 0

doTurn = false

targetSide = 0
selectLevel = 0
selectSkill = 0
firstStep = false

insName = "TESTER_DAN" // instance name. This is shown in notification box

EXP = 0

MHP = 100		// max health points
CHP = MHP		// current health points
TargetHP = MHP	// target HP. this is the target that HP will drop / rise too
MMP = 100		// max magic points
CMP = MMP		// current magic points

// base attribute stats
BATK = 10	// modifyer used against the base physical damage of an attack
BDEF = 10	// deffence modifier used with resistances
BMAG = 10	// modifyer used against the base non physical damage of an attack
BAGI = 10	// used to determine whether an attack hits (defence)
BSKL = 10	// used to determine whether an attack hits (attack)
BSPD = 10	// determines turn order
BLCK = 10	// effects critical hits
// attribute stats
ATK = BATK	// modifyer used against the base physical damage of an attack
DEF = BDEF	// deffence modifier used with resistances
MAG = BMAG	// modifyer used against the base non physical damage of an attack
AGI = BAGI	// used to determine whether an attack hits (defence)
SKL = BSKL	// used to determine whether an attack hits (attack)
SPD = BSPD	// determines turn order (If its double the opponents causes extra hit?)
LCK = BLCK	// effects critical hits

BRES = []	// resistance stats (BASE)
// these are multiplied against the DEF modifier 
BRES[5]	= 0		// Unblockable this stat will always be 0
BRES[0]	= 1		// Physical will usually be 1
BRES[1]	= 0.5	// Thermal,		damage over time
BRES[2]	= 0.5	// Cryo,		debuff
BRES[3]	= 0.5	// Electric,	hits all targets 
BRES[4]	= 0.5	// Magic,		no inherent extra
// if a stat is equal to 3 then it will negate damage completely 

RES = []	// resistance stats 
// these are multiplied against the DEF modifier 
RES[5]	= BRES[5]	// Unblockable this stat will always be 0
RES[0]	= BRES[0]	// Physical will usually be 1
RES[1]	= BRES[1]	// Thermal,		damage over time
RES[2]	= BRES[2]	// Cryo,		debuff
RES[3]	= BRES[3]	// Electric,	hits all targets 
RES[4]	= BRES[4]	// Magic,		no inherent extra

Status = []		// turn cooldown for status effects if value is -1 then is immune to effect
Status[7] = 0	// 
Status[0] = 0	// stagger, stats decreased for X turns
Status[1] = 0	// stunned, may not act for X turns
Status[2] = 0	// Fire,	taking damage each turn
Status[3] = 0	// stop,	can't act for X turns, also counts as down. (temporary down)
Status[4] = 0	// down,	can't act until healed, if all members are down battle ends.(Can not be -1)
Status[5] = 0	// 
Status[6] = 0	// 
// status effect resistance is determined by LCK stat

PreTurn = []	// skills that activate when turn starts
				// this is where buff effects are applied

PostTurn = []	// skills that activate after player has taken turn
				// TBD

Active = [["Bash", "Description", Basic_Bash], "", "", "", "", "", "", "", "", "", ""]
// skills available to choose from during turn. [0, ..., 10]



Reactive = [Endure]	// iterate through when hit by attack

Other = []		// activates according to specific conditions. similar to reactive.
/* 
ex. time stop, countdown 
could have an attack come out after X seconds regardless of turn.
*/
controlType = ""// script that runs during turn. determines action taken. 
/*
control type ideas
player,		player controlled
random,		will choose random action
smart*,		will try to choose best option
scripted,	will always follow determined path

*/

changeRate = 0.2


