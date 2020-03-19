extends Node2D


onready var health = get_node("/root/Global").lives
onready var score = get_node("/root/Global").score


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/Global").load_data()
	health = 3
	score = 0
	print(get_node("/root/Global").score)
	print(get_node("/root/Global").lives)




func _on_Quit_pressed():
	pass # Replace with function body.


func _on_Play_Again_pressed():
	health = 3
	score = 0
	get_node("/root/Global").save_data()
	get_tree().change_scene("res://Scenes/World.tscn")
