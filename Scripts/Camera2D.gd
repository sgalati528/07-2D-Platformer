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

