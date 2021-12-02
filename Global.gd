extends Node



export  var carSpeed = 10.0
export var score = 0;
export var time = 0;
export var carLimits = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	pause_mode = PAUSE_MODE_PROCESS


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		#get_tree().quit()
		var menu = get_node_or_null("/root/Game/Menu")
		if menu != null:
			if not menu.visible:
				menu.show()
				get_tree().paused = true
			else:
				menu.hide()
				get_tree().paused = false
