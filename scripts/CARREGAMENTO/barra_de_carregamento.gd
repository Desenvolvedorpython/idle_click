extends Control

@onready var progress_bar = $ProgressBar

var scene_path = "res://cenas/menu.tscn"
var progress := []



# CAPTURAR A RESOLUCAO DA TELA DO JOGADOR PRA ADAPTAR ESSA DESGRAAAAAACA

func _ready():
	
	ResourceLoader.load_threaded_request(scene_path)
	

func _process(_delta):

	var status = ResourceLoader.load_threaded_get_status(scene_path, progress)

	if progress.size() > 0:
		var percent = progress[0] * 100
		progress_bar.value = percent

	if status == ResourceLoader.THREAD_LOAD_LOADED:
		var scene = ResourceLoader.load_threaded_get(scene_path)
		get_tree().change_scene_to_packed(scene)
