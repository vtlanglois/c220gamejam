extends Spatial

var speedDecrease = 1

var angle : float = 0
onready var rotation_target = get_node("/root/Game/PivotPoint")
const DISTANCE_FROM_TARGET = 150.025
var x = rand_range(-2,2)
onready var s1 = load("res://Assets/Guy/guy1.png")
onready var s2 = load("res://Assets/Guy/guy2.png")
onready var s3 = load("res://Assets/Guy/guy3.png")
onready var s4 = load("res://Assets/Guy/guy4.png")
var skin = rand_range(0,4)
onready var mesh : MeshInstance = get_node("metarig/Skeleton/Cube002")

#rotation code: https://godotforums.org/discussion/27319/how-to-rotate-one-spatial-around-another-spatial

func _ready():
	$AnimationPlayer.play("Fall")
	$AnimationPlayer.play("Walk")
	if (skin <= 1):
		mesh.get_surface_material(0).albedo_texture = s1
	elif (skin <= 2):
		mesh.get_surface_material(0).albedo_texture = s2
	elif (skin <= 3):
		mesh.get_surface_material(0).albedo_texture = s3
	elif (skin <= 4):
		mesh.get_surface_material(0).albedo_texture = s4

func _process(delta):

	angle += (Global.carSpeed+Global.constantSpeed) * delta * .025
	
	var angle_vector = Vector2(cos(angle), sin(angle))
	global_transform.origin = rotation_target.global_transform.origin
	
	global_transform.origin.x = x
	global_transform.origin.z -= angle_vector.x * DISTANCE_FROM_TARGET
	global_transform.origin.y += angle_vector.y * DISTANCE_FROM_TARGET


func _on_Area_body_entered(body):
	Global.carSpeed -= speedDecrease
	Global.score += 1
	Global.totalPeopleHit += 1
	SoundFx.get_child(0).play()
	$AnimationPlayer.play("Fall")


func _on_AnimationPlayer_animation_finished(Fall):
	print("death")
	queue_free()
