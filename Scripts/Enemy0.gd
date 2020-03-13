extends RigidBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.name == "Player":
			get_parent().get_parent().get_child(3).die()
