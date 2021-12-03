extends Label

var second = 0
var minute = 0

func _ready():
	pass

func _process(delta):
	if(second > 59):
		minute += 1
	
	Global.time = str(minute) + ":" + str(second)


func _on_Timer_timeout():
	second += 1
