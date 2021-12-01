extends Spatial

var scoreValue = 10;

func _ready():
	pass

func _process(delta):
	translation.z += Global.carSpeed * delta

func _on_Area_body_entered(body):
	Global.score += scoreValue
	queue_free()
