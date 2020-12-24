extends Node

#var SaveFile = "user://Data.cfg"
#var LoadFile = "user://Data.cfg"

var SaveFile = "user://../../../Documents/Digital-Settings-Gui/Data.cfg"
var LoadFile = "user://../../../Documents/Digital-Settings-Gui/Data.cfg"

var configFile= ConfigFile.new()
var save_file = File.new()

var firstLoad = true
var output = []

var currentScene = null
var nextScene = null

var frameLimit = 30
var selectedProfile = "0"
var PenID = 0
var EraserID = 0
var PadID = 0
var Pressure1 = 0
var Pressure2 = 0
var Pressure3 = 75
var Pressure4 = 100
var PenTrackingMode = "Absolute"
var Orientation = 0
var btn2 = str(2)
var btn3 = str(3)
var monitorP1 = str(0)
var monitorP2 = str(0)
var monitorP3 = str(1080)
var monitorP4 = str(1920)
var SelectedMonitor = 0
var tabletBtn1 = "5"
var tabletBtn2 = "2"
var tabletBtn3 = "shift"
var tabletBtn4 = "ctrl"
var tabletBtn5 = "ctrl n"
var tabletBtn6 = "ctrl s"
var tabletBtn7 = "ctrl shift z"
var tabletBtn8 = "ctrl z"

var SaveData = {
"frameLimit":frameLimit,
"selectedProfile":selectedProfile,
"PenID":PenID,
"EraserID":EraserID,
"PadID":PadID,
"Pressure1":Pressure1,
"Pressure2":Pressure2,
"Pressure3":Pressure3,
"Pressure4":Pressure4,
"PenTrackingMode":PenTrackingMode,
"Orientation":Orientation,
"btn2":btn2,
"btn3":btn3,
"monitorP1":monitorP1,
"monitorP2":monitorP2,
"monitorP3":monitorP3,
"monitorP4":monitorP4,
"SelectedMonitor":SelectedMonitor,
"tabletBtn1":tabletBtn1,
"tabletBtn2":tabletBtn2,
"tabletBtn3":tabletBtn3,
"tabletBtn4":tabletBtn4,
"tabletBtn5":tabletBtn5,
"tabletBtn6":tabletBtn6,
"tabletBtn7":tabletBtn7,
"tabletBtn8":tabletBtn8
}


func _ready():
	currentScene = get_tree().get_root().get_child( get_tree().get_root().get_child_count() -1 )
	OS.set_low_processor_usage_mode(true)
#	_save()
	if firstLoad == true:
		var dir = Directory.new()
		dir.make_dir("user://../../../Documents/Digital-Settings-Gui/")
		_load()
#

func setScene():
	currentScene.queue_free()
	var s = ResourceLoader.load(nextScene)
	currentScene = s.instance()
	get_tree().get_root().add_child(currentScene)

func _save():
	configFile.set_value("Save_Data","Tablet1",SaveData)
	configFile.save(SaveFile)
	
func _load():
	firstLoad = false
#	GAME_DATA.is_SaveLoading = false
	if not save_file.file_exists(SaveFile):
#		print("The save file does not exist.")
#		print(str("Profile : ", selectedProfile))
		_save()
		return
#	save_file.open(SAVE_PATH, File.READ)
	configFile.load(LoadFile) 
	SaveData = configFile.get_value("Save_Data","Tablet1","SaveData")
#	OS.set_target_fps(SaveData.frameLimit)
	

func _reset():
	frameLimit = 30
	selectedProfile = "0"
	PenID = 0
	EraserID = 0
	PadID = 0
	Pressure1 = 0
	Pressure2 = 0
	Pressure3 = 70
	Pressure4 = 100
	PenTrackingMode = "Absolute"
	Orientation = 0
	btn2 = str(2)
	btn3 = str(3)
	monitorP1 = str(0)
	monitorP2 = str(0)
	monitorP3 = str(1080)
	monitorP4 = str(1920)
	SelectedMonitor = 0
	tabletBtn1 = "5"
	tabletBtn2 = "2"
	tabletBtn3 = "shift"
	tabletBtn4 = "ctrl"
	tabletBtn5 = "ctrl n"
	tabletBtn6 = "ctrl s"
	tabletBtn7 = "ctrl shift z"
	tabletBtn8 = "ctrl z"
	
	SaveData.frameLimit = frameLimit
	SaveData.selectedProfile = selectedProfile
	SaveData.PenID = PenID
	SaveData.EraserID = EraserID
	SaveData.PadID = PadID
	SaveData.Pressure1 = Pressure1
	SaveData.Pressure2 = Pressure2
	SaveData.Pressure3 = Pressure3
	SaveData.Pressure4 = Pressure4
	SaveData.PenTrackingMode = PenTrackingMode
	SaveData.Orientation = Orientation
	SaveData.btn2 = btn2
	SaveData.btn3 = btn3
	SaveData.monitorP1 = monitorP1
	SaveData.monitorP2 = monitorP2
	SaveData.monitorP3 = monitorP3
	SaveData.monitorP4 = monitorP4
	SaveData.SelectedMonitor = SelectedMonitor
	SaveData.tabletBtn1 = tabletBtn1
	SaveData.tabletBtn2 = tabletBtn2
	SaveData.tabletBtn3 = tabletBtn3
	SaveData.tabletBtn4 = tabletBtn4
	SaveData.tabletBtn5 = tabletBtn5
	SaveData.tabletBtn6 = tabletBtn6
	SaveData.tabletBtn7 = tabletBtn7
	SaveData.tabletBtn8 = tabletBtn8
	
	_save()



