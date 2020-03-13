extends RigidBody2D

export var score = 50
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var colliding = get_colliding_bodies()
	for c in colliding:
		if c.name == "Player":
			get_parent().get_parent().change_score(score)
	queue_free()


func _on_CollisionPolygon2D_tree_entered():
	pass # Replace with function body.
