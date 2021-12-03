extends Spatial


#Music by Joth

var moveSpeed = 10;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("left")):
		translation.x -= moveSpeed * delta;
	if (Input.is_action_pressed("right")):
		translation.x += moveSpeed * delta;
	if (translation.x <= -Global.carLimits): translation.x = -Global.carLimits
	if (translation.x >= Global.carLimits): translation.x = Global.carLimits
