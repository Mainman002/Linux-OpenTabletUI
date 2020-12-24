extends Button

export (int, "1", "2") var button
export (NodePath) var Text

var output = []

var btnText = "  "
var b1 = ""
var b2 = ""

func _ready():
# warning-ignore:return_value_discarded
	get_node(".").connect("pressed", self, "btnPressed")
	if Text != null:
		if button == 0:
			btnText = Global.btn2
			b1 = btnText
			get_node(str(Text)).set_text(str(Global.SaveData.btn2))
			var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 2 ", get_node(str(Text)).get_text())
			Global.btn2 = get_node(str(Text))
# warning-ignore:return_value_discarded
			OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#			print(str(TempCommand))
		elif button == 1:
			btnText = Global.btn3
			b2 = btnText
			get_node(str(Text)).set_text(str(Global.SaveData.btn3))
			var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 3 ", get_node(str(Text)).get_text())
			Global.btn3 = get_node(str(Text))
# warning-ignore:return_value_discarded
			OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#			print(str(TempCommand))
	

func btnPressed():
	if Text != null:
		if button == 0:
			b1 = get_node(str(Text)).get_text()
			Global.btn2 = b1
			Global.SaveData.btn2 = b1
			var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 2 ", get_node(str(Text)).get_text())
# warning-ignore:return_value_discarded
			OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#			print(str(TempCommand))
			Global._save()
		elif button == 1:
			b2 = get_node(str(Text)).get_text()
			Global.btn3 = b2
			Global.SaveData.btn3 = b2
			var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 3 ", get_node(str(Text)).get_text())
# warning-ignore:return_value_discarded
			OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#			print(str(TempCommand))
			Global._save()

