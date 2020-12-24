extends HBoxContainer

var output = []

var Pressure1 = 0
var Pressure2 = 0
var Pressure3 = 50
var Pressure4 = 100

func _ready():
	get_node("Pressure1").set_value(Pressure1)
	get_node("Pressure1").set_value(Pressure2)
	get_node("Pressure1").set_value(Pressure3)
	get_node("Pressure1").set_value(Pressure4)

func valChnaged():
	Global.Pressure1 = Pressure1
	Global.SaveData.Pressure1 = Pressure1
	Global.Pressure2 = Pressure2
	Global.SaveData.Pressure2 = Pressure2
	Global.Pressure3 = Pressure3
	Global.SaveData.Pressure3 = Pressure3
	Global.Pressure4 = Pressure4
	Global.SaveData.Pressure4 = Pressure4
	Global._save()
	
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " ", "PressureCurve ", Pressure1, " ", Pressure2, " ", Pressure3, " ", Pressure4)
	var allPressure = TempCommand
	OS.execute('/bin/sh', ['-c', allPressure], true, output)
	




