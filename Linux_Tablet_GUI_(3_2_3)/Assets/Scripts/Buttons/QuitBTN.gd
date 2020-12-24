extends TextureButton

func _ready():
# warning-ignore:return_value_discarded
	self.connect("pressed", self, "quitbtn")
	

func quitbtn():
	get_tree().quit()
	

