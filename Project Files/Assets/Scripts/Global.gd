extends Node

var SaveFile = "user://Data.cfg"
var LoadFile = "user://Data.cfg"
var configFile= ConfigFile.new()
var save_file = File.new()

var firstLoad = true
var output = []

var selectedProfile = "0"
var PenID = 14
var Pressure1 = 0
var Pressure2 = 0
var Pressure3 = 50
var Pressure4 = 100
var PenTrackingMode = "Absolute"
var Orientation = "Left"
var btn2 = str(2)
var btn3 = str(3)
var monitorP1 = str(0)
var monitorP2 = str(0)
var monitorP3 = str(1080)
var monitorP4 = str(1920)

var SaveData = {
"selectedProfile":selectedProfile,
"PenID":PenID,
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
}


func _ready():
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
	

