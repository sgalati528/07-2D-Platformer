extends KinematicBody2D

const UP = Vector2(0,-1)
var motion = Vector2()
onready var lives = get_node("/root/Global").lives
onready var score = get_node("/root/Global").score
export var speed = 300
export var gravity = 20
export var jump_force = -550
onready var anim_player = AnimationPlayer

signal health_changed
signal score_changed

func _ready():
	emit_signal("health_changed")
	emit_signal("score_changed")

func change_lives():
	$Camera2D/Lives.decrease_lives()
	emit_signal("health_changed")
	get_node("/root/Global").save_data()
	if get_node("/root/Global").lives == 0:
		die()

func change_score(s):
	$Camera2D/Score.increase_score(s)
	emit_signal("score_changed")
	get_node("/root/Global").save_data()

# warning-ignore:unused_argument
func _physics_process(delta):
	#gravity
	motion.y += gravity
	#moving left and right 
	if Input.is_action_pressed("ui_right"):
		motion.x = speed

	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed

	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump_force
			
	
	motion = move_and_slide(motion,UP)
	


func die():
	get_node("/root/Global").score = 0
	get_node("/root/Global").lives = 3
	get_node("/root/Global").save_data()
	queue_free()
	get_tree().change_scene("res://Scenes/GameOver.tscn")



# warning-ignore:unused_argument
func _on_Snowflake2_body_entered(body):
	change_score(50)


# warning-ignore:unused_argument
func _on_Area2D_body_entered(body):
	change_lives()
