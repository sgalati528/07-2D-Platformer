extends Node

onready var lives = get_node("/root/Global").lives
onready var score = get_node("/root/Global").score

func change_health(h):
	lives += h
	emit_signal("health_changed")
	if lives <= 0:
		$Player.die()

func change_score(s):
	score += s
	emit_signal("score_changed")
	
func _ready():
	$Music.playing = true


func _on_Save_pressed():
	get_node("/root/Global").save_data()

func _on_Load_pressed():
	get_node("/root/Global").load_data()


