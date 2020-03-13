extends Camera2D


func increase_score(s):
	$Score.score += int(s)
	find_node("Score").update_score()
	
#func decrease_lives():
#	$Health.livesSS -= 1
#	find_node("Lives").update_lives()
#	if $Heath.livesSS <= 0:
#		get_tree().change_scene("res://Scenes/End.tscn")
#
#
#func _on_Player_health_changed():
#	var h = get_node("/root/World/Player").health
#	$Health.text = "Health: " + str(h)
#
#
#func _on_Player_score_changed():
#	var s = get_node("/root/World/Player").score
#	$Score.text = "Score: " + str(s)
