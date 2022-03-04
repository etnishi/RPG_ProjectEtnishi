/// @description Insert description here
// You can write your code in this editor

target = ""

// base damage potency value
Base = 10

DAM = []
// damage types
// Base damage is multiplied against these values
DAM[0]	= 1		// Physical 
DAM[1]	= 0		// Thermal
DAM[2]	= 0		// Cryo
DAM[3]	= 0		// Electric, hits all targets 
DAM[4]	= 0		// Wave passes Block
DAM[5]	= 0		// unblockable (rare)
// 

RandVal = random_range(0, 20)

Actions = [] // array of actions the attack will take on hit
