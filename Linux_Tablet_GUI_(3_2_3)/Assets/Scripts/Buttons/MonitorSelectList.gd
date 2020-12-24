extends OptionButton

var output = []

var monitor_items = ["Monitor-Default", "Monitor-1", "Monitor-2", "Monitor-3", "Monitor-4"]
var monitor_selected = 0

func _ready():
	monitor_selected = Global.SaveData.SelectedMonitor
# warning-ignore:return_value_discarded
	get_node(".").connect("item_selected", self, "itemChanged")
	add_items()
	get_node(".").select(int(monitor_selected))
	if monitor_selected != 0:
		var TempCommand = str("xsetwacom set", " ", Global.PenID, " ", "MapToOutput ", "HEAD-", (selected - 1))
# warning-ignore:return_value_discarded
		OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#		print(str(TempCommand))
	

func add_items():
	self.add_item("Monitor-Default")
	self.add_item("Monitor-1")
	self.add_item("Monitor-2")
	self.add_item("Monitor-3")
	self.add_item("Monitor-4")
	

func itemChanged(item):
	if item != 0:
		var TempCommand = str("xsetwacom set", " ", Global.PenID, " ", "MapToOutput ", "HEAD-", (item - 1))
# warning-ignore:return_value_discarded
		OS.execute('/bin/sh', ['-c', TempCommand], true, output)
#		print(str(TempCommand))
	
	Global.SaveData.SelectedMonitor = item
	Global._save()
	

