extends RigidBody2D

var score = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.name == "Player":
			print("JAISDK")
			body.change_score(score)
		queue_free()
