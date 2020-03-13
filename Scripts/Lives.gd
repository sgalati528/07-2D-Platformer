extends Label

export var livesSS = 3

func _ready():
	update_lives()

func update_lives():
	text = "Lives: " + str(livesSS)

func decrease_lives():
	livesSS -= 1
	update_lives()
	if livesSS <= 0:
		get_tree().change_scene("res://Scenes/GameOver.tscn")
