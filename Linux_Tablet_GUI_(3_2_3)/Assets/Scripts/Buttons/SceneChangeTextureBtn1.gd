extends TextureButton

export (String, "MainRoot", "HuionInspiroyH950P", "BambooPenTablet") var nextScene

func _ready():
	get_node(".").connect("pressed", self, "sceneChange")
	

func sceneChange():
	Global.nextScene = (str("res://Assets/Scenes/", nextScene, ".tscn"))
	Global._save()
	Global.setScene()
	


