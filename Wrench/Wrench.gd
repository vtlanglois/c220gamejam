extends Spatial

var speedDecrease = 4

func _ready():
	get_node_or_null("/root/Game/Wrench/Area/AnimationPlayer").play("Spin")

func _physics_process(delta):
	translation.z += Global.carSpeed * delta;

func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
	queue_free()
