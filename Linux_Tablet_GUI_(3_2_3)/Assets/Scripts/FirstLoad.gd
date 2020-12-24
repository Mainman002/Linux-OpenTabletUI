extends Node2D

export (String, "MainRoot", "HuionInspiroyH950P", "BambooPenTablet") var nextScene

func _ready():
	get_node("HBoxContainer/HSplit/SidePanel/VSplit/VBoxContainer/ResetSettings").connect("pressed", self, "resetBtn")
	

func resetBtn():
	Global.selectedProfile = 0
	Global.PenID = 0
	Global.EraserID = 0
	Global.PadID = 0
	Global.Pressure1 = 0
	Global.Pressure2 = 0
	Global.Pressure3 = 75
	Global.Pressure4 = 100
	Global.PenTrackingMode = "Absolute"
	Global.Orientation = 0
	Global.btn2 = 2
	Global.btn3 = 3
	Global.monitorP1 = 0
	Global.monitorP2 = 0
	Global.monitorP3 = 1080
	Global.monitorP4 = 1920
	Global.SelectedMonitor = 0
	
	Global.SaveData.selectedProfile = 0
	Global.SaveData.PenID = 0
	Global.SaveData.EraserID = 0
	Global.SaveData.PadID = 0
	Global.SaveData.Pressure1 = 0
	Global.SaveData.Pressure2 = 0
	Global.SaveData.Pressure3 = 50
	Global.SaveData.Pressure4 = 100
	Global.SaveData.PenTrackingMode = "Absolute"
	Global.SaveData.Orientation = 0
	Global.SaveData.btn2 = 2
	Global.SaveData.btn3 = 3
	Global.SaveData.monitorP1 = 0
	Global.SaveData.monitorP2 = 0
	Global.SaveData.monitorP3 = 1080
	Global.SaveData.monitorP4 = 1920
	Global.SaveData.SelectedMonitor = 0
	
	Global._save()

func sceneChange():
	Global.nextScene = (str("res://Assets/Scenes/", nextScene, ".tscn"))
	Global._save()
	Global.setScene()
	


