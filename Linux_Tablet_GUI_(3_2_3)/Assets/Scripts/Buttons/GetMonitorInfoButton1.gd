extends Button

export (NodePath) var Text

var output = []

func _ready():
# warning-ignore:return_value_discarded
	get_node(".").connect("pressed", self, "btnPressed")
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', 'xrandr'], true, output)
	if has_node(str(Text)) and Text != null:
		get_node(str(Text)).set_text(str(output))

func btnPressed():
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', 'xrandr'], true, output)
	if has_node(str(Text)) and Text != null:
		get_node(str(Text)).set_text(str(output))
	

