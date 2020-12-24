extends Button

#export (NodePath) var Root
export (NodePath) var Text1 = "../LineEdit"
export (NodePath) var Text2 = "../../Btn1Hbox1/LineEdit"
export (NodePath) var Text3 = "../../Btn1Hbox2/LineEdit"

var ID1 = 0
var ID2 = 0
var ID3 = 0

var output = []

func _ready():
# warning-ignore:return_value_discarded
	get_node(".").connect("pressed", self, "btnPressed")
	ID1 = Global.SaveData.PenID
	ID2 = Global.SaveData.EraserID
	ID3 = Global.SaveData.PadID
	get_node(Text1).set_text(str(ID1))
	get_node(Text2).set_text(str(ID2))
	get_node(Text3).set_text(str(ID3))
	btnPressed()
	

func btnPressed():
#	OS.execute('/bin/sh', ['-c', 'gimp'], true, output)
	
#	if has_node(str(Root)) and Root != null:
	Global.PenID = get_node(str(Text1)).get_text()
	Global.EraserID = get_node(str(Text2)).get_text()
	Global.PadID = get_node(str(Text3)).get_text()
	
	Global.SaveData.PenID = get_node(str(Text1)).get_text()
	Global.SaveData.EraserID = get_node(str(Text2)).get_text()
	Global.SaveData.PadID = get_node(str(Text3)).get_text()
	
	Global._save()
#		get_node(str(Root)).checkVars()
	
#	if has_node(str(Text)) and Text != null:
#		get_node(str(Text)).set_text(str(output))
#		print (output)
	
