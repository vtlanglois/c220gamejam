extends Spatial

var speedDecrease = 10

func _physics_process(delta):
	translation.z += Global.carSpeed * delta;

func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
	queue_free()
