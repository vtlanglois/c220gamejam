extends Spatial




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("left")):
		translation.x -= 0.25;
	if (Input.is_action_pressed("right")):
		translation.x += 0.25;
		
