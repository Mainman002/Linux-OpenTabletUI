extends Button

export (String,"none", "half", "cw", "ccw") var rotDir
export (NodePath) var Text
export (NodePath) var TabletSprite

var output = []

var Orientation = "none" ## [none = Left | half = right | cw = up | ccw = down]
var OrientationText = "Left"

func _ready():
	get_node(".").connect("pressed", self, "btnPressed")
	Orientation = Global.SaveData.Orientation
	
	if Orientation == "none":
		Orientation = "none"
		OrientationText = "Right"
		get_node(str(TabletSprite)).set_rotd(0)
	elif Orientation == "half":
		Orientation = "half"
		OrientationText = "Left"
		get_node(str(TabletSprite)).set_rotd(180)
		
	elif Orientation == "cw":
		Orientation = "cw"
		OrientationText = "Up"
		get_node(str(TabletSprite)).set_rotd(90)
	elif Orientation == "ccw":
		Orientation = "ccw"
		OrientationText = "Down"
		get_node(str(TabletSprite)).set_rotd(-90)
		
	get_node(str(Text)).set_text(str("Orientation: ", OrientationText))
	

func btnPressed():
	
	if rotDir == "none":
		Global.Orientation = "none"
		Orientation = "none"
		OrientationText = "Right"
		get_node(str(TabletSprite)).set_rotd(0)
	elif rotDir == "half":
		Global.Orientation = "half"
		Orientation = "half"
		OrientationText = "Left"
		get_node(str(TabletSprite)).set_rotd(180)
		
	elif rotDir == "cw":
		Global.Orientation = "cw"
		Orientation = "cw"
		OrientationText = "Up"
		get_node(str(TabletSprite)).set_rotd(90)
	elif rotDir == "ccw":
		Global.Orientation = "ccw"
		Orientation = "ccw"
		OrientationText = "Down"
		get_node(str(TabletSprite)).set_rotd(-90)
		
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " Rotate ", Global.Orientation)
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	Global.Orientation = Orientation
	Global.SaveData.Orientation = Orientation
	Global._save()
	get_node(str(Text)).set_text(str("Orientation: ", OrientationText))
