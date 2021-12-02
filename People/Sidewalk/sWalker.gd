extends Spatial

var speedDecrease = 5

var angle : float = PI
onready var rotation_target = get_node("/root/Game/PivotPoint")
const DISTANCE_FROM_TARGET = 150.025

#rotation code: https://godotforums.org/discussion/27319/how-to-rotate-one-spatial-around-another-spatial

func _ready():
	$AnimationPlayer.play("Walk")

func _process(delta):

	angle += Global.carSpeed * delta * .025
	
	var angle_vector = Vector2(cos(angle), sin(angle))
	global_transform.origin = rotation_target.global_transform.origin
	
	global_transform.origin.z -= angle_vector.x * DISTANCE_FROM_TARGET
	global_transform.origin.y += angle_vector.y * DISTANCE_FROM_TARGET

	$AnimationPlayer.play("Walk")

func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
	Global.totalPeopleHit += 1
	queue_free()
