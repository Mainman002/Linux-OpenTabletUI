extends OptionButton

var val_selected = 0

func _ready():
# warning-ignore:return_value_discarded
	self.connect("item_selected", self, "_itemChanged")
	val_selected = Global.SaveData.selectedProfile
	_add_items()
	self.select(int(val_selected))
	

func _add_items():
	self.add_item("Profile | 1")
	self.add_item("Profile | 2")
	

func _itemChanged(item):
	Global.selectedProfile = str(item)
	Global.SaveData.selectedProfile = str(item)
	Global._save()
	Global._load()
	


