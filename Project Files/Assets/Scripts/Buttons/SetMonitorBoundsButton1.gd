extends Button

#export (NodePath) var Text
export (NodePath) var monitorP1
export (NodePath) var monitorP2
export (NodePath) var monitorP3
export (NodePath) var monitorP4

var monitorP1Val = str(0)
var monitorP2Val = str(0)
var monitorP3Val = str(1080)
var monitorP4Val = str(1920)

var output = []

#xsetwacom set 14 MapToOutput 1920x1080+0+0

func _ready():
	get_node(".").connect("pressed", self, "btnPressed")
	monitorP1Val = Global.SaveData.monitorP1
	monitorP2Val = Global.SaveData.monitorP2
	monitorP3Val = Global.SaveData.monitorP3
	monitorP4Val = Global.SaveData.monitorP4
	get_node(str(monitorP1)).set_text(str(monitorP1Val))
	get_node(str(monitorP2)).set_text(str(monitorP2Val))
	get_node(str(monitorP3)).set_text(str(monitorP3Val))
	get_node(str(monitorP4)).set_text(str(monitorP4Val))
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " MapToOutput ", monitorP4Val, "x", monitorP3Val, "+", monitorP2Val, "+", monitorP1Val)
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	Global._save()
	print(str(TempCommand))


func btnPressed():
	monitorP1Val = get_node(str(monitorP1)).get_text()
	monitorP2Val = get_node(str(monitorP2)).get_text()
	monitorP3Val = get_node(str(monitorP3)).get_text()
	monitorP4Val = get_node(str(monitorP4)).get_text()
	Global.monitorP1 = monitorP1Val
	Global.monitorP2 = monitorP2Val
	Global.monitorP3 = monitorP3Val
	Global.monitorP4 = monitorP4Val
	Global.SaveData.monitorP1 = monitorP1Val
	Global.SaveData.monitorP2 = monitorP2Val
	Global.SaveData.monitorP3 = monitorP3Val
	Global.SaveData.monitorP4 = monitorP4Val
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " MapToOutput ", Global.monitorP4, "x", Global.monitorP3, "+", Global.monitorP2, "+", Global.monitorP1)
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	Global._save()
	print(str(TempCommand))
	

