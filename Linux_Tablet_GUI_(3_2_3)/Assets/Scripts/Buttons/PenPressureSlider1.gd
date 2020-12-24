extends HSlider

var isClicking = false

var allPressure = null

var Pressure1 = 0
var Pressure2 = 0
var Pressure3 = 50
var Pressure4 = 100

var output = []

func _ready():
	set_process_input(true)
# warning-ignore:return_value_discarded
	get_node(".").connect("value_changed", self, "PressureChanged")
	Pressure3 = Global.SaveData.Pressure3
	get_node(".").set_value(Pressure3)

# warning-ignore:unused_argument
func _input(event):
	if ! Input.is_mouse_button_pressed(1) and isClicking == true:
# warning-ignore:return_value_discarded
		OS.execute('/bin/sh', ['-c', allPressure], true, output)
		Global.Pressure3 = Pressure3
		Global.SaveData.Pressure3 = Pressure3
		Global._save()
		isClicking = false
#		print(allPressure)

func PressureChanged(value):
	value = get_node(".").get_value()
	Pressure3 = value
	var TempCommand = str("xsetwacom set", " ", Global.PenID, " ", "PressureCurve ", Pressure1, " ", Pressure2, " ", Pressure3, " ", Pressure4)
	allPressure = TempCommand
	
	Global.Pressure1 = Pressure1
	Global.Pressure2 = Pressure2
	Global.Pressure3 = Pressure3
	Global.Pressure4 = Pressure4
	
	isClicking = true
	
#	print (TempCommand)
