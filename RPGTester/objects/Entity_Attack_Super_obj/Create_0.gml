/// @description Insert description here
// You can write your code in this editor

TTL = 1200

target = ""

Side = false	// if true on player side else enemy side

source = ""

// base damage potency value
Base = 10

DAM = []
// damage types
// Base damage is multiplied against these values
DAM[0]	= 1		// Physical 
DAM[1]	= 0		// Thermal
DAM[2]	= 0		// Cryo
DAM[3]	= 0		// Electric, hits all targets duplicate attack but reduce all other attributes to 0 this only works if source != ""
DAM[4]	= 0		// Magic
DAM[5]	= 0		// unblockable (rare)
// 

AccuracyMod = 0 // accuracy modifyer that can boost hit rate
// this modifier is typically 0 unless an attack will nearly always hit a similarily leveled opponent

RandVal = ceil(random_range(0, 20)) // modified by attacker speed stat and compared against opponent agility stat
// calculation is thus, attacker(skill val + AccuracyMod + RandVal - 10) must be greater than defender(agility val)
// if calculated value is larger than some value (undecided). will result in a critical hit
// also, if attacker luck * (randVal / 15) > defender luck = critical

Actions = [] // array of actions the attack will take on hit
