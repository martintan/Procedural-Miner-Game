extends KinematicBody2D

# physics properties
export(float) var gravity = 9.8
export(int) var gravity_modifier = 10

# floor normal for move_and_slide()
const floor_normal = Vector2(0, -1)
var velocity = Vector2()

func _ready():
#	$AnimationPlayer.play("idle")
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("tool_1"):
		$ToolHandler.on_primary_attack("PICKAXE")
		
	elif Input.is_action_just_pressed("tool_2"):
		pass
		
	elif Input.is_action_just_pressed("tool_3"):
		pass
		
func _physics_process(delta):
	velocity.y += gravity * gravity_modifier
	if is_on_floor(): velocity.y = 0
	move_and_slide(velocity, floor_normal)
	