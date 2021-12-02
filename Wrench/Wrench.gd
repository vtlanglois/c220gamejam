extends Spatial

var speedDecrease = 5

func _ready():
	$AnimationPlayer2.play("Spin")

func _physics_process(delta):
	translation.z += Global.carSpeed * delta;

func _on_Area_body_entered(body):
	Global.totalWrenches += 1
	Global.carSpeed -= speedDecrease
	queue_free()
