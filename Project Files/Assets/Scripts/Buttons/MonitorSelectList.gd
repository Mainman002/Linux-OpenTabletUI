extends OptionButton

var output = []

var items = ["Monitor-1", "Monitor-2", "Monitor-3", "Monitor-4"]
var selected = 0

func _ready():
	get_node(".").connect("item_selected", self, "itemChanged")
	add_items()
	selected = Global.SaveData.SelectedMonitor
	get_node(".").select(int(selected))
#	print(str("test : ", selected))
	

func add_items():
	self.add_item("Monitor-1")
	self.add_item("Monitor-2")
	self.add_item("Monitor-3")
	self.add_item("Monitor-4")
	

func itemChanged(item):
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " ", "MapToOutput ", "HEAD-", item)
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	
	Global.SaveData.SelectedMonitor = item
	Global._save()
	
#	print(str(TempCommand))
#	Global.selectedProfile = item
#	Global.SaveData.selectedProfile = item
#	Global._save()
#	Global.profileChange()
#	print(item)

