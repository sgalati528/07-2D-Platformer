extends Button


func _ready():
	pass


func _on_Load_pressed():
	get_node("/root/Global").load_data()
