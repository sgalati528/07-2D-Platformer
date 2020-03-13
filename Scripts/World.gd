extends Node

export var health = 3
export var score = 0

func change_health(h):
	health += h
	emit_signal("health_changed")
	if health <= 0:
		$Player.die()

func change_score(s):
	score += s
	emit_signal("score_changed")
	
func _ready():
	get_node("/root/SaveSystem").saveValue_score("Values", "ValueOne")
	get_node("/root/SaveSystem").loadValue_score("Values", "ValueOne")
	get_node("/root/SaveSystem").saveValue_health("Values", "ValueOne")
	get_node("/root/SaveSystem").loadValue_health("Values", "ValueOne")
	
