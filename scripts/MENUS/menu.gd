extends Node2D

var menu_options = preload("res://cenas/menu_options.tscn")
var loja = preload("res://cenas/loja.tscn")
var jogo = preload("res://cenas/jogo.tscn")



## CAPTURAR A RESOLUCAO DA TELA DO JOGADOR PRA ADAPTAR ESSA DESGRAAAAAACA





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_opcoes_pressed() -> void:
	var _settings = menu_options.instantiate()
	
	add_child(_settings)
	
	get_tree().paused = false

func _on_entrarcomunidade_pressed() -> void:
	OS.shell_open("https://chat.whatsapp.com/KGrAJhUy5b8DryCjcXw8Ht?mode=gi_t")


func _on_comunidade_pressed() -> void:
	$ui/provisorio/COMUNIDADE/Control.visible = not $ui/provisorio/COMUNIDADE/Control.visible


func _on_loja_pressed() -> void:
	var _loja_instance = loja.instantiate()
	add_child(_loja_instance)


func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/jogo.tscn")
