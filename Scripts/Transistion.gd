extends Node2D


func _ready():
	print(get_node("/root/Global").score)
	print(get_node("/root/Global").lives)


func _on_Button_pressed():
	get_node("/root/Global").save_data()
