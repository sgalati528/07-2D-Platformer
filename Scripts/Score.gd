extends Label


func _ready(): 
	update_score()

func update_score():
	text = "Score: " + str(get_node("/root/Global").score)
	

func increase_score(s):
	get_node("/root/Global").score += int(s)
	update_score()

