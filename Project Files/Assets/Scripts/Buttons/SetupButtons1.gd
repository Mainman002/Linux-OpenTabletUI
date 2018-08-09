extends Button

export (NodePath) var Text

var output = []

func _ready():
	get_node(".").connect("pressed", self, "btnPressed")
	
	OS.execute('/bin/sh', ['-c', 'xsetwacom list devices'], true, output)
	if has_node(str(Text)) and Text != null:
		get_node(str(Text)).set_text(str(output))

func btnPressed():
	OS.execute('/bin/sh', ['-c', 'xsetwacom list devices'], true, output)
	if has_node(str(Text)) and Text != null:
		get_node(str(Text)).set_text(str(output))
#		print (output)
	


