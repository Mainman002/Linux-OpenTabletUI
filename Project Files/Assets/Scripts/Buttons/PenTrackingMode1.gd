extends Button

var output = []
var PenModeText = "Pen"
var PenMode = "Absolute"

func _ready():
	get_node(".").connect("pressed", self, "PenModeSwitch")
	PenMode = Global.SaveData.PenTrackingMode
	
	if PenMode == "Absolute":
		Global.PenTrackingMode = "Absolute"
		PenMode = "Absolute"
		PenModeText = "Pen"
	elif PenMode == "Relative":
		Global.PenTrackingMode = "Relative"
		PenMode = "Relative"
		PenModeText = "Mouse"
	
	get_node(".").set_text(str("Pen Tracking Mode : ", PenModeText))

func PenModeSwitch():
	if Global.PenTrackingMode == "Absolute":
		Global.PenTrackingMode = "Relative"
		PenMode = "Relative"
		PenModeText = "Mouse"
	elif Global.PenTrackingMode == "Relative":
		Global.PenTrackingMode = "Absolute"
		PenMode = "Absolute"
		PenModeText = "Pen"
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " Mode ", Global.PenTrackingMode)
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	Global.PenTrackingMode = PenMode
	Global.SaveData.PenTrackingMode = PenMode
	Global._save()
	get_node(".").set_text(str("Pen Tracking Mode : ", PenModeText))
#	print(output)
