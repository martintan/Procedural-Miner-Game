extends Node2D

const breakable = [ "Dirt" ]
var block

func primary_attack(block):
	self.block = block
	for b in breakable:
		if block.name.find(b) != -1:
			destroy_block()
	
func destroy_block():
	block.destroy()