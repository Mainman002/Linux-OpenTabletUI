extends OptionButton

export (String,"none", "half", "cw", "ccw") var rotDir
export (NodePath) var Text
export (NodePath) var TabletSprite

var output = []

var orientation_items = ["none", "half", "cw", "ccw"]
var btn_selected = 0

var Orientation = 0 ## [none = Left | half = right | cw = up | ccw = down]
var OrientationText = "Orientation: Left"

func _ready():
# warning-ignore:return_value_discarded
	get_node(".").connect("item_selected", self, "itemChanged")
	Orientation = Global.SaveData.Orientation
	btn_selected = Orientation
	add_items()
#	selected = Global.SaveData.selectedProfile
	get_node(".").select(int(btn_selected))
#	print(str("test : ", selected))

	
	if btn_selected == 0:
		Orientation = 0
		OrientationText = "Right"
		get_node(str(TabletSprite)).rotation_degrees = 0
	elif btn_selected == 1:
		Orientation = 1
		OrientationText = "Left"
		get_node(str(TabletSprite)).rotation_degrees = 180
		
	elif btn_selected == 2:
		Orientation = 2
		OrientationText = "Up"
		get_node(str(TabletSprite)).rotation_degrees = 90
	elif btn_selected == 3:
		Orientation = 3
		OrientationText = "Down"
		get_node(str(TabletSprite)).rotation_degrees = -90
		
	get_node(str(Text)).set_text(str("Orientation: ", OrientationText))
	

func add_items():
	self.add_item("Orientation: Right")
	self.add_item("Orientation: Left")
	self.add_item("Orientation: Up")
	self.add_item("Orientation: Down")
	

func itemChanged(item):
	btn_selected = item
	if item == 0:
		Global.Orientation = 0
		Orientation = 0
		OrientationText = "Orientation: Right"
		get_node(str(TabletSprite)).rotation_degrees = 0
	elif item == 1:
		Global.Orientation = 1
		Orientation = 1
		OrientationText = "Orientation: Left"
		get_node(str(TabletSprite)).rotation_degrees = 180
		
	elif item == 2:
		Global.Orientation = 2
		Orientation = 2
		OrientationText = "Orientation: Up"
		get_node(str(TabletSprite)).rotation_degrees = 90
	elif item == 3:
		Global.Orientation = 3
		Orientation = 3
		OrientationText = "Orientation: Down"
		get_node(str(TabletSprite)).rotation_degrees = -90
		
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " Rotate ", Global.Orientation)
# warning-ignore:return_value_discarded
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	Global.Orientation = Orientation
	Global.SaveData.Orientation = Orientation
	Global._save()
	get_node(str(Text)).set_text(str(OrientationText))
	

