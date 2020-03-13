extends Label

export var scoreE = 0

func _ready(): 
	update_score()

func update_score():
	text = "Score: " + str(scoreE)
	

func increase_score(s):
	scoreE += int(s)
	
	update_score()

