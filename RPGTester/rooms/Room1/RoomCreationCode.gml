
global.Player_Team = [Init_Rob(), Init_Olly()]
// setup of players

global.indexes = [-1, -1]

var enemyArr = [Init_Enemy(), Init_Enemy(), Init_Enemy()]

var ins = instance_create_layer(0, 0, "Instances", BattleController_obj)

setup_Alies(ins)

setup_Enemies(ins, enemyArr)


//ins2 = instance_create_layer(400, 300, "Instances", Battle_Entity_Enemy_obj)
//ins2.insName = "enemy 3"
//ins.enemies[2] = ins2
