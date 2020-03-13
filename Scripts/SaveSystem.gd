extends Node2D
onready var health = 3
var score = 25

var save_path = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_path)

func _ready():
	pass

func saveValue_score(section, key):
	config.set_value(section, key, score)
	config.save(save_path)
	
func loadValue_score(section, key):
	score = config.get_value(section, key, score)

func saveValue_health(section, key):
	config.set_value(section, key, score)
	config.save(save_path)
	
func loadValue_health(section, key):
	health = config.get_value(section, key, health)
