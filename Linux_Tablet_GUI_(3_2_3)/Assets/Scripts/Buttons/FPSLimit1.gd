extends LineEdit

var fpsNum = 30

func _ready():
# warning-ignore:return_value_discarded
	self.connect("text_entered", self, "_fpsChange")
	fpsNum = Global.SaveData.frameLimit
	self.set_text(str(fpsNum))
#	OS.set_target_fps(int(fpsNum))
	Engine.target_fps = int(fpsNum)
	

func _fpsChange(text):
	Global.SaveData.frameLimit = text
	Global._save()
#	OS.set_target_fps(int(text))
	Engine.target_fps = int(text)

