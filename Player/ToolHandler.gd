extends Node2D

onready var tools = { "PICKAXE": $Pickaxe, "SHOVEL": $Shovel }

func _ready():
	pass
	
func on_primary_attack(tool_idx):
	var in_range = $BlockDetection.get_overlapping_bodies()
	var t = tools[tool_idx]
	if in_range.size() > 0 and t != null:
		t.primary_attack(in_range.pop_front())
	
func _process(delta):
	if Input.is_action_just_pressed("tool_1"):
		on_primary_attack("PICKAXE")
		
	elif Input.is_action_just_pressed("tool_2"):
		on_primary_attack("SHOVEL")
		
	elif Input.is_action_just_pressed("tool_3"):
		pass
