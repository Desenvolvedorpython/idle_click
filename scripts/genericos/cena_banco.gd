extends Control

var loja = preload("res://cenas/loja.tscn")

func _on_agiota_pressed() -> void:
	$agiota.visible = true


func _on_fechar_pressed() -> void:
	$agiota.visible = false


func _on_voltar_pressed() -> void:
	queue_free()

#COLOCAR OS LABELS DE BANCO TUDO ORGGANIZADO AQUI ABAIXO

#func _process(_delta: float) -> void:
	#$dinheiro.text = str(cache.moedas)
	#$GEMAS.text = str(cache.gemas)
	#$SSCORE.text = str(cache.pontos)


func _on_comprar_pressed() -> void:
	var lojai = loja.instantiate()
	add_child(lojai)
	
