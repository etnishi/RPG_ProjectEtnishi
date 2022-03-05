
var ins = instance_create_layer(0, 0, "Instances", BattleController_obj)
var ins2 = instance_create_layer(0, 0, "Instances", Battle_Entity_Super_obj)
ins2.controlType = Test_Control
ins.allies = [ins2]
ins2 = instance_create_layer(300, 300, "Instances", Battle_Entity_Super_obj)
ins.enemies = [ins2]
