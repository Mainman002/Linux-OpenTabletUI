extends Button

export (NodePath) var Root
export (NodePath) var Text

#var output = []

func _ready():
	get_node(".").connect("pressed", self, "btnPressed")

func btnPressed():
#	OS.execute('/bin/sh', ['-c', 'xsetwacom list devices'], true, output)
	
#	if has_node(str(Root)) and Root != null:
	Global.PenID = get_node(str(Text)).get_text()
#		get_node(str(Root)).checkVars()
	
#	if has_node(str(Text)) and Text != null:
#		get_node(str(Text)).set_text(str(output))
#		print (output)
	
