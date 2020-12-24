extends TextureButton

export (String, "Setup", "PenSettings", "TabletSettings", "MonitorSettings", "Credits", "Welcome") var nextScene

func _ready():
# warning-ignore:return_value_discarded
	self.connect("pressed", self, "btnPressed")
	

func btnPressed():
	Global.nextScene = (str("res://Assets/Scenes/Huion1/", nextScene, ".tscn"))
	Global._save()
	Global.setScene()
	


