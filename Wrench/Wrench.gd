extends Spatial

<<<<<<< Updated upstream
var speedDecrease = 10
=======
# wrench sound by BMacZero

var speedDecrease = 5

var angle : float = PI
onready var rotation_target = get_node("/root/Game/PivotPoint")
const DISTANCE_FROM_TARGET = 150.025
var x = rand_range(-2,2)


func _ready():
	$AnimationPlayer2.play("Spin")
>>>>>>> Stashed changes

func _physics_process(delta):
	translation.z += Global.carSpeed * delta;

func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
<<<<<<< Updated upstream
=======
	Global.currentItems -= 1
	Global.score += 5
	GlobalAudioStreamPlayer.get_child(0).play()
>>>>>>> Stashed changes
	queue_free()
