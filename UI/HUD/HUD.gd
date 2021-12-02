extends Control


func _ready():
	pass

func _process(delta):
	$Speed.text = "Speed: " + str(Global.carSpeed)
	$Time.text = "Time: " + str(Global.time)
	$Score.text = "Score: " + str(Global.score)
