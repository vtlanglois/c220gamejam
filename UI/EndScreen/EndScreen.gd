extends Node2D



func _ready():
	$Control/Score.text = "Score: " + str(Global.score) + "\nTime: " + str(Global.time) + "\nPeople Hit: " + str(Global.totalPeopleHit) +"\nWrenchs Collected: " + str(Global.totalWrenches)

func _on_Button_pressed():
	get_tree().change_scene("res://Game.tscn")
