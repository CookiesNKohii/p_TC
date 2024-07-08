extends Control

@onready var savingFile = true
@onready var loadingFile = null
@onready var saveFiles = null
@onready var settingsContainer = $SettingsContainer
@onready var saveFileContainer = $SaveFilesContainer
@onready var mainMenuContainer = $MainMenuContainer

@onready var activeContainer = mainMenuContainer


func _ready():
	print(str(GlobalMonitor.globalActiveContainer))
	

func _process(delta):
	if Input.is_action_just_pressed("Esc"):
		GlobalMonitor.globalActiveContainer.visible = !GlobalMonitor.globalActiveContainer.visible
		activeContainer = mainMenuContainer 
		activeContainer.visible = true
	else:
		pass

func _on_new_game_pressed(): #when pressed, will make Menu Margin invisible and save files Container visible - funcSAVING == true, funcLOADING == false
	print("New Game")
	activeContainer.visible = !activeContainer.visible
	savingFile = true
	loadingFile = false
	GlobalMonitor.globalActiveContainer = saveFileContainer
	GlobalMonitor.globalActiveContainer.visible = true



func _on_load_game_pressed(): #when pressed, will make Menu Margin invisible and save files Container visible - funcSAVING == false, funcLOADING == true
	print("Load Game")
	activeContainer.visible = !activeContainer.visible
	savingFile = false
	loadingFile = true
	activeContainer = saveFileContainer
	if saveFiles == null:
		savingFile = true
		loadingFile = false
		print("Error: No save files available. Press 'New Game' to create a new save")
		activeContainer.visible = true
	else:
		pass



func _on_settings_pressed(): #when pressed, will make Menu Container invisible and settings Container visible
	print("Settings")
	activeContainer = settingsContainer



func _on_quit_pressed(): #when pressed, .exe stops
	get_tree().quit()

#Save Point system Code



func _on_slot_1_pressed():
	get_tree().change_scene_to_file("res://CoreScenes/9999. greybox_scene.tscn")
