extends Control

@onready var quitConfirm = $quitConfirm

func _ready():
	quitConfirm.visible = false

func _process(delta):
	pass


func _on_resume_pressed():
	pass # Replace with function body.



func _on_settings_pressed():
	pass # Replace with function body.


func _on_quit_to_main_menu_pressed():
	quitConfirm.visible = !quitConfirm.visible
	print(str(quitConfirm.visible))
	

func _on_yes_pressed():
	get_tree().change_scene_to_file("res://CoreScenes/0.0.  mainMenu.tscn")
	

func _on_no_pressed():
	quitConfirm.visible = false
	pass # Replace with function body.
