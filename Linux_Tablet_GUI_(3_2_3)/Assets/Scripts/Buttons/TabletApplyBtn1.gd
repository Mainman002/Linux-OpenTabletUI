extends Button

export (int, 1, 12) var btnID = 1
export (int, 3,10) var tabBtn = 3

var b1 = ""
var b2 = ""
var b3 = ""
var b4 = ""
var b5 = ""
var b6 = ""
var b7 = ""
var b8 = ""

var btn_pressed = false
var timer = 8

var output = []

var btnText = "  "

onready var Text = get_node("../LineEdit")

func _ready():
	set_process_input(false)
	set_process(true)
# warning-ignore:return_value_discarded
	get_node(".").connect("pressed", self, "applyBtn")
	if btnID == 1:
		btnText = Global.tabletBtn1
		b1 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn1))
	elif btnID == 2:
		btnText = Global.tabletBtn2
		b2 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn2))
	elif btnID == 3:
		btnText = Global.tabletBtn3
		b3 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn3))
	elif btnID == 8:
		btnText = Global.tabletBtn4
		b4 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn4))
	elif btnID == 9:
		btnText = Global.tabletBtn5
		b5 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn5))
	elif btnID == 10:
		btnText = Global.tabletBtn6
		b6 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn6))
	elif btnID == 11:
		btnText = Global.tabletBtn7
		b7 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn7))
	elif btnID == 12:
		btnText = Global.tabletBtn8
		b8 = btnText
		Text.set_text(str(Global.SaveData.tabletBtn8))
	applyBtn()

func applyBtn():
	if btnID == 1:
		b1 = str(Text.get_text())
		Global.tabletBtn1 = b1
		Global.SaveData.tabletBtn1 = b1
	elif btnID == 2:
		b2 = str(Text.get_text())
		Global.tabletBtn2 = b2
		Global.SaveData.tabletBtn2 = b2
	elif btnID == 3:
		b3 = str(Text.get_text())
		Global.tabletBtn3 = b3
		Global.SaveData.tabletBtn3 = b3
	elif btnID == 8:
		b4 = str(Text.get_text())
		Global.tabletBtn4 = b4
		Global.SaveData.tabletBtn4 = b4
	elif btnID == 9:
		b5 = str(Text.get_text())
		Global.tabletBtn5 = b5
		Global.SaveData.tabletBtn5 = b5
	elif btnID == 10:
		b6 = str(Text.get_text())
		Global.tabletBtn6 = b6
		Global.SaveData.tabletBtn6 = b6
	elif btnID == 11:
		b7 = str(Text.get_text())
		Global.tabletBtn7 = b7
		Global.SaveData.tabletBtn7 = b7
	elif btnID == 12:
		b8 = str(Text.get_text())
		Global.tabletBtn8 = b8
		Global.SaveData.tabletBtn8 = b8
	var TempCommand = str("xsetwacom set", " ", Global.PadID, " Button ", btnID, " key ", str(Text.get_text()))
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	Global._save()
#	print(str(TempCommand))
	

# warning-ignore:unused_argument
func _input(event):
	if btn_pressed == false:
		timer = 8
		btn_pressed = true
		if Input.is_joy_button_pressed(0, tabBtn):
			if btnID == 1:
				b1 = str(Text.get_text())
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', str(b1)], false, output)
			elif btnID == 2:
				b2 = str(Text.get_text())
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', str(b2)], false, output)
			elif btnID == 3:
				b3 = str(Text.get_text())
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', str(b3)], false, output)
			elif btnID == 8:
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', 'xkill'], false, output)
			elif btnID == 9:
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', 'gimp'], false, output)
			elif btnID == 10:
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', 'gimp'], false, output)
			elif btnID == 11:
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', 'gimp'], false, output)
			elif btnID == 12:
# warning-ignore:return_value_discarded
				OS.execute('/bin/sh', ['-c', 'gimp'], false, output)
			
		
	

# warning-ignore:unused_argument
func _process(delta):
	if btn_pressed == true:
		if timer != 0:
			timer -= 1
		elif timer == 0:
			btn_pressed = false
			timer = 8
		
	

