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
	
	
	
#save for later 
#func SavePressed():
#	get_node("/root/SaveSystem").saveValue("Values", "ValueOne")

#func LoadPressed():
#	get_node("/root/SaveSystem").loadValue("Values", "ValueOne")
