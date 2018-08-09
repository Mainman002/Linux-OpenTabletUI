extends Button

export (NodePath) var PopWindow

func _ready():
	get_node(".").connect("pressed", self, "popWindow")
	

func popWindow():
	if get_node(PopWindow) != null:
		get_node(str(PopWindow)).popup()