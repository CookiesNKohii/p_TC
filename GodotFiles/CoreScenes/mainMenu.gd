extends Control


func _on_new_game_pressed(): #when pressed, will make Menu Margin invisible and save files Container visible - funcSAVING == true, funcLOADING == false
	pass # Replace with function body.



func _on_load_game_pressed(): #when pressed, will make Menu Margin invisible and save files Container visible - funcSAVING == false, funcLOADING == true
	pass # Replace with function body.




func _on_settings_pressed(): #when pressed, will make Menu Container invisible and settings Container visible
	pass # Replace with function body.




func _on_quit_pressed(): #when pressed, .exe stops
	get_tree().quit()
