extends KinematicBody2D

const UP = Vector2(0,-1)
var motion = Vector2()
export var speed = 300
export var gravity = 20
export var jump_force = -550
onready var anim_player = AnimationPlayer

func _physics_process(delta):
	var anim = "Idle"
	#gravity
	motion.y += gravity
	#moving left and right 
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		anim = "run"
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		anim = "run"
		
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump_force
			anim = "jump"
	
	motion = move_and_slide(motion,UP)


func _assign_animation():
	var anim = "Idle"
	if is_on_floor():
		anim = "jump"
	elif motion.x != 0:
		anim = "run"
	
	if anim_player.assigned_animation != anim:
		anim_player.play(anim)
