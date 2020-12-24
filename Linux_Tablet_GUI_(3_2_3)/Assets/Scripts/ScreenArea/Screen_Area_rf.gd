extends ReferenceFrame

var v1 = 0
var v2 = 512

var w1 = 0
var w2 = 1280

var pressed = false

func _ready():
	
	print(self.get_rect().size.x)
	
	get_node("view_pos_check_btn").connect("pressed", self, "_btn_pressed")
	get_node("view_pos_check_btn").connect("released", self, "_btn_released")
	
	set_process(true)

func _process(delta):
	if pressed:
		if get_global_mouse_pos().x > self.get_rect().size.width:
			get_node("Sprite").set_global_pos(get_global_mouse_pos())
			
		if Input.is_mouse_button_pressed(1):
			pass
		else:
			pressed = false

func _btn_pressed():
	pressed = true
	print("test")

func _btn_released():
	pressed = false
	print("test 2")

func _changed_val(value):
	pass

