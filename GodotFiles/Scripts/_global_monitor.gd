extends Node

@onready var mainMenuScene =  $"."
@onready var globalActiveContainer = null

func _ready():
	globalActiveContainer = mainMenuScene

func _process(delta):
#	if Input.is_action_just_pressed("Esc"):
#		globalActiveContainer.visible = false
#	else:
		pass
	
