extends Button

export (NodePath) var Text
export (String, "btn2", "btn3") var button
#export (NodePath) var Text3

var output = []

func _ready():
	get_node(".").connect("pressed", self, "btnPressed")
	

func btnPressed():
	if button == "btn2":
		var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 2 2")
		Global.btn2 = "2"
		Global.SaveData.btn2 = "2"
		OS.execute('/bin/sh', ['-c', TempCommand], true, output)
		get_node(str(Text)).set_text(str(2))
	#	print(str(TempCommand))
		Global._save()
	elif button == "btn3":
		var TempCommand = str("xsetwacom set", " ", Global.PenID, " Button 2 2")
		Global.btn3 = "3"
		Global.SaveData.btn3 = "3"
		OS.execute('/bin/sh', ['-c', TempCommand], true, output)
		get_node(str(Text)).set_text(str(3))
	#	print(str(TempCommand))
		Global._save()
	


