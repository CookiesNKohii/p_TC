extends Control

@onready var maxHealth = 100
@onready var curHealth = maxHealth
@onready var damageDictionary = [ 
	{"name" : "Leaper", "damage" : 10},
	{"name" : "Ground Hog", "damage" : 10},
	{"name" : "Jester", "damage" : 10},
	{"name" : "Weeping Angel", "damage" : 10},
	{"name" : "Dummy", "damage" : 15} 
	]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func damaged(enemy):
	for i in damageDictionary:
		if i == enemy:
			print(i, ";", enemy)
			#print("Hit by: ", enemy)
			#curHealth -= 
			#healthBarValue = health
		else:
			pass
			
