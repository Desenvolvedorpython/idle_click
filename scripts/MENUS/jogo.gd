extends Node3D

var cliques = 0   #a cada 3 pontos se gera 1 moeda

var loja = preload("res://cenas/loja.tscn")
var home = preload("res://cenas/menu.tscn")
var banco = preload("res://cenas/cena_banco.tscn")
@onready var audioP = $sons/Pontos
@onready var audioC = $sons/MConverter_euCoins


func _process(_delta: float) -> void:
	$hud2d/UI/pontos.text = "Score: " + str(cache.pontos)
	$hud2d/UI/moedas.text = "Coins: " + str(cache.moedas)



#butao de pc
func _on_butontapmouse_pressed() -> void:
	audioP.play()
	#print(cache.pontos)
	cache.pontos += 1
	cliques += 1
	if cliques == 3:
		cliques = 0
		#print("zerado")
		cache.moedas += 1
		audioC.play()
	else:
		return

func _on_loja_pressed() -> void:
	var _loja_instance = loja.instantiate()
	add_child(_loja_instance)


func _on_voltar_home_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menu.tscn")


func _on_banco_pressed() -> void:
	var bancoI = banco.instantiate()
	add_child(bancoI)
