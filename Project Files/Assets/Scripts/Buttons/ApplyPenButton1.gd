extends Button

export (int, "1", "2") var button
export (NodePath) var Text

var output = []

func _ready():
	get_node(".").connect("pressed", self, "btnPressed")
	

func btnPressed():
	if Text != null:
		if button == 0:
			var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 2 ", get_node(str(Text)).get_text())
			Global.btn2 = get_node(str(Text))
			OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#			print(str(TempCommand))
		elif button == 1:
			var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 3 ", get_node(str(Text)).get_text())
			Global.btn3 = get_node(str(Text))
			OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#			print(str(TempCommand))

