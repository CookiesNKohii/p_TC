extends Node3D

@onready var player = null
@onready var playerHud = null
var enemyName = "Dummy"



# Called when the node enters the scene tree for the first time.
func _ready():
	player = $"../PlayerCharacter"
#	playerHud = player.activeHud


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(player, ";", playerHud)
	pass

func _on_area_3d_area_entered(body: Node3D):
	if body:
		print(body)
	
