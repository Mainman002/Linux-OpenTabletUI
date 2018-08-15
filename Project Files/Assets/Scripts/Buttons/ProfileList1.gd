extends OptionButton

var items = ["Profile1", "Profile2", "Profile3"]
var selected = "Profile1"

func _ready():
	set_process_input(true)
	self.connect("item_selected", self, "itemChanged")
	add_items()
	selected = Global.SaveData.selectedProfile
	get_node(".").select(int(selected))
#	print(str("test : ", selected))
	

func _input(event):
	if Input.is_action_pressed("ctrl"):
		print(str(event))

func add_items():
	self.add_item("Profile1")
	self.add_item("Profile2")
	self.add_item("Profile3")
	

func itemChanged(item):
	Global.selectedProfile = item
	Global.SaveData.selectedProfile = item
	Global._save()
#	Global.profileChange()




