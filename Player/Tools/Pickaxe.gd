extends Node2D

var block

func primary_attack(block):
	self.block = block
	destroy_block()
	
func destroy_block():
	block.destroy()
