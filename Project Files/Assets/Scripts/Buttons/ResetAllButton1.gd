extends Button

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

func _ready():
	get_node(".").connect("pressed", self, "ResetPressed")
	

func ResetPressed():
	Global.SaveData.selectedProfile = selectedProfile
	Global.SaveData.PenID = PenID
	Global.SaveData.EraserID = EraserID
	Global.SaveData.PadID = PadID
	Global.SaveData.Pressure1 = Pressure1
	Global.SaveData.Pressure2 = Pressure2
	Global.SaveData.Pressure3 = Pressure3
	Global.SaveData.Pressure4 = Pressure4
	Global.SaveData.PenTrackingMode = PenTrackingMode
	Global.SaveData.Orientation = Orientation
	Global.SaveData.btn2 = btn2
	Global.SaveData.btn3 = btn3
	Global.SaveData.monitorP1 = monitorP1
	Global.SaveData.monitorP2 = monitorP2
	Global.SaveData.monitorP3 = monitorP3
	Global.SaveData.monitorP4 = monitorP4
	Global.SaveData.SelectedMonitor = SelectedMonitor
	Global.SaveData.tabletBtn1 = tabletBtn1
	Global.SaveData.tabletBtn2 = tabletBtn2
	Global.SaveData.tabletBtn3 = tabletBtn3
	Global.SaveData.tabletBtn4 = tabletBtn4
	Global.SaveData.tabletBtn5 = tabletBtn5
	Global.SaveData.tabletBtn6 = tabletBtn6
	Global.SaveData.tabletBtn7 = tabletBtn7
	Global.SaveData.tabletBtn8 = tabletBtn8
	
	
	
	Global._save()


