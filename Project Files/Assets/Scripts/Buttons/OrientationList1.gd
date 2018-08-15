extends OptionButton

export (String,"none", "half", "cw", "ccw") var rotDir
export (NodePath) var Text
export (NodePath) var TabletSprite

var output = []

var items = ["none", "half", "cw", "ccw"]
var selected = 0

var Orientation = 0 ## [none = Left | half = right | cw = up | ccw = down]
var OrientationText = "Orientation: Left"

func _ready():
	get_node(".").connect("item_selected", self, "itemChanged")
	Orientation = Global.SaveData.Orientation
	selected = Orientation
	add_items()
#	selected = Global.SaveData.selectedProfile
	get_node(".").select(int(selected))
#	print(str("test : ", selected))

	
	if selected == 0:
		Orientation = 0
		OrientationText = "Right"
		get_node(str(TabletSprite)).set_rotd(0)
	elif selected == 1:
		Orientation = 1
		OrientationText = "Left"
		get_node(str(TabletSprite)).set_rotd(180)
		
	elif selected == 2:
		Orientation = 2
		OrientationText = "Up"
		get_node(str(TabletSprite)).set_rotd(90)
	elif selected == 3:
		Orientation = 3
		OrientationText = "Down"
		get_node(str(TabletSprite)).set_rotd(-90)
		
	get_node(str(Text)).set_text(str("Orientation: ", OrientationText))
	

func add_items():
	self.add_item("Orientation: Right")
	self.add_item("Orientation: Left")
	self.add_item("Orientation: Up")
	self.add_item("Orientation: Down")
	

func itemChanged(item):
	selected = item
	if item == 0:
		Global.Orientation = 0
		Orientation = 0
		OrientationText = "Orientation: Right"
		get_node(str(TabletSprite)).set_rotd(0)
	elif item == 1:
		Global.Orientation = 1
		Orientation = 1
		OrientationText = "Orientation: Left"
		get_node(str(TabletSprite)).set_rotd(180)
		
	elif item == 2:
		Global.Orientation = 2
		Orientation = 2
		OrientationText = "Orientation: Up"
		get_node(str(TabletSprite)).set_rotd(90)
	elif item == 3:
		Global.Orientation = 3
		Orientation = 3
		OrientationText = "Orientation: Down"
		get_node(str(TabletSprite)).set_rotd(-90)
		
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " Rotate ", Global.Orientation)
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	Global.Orientation = Orientation
	Global.SaveData.Orientation = Orientation
	Global._save()
	get_node(str(Text)).set_text(str(OrientationText))
	

