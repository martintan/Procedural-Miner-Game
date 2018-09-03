extends Node2D

onready var tools = { "PICKAXE": $Pickaxe, "SHOVEL": null }

func _ready():
	pass
	
func on_primary_attack(tool_idx):
	var in_range = $BlockDetection.get_overlapping_bodies()
	if in_range.size() > 0:
		tools[tool_idx].primary_attack(in_range.pop_front())
	
func _process(delta):
	pass
