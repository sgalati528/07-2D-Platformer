extends Button


func _ready():
	pass


func _on_Save_pressed():
	get_node("/root/Global").save_data()
