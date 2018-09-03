# PlayerPosition - debug for y coordinate
extends Node2D

onready var start_y = self.global_position.y

func _process(delta):
	var altitude = floor((start_y - self.global_position.y) / 16)