extends Spatial

var scoreValue = 4;

func _ready():
	$AnimationPlayer.play("Walk")

func _process(delta):
	translation.z += Global.carSpeed * delta
	$AnimationPlayer.play("Walk")

func _on_Area_body_entered(body):
	Global.score += scoreValue
	queue_free()
