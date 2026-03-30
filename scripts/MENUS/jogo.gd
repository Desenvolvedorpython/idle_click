extends Node3D


var loja = preload("res://cenas/loja.tscn")
var home = preload("res://cenas/menu.tscn")
var banco = preload("res://cenas/cena_banco.tscn")
@onready var audioP = $sons/Pontos
@onready var audioC = $sons/MConverter_euCoins




func _on_loja_pressed() -> void:
	var _loja_instance = loja.instantiate()
	add_child(_loja_instance)


func _on_voltar_home_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menu.tscn")


func _on_banco_pressed() -> void:
	var bancoI = banco.instantiate()
	add_child(bancoI)


func _on_inventario_pressed() -> void:
	pass # Replace with function body.


func _on_fechar_pressed() -> void:
	$hud2d/CanvasLayer/UI/barra_INFERIOR.visible = false
	$hud2d/CanvasLayer/UI/fechar.visible = false
	$hud2d/CanvasLayer/UI/abrir.visible = true


func _on_abrir_pressed() -> void:
	$hud2d/CanvasLayer/UI/barra_INFERIOR.visible = true
	$hud2d/CanvasLayer/UI/fechar.visible = true
	$hud2d/CanvasLayer/UI/abrir.visible = false
