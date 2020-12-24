extends TextureButton

func _ready():
# warning-ignore:return_value_discarded
	get_node(".").connect("pressed", self, "ResetPressed")
	

func ResetPressed():
	Global._reset()
	

