extends OptionButton

onready var applyBTN = get_node("../Button")
onready var Text = get_node("../LineEdit")

var mode = ["Buttons", "Programs"]

func _ready():
	self.add_item(mode[0])
	self.add_item(mode[1])
	

#func add_item(item):




