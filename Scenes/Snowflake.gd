extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")



func _on_Snowflake_body_entered(body: PhysicsBody2D) -> void:
	queue_free()
