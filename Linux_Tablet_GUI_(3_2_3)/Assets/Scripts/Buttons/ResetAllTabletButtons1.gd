extends Button

var btn1 = "../../BTN1/LineEdit"
var btn2 = "../../BTN2/LineEdit"
var btn3 = "../../BTN3/LineEdit"
var btn4 = "../../BTN4/LineEdit"
var btn5 = "../../BTN5/LineEdit"
var btn6 = "../../BTN6/LineEdit"
var btn7 = "../../BTN7/LineEdit"
var btn8 = "../../BTN8/LineEdit"

var b1 = "5"
var b2 = "2"
var b3 = "shift"
var b4 = "ctrl"
var b5 = "ctrl n"
var b6 = "ctrl s"
var b7 = "ctrl shift z"
var b8 = "ctrl z"

#var tabletBtn1 = "ctrl shift +"
#var tabletBtn2 = "ctrl -"
#var tabletBtn3 = "]"
#var tabletBtn4 = "["
#var tabletBtn5 = "2"
#var tabletBtn6 = "ctrl s"
#var tabletBtn7 = "ctrl shift z"
#var tabletBtn8 = "ctrl z"

var output = []

var btnText = "  "

#onready var Text = get_node("../LineEdit")

func _ready():
# warning-ignore:return_value_discarded
	get_node(".").connect("pressed", self, "applyBtn")
	

func applyBtn():
	get_node(str(btn1)).set_text(b1)
	get_node(str(btn2)).set_text(b2)
	get_node(str(btn3)).set_text(b3)
	get_node(str(btn4)).set_text(b4)
	get_node(str(btn5)).set_text(b5)
	get_node(str(btn6)).set_text(b6)
	get_node(str(btn7)).set_text(b7)
	get_node(str(btn8)).set_text(b8)
	Global.tabletBtn1 = b1
	Global.SaveData.tabletBtn1 = b1
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 1, " key ", str(b1))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn2 = b2
	Global.SaveData.tabletBtn2 = b2
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 2, " key ", str(b2))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn3 = b3
	Global.SaveData.tabletBtn3 = b3
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 3, " key ", str(b3))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn4 = b4
	Global.SaveData.tabletBtn4 = b4
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 8, " key ", str(b4))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn5 = b5
	Global.SaveData.tabletBtn5 = b5
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 9, " key ", str(b5))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn6 = b6
	Global.SaveData.tabletBtn6 = b6
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 10, " key ", str(b6))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn7 = b7
	Global.SaveData.tabletBtn7 = b7
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 11, " key ", str(b7))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn8 = b8
	Global.SaveData.tabletBtn8 = b8
	TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 12, " key ", str(b8))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global._save()
	

