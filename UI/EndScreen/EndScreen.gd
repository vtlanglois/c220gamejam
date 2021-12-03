extends Control



func _ready():
	var score = Global.score + (Global.totalWrenches*3) - int(Global.totalPeopleHit/2)
	$Score.text = "Final Score: " + str(score) + "\nTime: " + str(Global.time) + "\nPeople Hit: " + str(Global.totalPeopleHit) +"\nWrenchs Collected: " + str(Global.totalWrenches)

func _on_Button_pressed():
	get_tree().change_scene("res://Game.tscn")
	print("quit pressed")
