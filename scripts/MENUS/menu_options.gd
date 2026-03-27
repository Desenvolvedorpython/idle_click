extends Node2D


func _on_sair_pressed() -> void:
	
	get_tree().paused = false
	queue_free()



func _on_h_slider_value_changed(value):
	cache.sensibilidade = value / 100.0
