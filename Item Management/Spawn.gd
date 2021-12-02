extends Position3D

onready var sWalker = preload("res://People/Sidewalk/sWalker1/sWalker1.tscn")
onready var wrench = preload("res://Wrench/Wrench.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	pass

func _process(delta):
	var sChance = rng.randf_range(1,101)
	var wChance = rng.randf_range(1,101)
	
	if(Global.currentItems < 10):
		if(sChance < 30 && sChance >= 10):
			sWalker.instance().global_transform = global_transform
			Global.currentItems += 1
		if(wChance < 10):
			wrench.instance().global_transform = global_transform
			Global.currentItems += 1
			
