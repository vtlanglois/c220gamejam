extends Spatial


# wrench sound by BMacZero

var speedDecrease = 5

var angle : float = PI
onready var rotation_target = get_node("/root/Game/PivotPoint")
const DISTANCE_FROM_TARGET = 150.025
var x = rand_range(-2,2)



func _ready():
	$AnimationPlayer2.play("Spin")

func _ready():
	$AnimationPlayer2.play("Spin")


func _physics_process(delta):
	angle += (Global.carSpeed+Global.constantSpeed) * delta * .025
	
	var angle_vector = Vector2(cos(angle), sin(angle))
	global_transform.origin = rotation_target.global_transform.origin
	
	global_transform.origin.x = x
	global_transform.origin.z -= angle_vector.x * DISTANCE_FROM_TARGET
	global_transform.origin.y += angle_vector.y * DISTANCE_FROM_TARGET

func _on_Area_body_entered(body):
	Global.totalWrenches += 1
	Global.carSpeed -= speedDecrease

	Global.currentItems -= 1
	Global.score += 5
	GlobalAudioStreamPlayer.get_child(0).play()


	queue_free()
