extends Node2D

var score = 0
var lives = 3

var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)

func save_data():
	config.set_value("Save","score",score)
	config.set_value("Save","lives",lives)
	config.save(save_path)
	print (score, lives)

func load_data():
	score = config.get_value("Save","score")
	lives = config.get_value("Save","lives")
	print (score, lives)
