/// @description Creation script for the Battle Entity super object
// You can write your code in this editor

Side = false

initStep = true

firstStep = true

target = 0
targetSide = !Side
selectSkill = 0 
selectLevel = 0

insName = "TESTER_DAN" // instance name. This is shown in notification box

EXP = 0

MHP = 100		// max health points
CHP = MHP		// current health points
TargetHP = MHP	// target HP. this is the target that HP will drop / rise too
MMP = 100		// max magic points
CMP = MMP		// current magic points

// base attribute stats
BATK = 0	// modifyer used against the base physical damage of an attack
BDEF = 0	// deffence modifier used with resistances
BMAG = 0	// modifyer used against the base non physical damage of an attack
BAGI = 0	// used to determine whether an attack hits (defence)
BSKL = 0	// used to determine whether an attack hits (attack)
BSPD = 0	// determines turn order
BLCK = 0	// effects critical hits
// attribute stats
ATK = BATK	// modifyer used against the base physical damage of an attack
DEF = BDEF	// deffence modifier used with resistances
MAG = BMAG	// modifyer used against the base non physical damage of an attack
AGI = BAGI	// used to determine whether an attack hits (defence)
SKL = BSKL	// used to determine whether an attack hits (attack)
SPD = BSPD	// determines turn order
LCK = BLCK	// effects critical hits

RES = []	// resistance stats 
// these are multiplied against the DEF modifier 
RES[5]	= 0		// Unblockable this stat will always be 0
RES[0]	= 1		// Physical will usually be 1
RES[1]	= 0.5	// Thermal,		damage over time
RES[2]	= 0.5	// Cryo,		debuff
RES[3]	= 0.5	// Electric,	hits all targets 
RES[4]	= 0.5	// Magic,		no inherent extra
// if a stat is equal to 3 then it will negate damage completely 

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

Active = []		// skills available to choose from during turn. [0 , 1, 2, 3]
Active[2] = ["Nothing", insName + " does nothing (Not for player use)", setup_Do_Nothing]
Active[0] = ["Basic attack", "Hit one enemy", setup_Basic_Do_Damage]
Active[1] = ["Spread attack", "Hits all enemies", setup_Spread_Out]

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
