extends Label

var output = []

func _ready():
	set_process(true)
	var TempCommand = str("xsetwacom get", " ", Global.PenID, " ", "PressureCurve ")
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	print(output)

func _process(delta):
	PressureChange()

func PressureChange():
	var TempCommand = str("xsetwacom get", " ", Global.PenID, " ", "PressureCurve ")
	OS.execute('/bin/sh', ['-c', TempCommand], true, output)
	print(output)
