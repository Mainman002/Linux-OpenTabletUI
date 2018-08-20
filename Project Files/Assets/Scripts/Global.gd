extends Node

var SaveFile = "user://Data.cfg"
var LoadFile = "user://Data.cfg"
var configFile= ConfigFile.new()
var save_file = File.new()

var firstLoad = true
var output = []

var currentScene = null
var nextScene = null

var selectedProfile = "0"
var PenID = 0
var EraserID = 0
var PadID = 0
var Pressure1 = 0
var Pressure2 = 0
var Pressure3 = 50
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
var tabletBtn1 = "ctrl shift +"
var tabletBtn2 = "ctrl -"
var tabletBtn3 = "]"
var tabletBtn4 = "["
var tabletBtn5 = "2"
var tabletBtn6 = "ctrl s"
var tabletBtn7 = "ctrl shift z"
var tabletBtn8 = "ctrl z"

var SaveData = {
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
#	_save()
	if firstLoad == true:
		_load()
#		print(str("Profile : ", selectedProfile))




#onready var profile0 = {
#selectedProfile:selectedProfile,
#PenID:PenID,
#Pressure1:Pressure1,
#Pressure2:Pressure2,
#Pressure3:Pressure3,
#Pressure4:Pressure4,
#PenTrackingMode:PenTrackingMode,
#btn2:btn2,
#btn3:btn3
#} 
#
#onready var profile1 = {
#selectedProfile:selectedProfile,
#PenID:PenID,
#Pressure1:Pressure1,
#Pressure2:Pressure2,
#Pressure3:Pressure3,
#Pressure4:Pressure4,
#PenTrackingMode:PenTrackingMode,
#btn2:btn2,
#btn3:btn3
#} 
#
#onready var profile2 = {
#selectedProfile:selectedProfile,
#PenID:PenID,
#Pressure1:Pressure1,
#Pressure2:Pressure2,
#Pressure3:Pressure3,
#Pressure4:Pressure4,
#PenTrackingMode:PenTrackingMode,
#btn2:btn2,
#btn3:btn3
#} 

func setScene():
	currentScene.queue_free()
	var s = ResourceLoader.load(nextScene)
	currentScene = s.instance()
	get_tree().get_root().add_child(currentScene)

func _save():
	configFile.set_value("Save_Data","SaveData",SaveData)
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
	SaveData = configFile.get_value("Save_Data","SaveData","SaveData")
	
#	print(str("Profile : ", selectedProfile))
#	if (configFile.has_section("Save_Data")):
#		selectedProfile = SaveData.selectedProfile
	

