
var ins = instance_create_layer(0, 0, "Instances", BattleController_obj)
var ins2 = instance_create_layer(200, 100, "Instances", Battle_Entity_Player_obj)
ins2.SPD = 50
ins.allies = [ins2]
ins2 = instance_create_layer(200, 100, "Instances", Battle_Entity_Player_obj)
ins2.SPD = 50
ins.allies[1] = ins2
ins2 = instance_create_layer(200, 300, "Instances", Battle_Entity_Enemy_obj)
ins2.insName = "enemy 1"
ins.enemies = [ins2]
ins2 = instance_create_layer(300, 300, "Instances", Battle_Entity_Enemy_obj)
ins2.insName = "enemy 2"
ins.enemies[1] = ins2
//ins2 = instance_create_layer(400, 300, "Instances", Battle_Entity_Enemy_obj)
//ins2.insName = "enemy 3"
//ins.enemies[2] = ins2
