extends Timer

onready var sWalker = preload("res://People/Sidewalk/sWalker1/sWalker1.tscn")
onready var wrench = preload("res://Wrench/Wrench.tscn")

var rng = RandomNumberGenerator.new()

func _ready():
	pass

func _process(delta):
	pass

func _on_Spawner_timeout():
	var sChance = rng.randf_range(1,101)
	
	var position = Vector3(rng.randf_range(-4,5),-150.025,-150.025)
	var scene_root = get_parent()
	
	if(sChance >= 40):
		var node = sWalker.instance()
		node.transform.origin = position
		scene_root.add_child(node)
		Global.currentItems += 1
	else:
		var node = wrench.instance()
		node.transform.origin = position
		scene_root.add_child(node)
		Global.currentItems += 1
