extends Button

var btn1 = "../../BTN1/LineEdit"
var btn2 = "../../BTN2/LineEdit"
var btn3 = "../../BTN3/LineEdit"
var btn4 = "../../BTN4/LineEdit"
var btn5 = "../../BTN5/LineEdit"
var btn6 = "../../BTN6/LineEdit"
var btn7 = "../../BTN7/LineEdit"
var btn8 = "../../BTN8/LineEdit"

var b1 = ""
var b2 = ""
var b3 = ""
var b4 = ""
var b5 = ""
var b6 = ""
var b7 = ""
var b8 = ""

var output = []

var btnText = "  "

#onready var Text = get_node("../LineEdit")

func _ready():
	get_node(".").connect("pressed", self, "applyBtn")
	

func applyBtn():
	b1 = get_node(str(btn1)).get_text()
	b2 = get_node(str(btn2)).get_text()
	b3 = get_node(str(btn3)).get_text()
	b4 = get_node(str(btn4)).get_text()
	b5 = get_node(str(btn5)).get_text()
	b6 = get_node(str(btn6)).get_text()
	b7 = get_node(str(btn7)).get_text()
	b8 = get_node(str(btn8)).get_text()
	Global.tabletBtn1 = b1
	Global.SaveData.tabletBtn1 = b1
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 1, " key ", str(b1))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn2 = b2
	Global.SaveData.tabletBtn2 = b2
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 2, " key ", str(b2))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn3 = b3
	Global.SaveData.tabletBtn3 = b3
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 3, " key ", str(b3))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn4 = b4
	Global.SaveData.tabletBtn4 = b4
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 8, " key ", str(b4))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn5 = b5
	Global.SaveData.tabletBtn5 = b5
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 9, " key ", str(b5))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn6 = b6
	Global.SaveData.tabletBtn6 = b6
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 10, " key ", str(b6))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn7 = b7
	Global.SaveData.tabletBtn7 = b7
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 11, " key ", str(b7))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global.tabletBtn8 = b8
	Global.SaveData.tabletBtn8 = b8
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", 12, " key ", str(b8))
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#	print(TempCommand)
	Global._save()
	

