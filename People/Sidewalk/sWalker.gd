extends Spatial

var speedDecrease = 5

func _ready():
	$AnimationPlayer.play("Walk")

func _process(delta):
	translation.z += Global.carSpeed * delta
	$AnimationPlayer.play("Walk")

func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
	Global.totalPeopleHit += 1
	queue_free()
