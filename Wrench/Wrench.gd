extends Spatial

onready var game = get_node("res://Global.gd")

var speedDecrease = 0.5

func _physics_process(delta):
	translation.z += Global.carSpeed * delta;

func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
	queue_free()
