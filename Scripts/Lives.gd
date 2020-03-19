extends Label


func _ready():
	update_lives()

func update_lives():
	text = "Lives: " + str(get_node("/root/Global").lives)

func decrease_lives():
	get_node("/root/Global").lives -= int(1)
	update_lives()
