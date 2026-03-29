extends Camera3D

@export var velocidade := cache.sensibilidade

func _unhandled_input(event):

	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):

		var mov = event.relative
		
		position.x -= mov.y * velocidade
		position.z += mov.x * velocidade


	if event is InputEventScreenDrag:

		var mov = event.relative
		
		position.x -= mov.y * velocidade
		position.z += mov.x * velocidade

func _on_hslider_value_changed(value):
	velocidade = value / 100.0

@onready var camera = $"."
@export var zoom_speed := 5.0
@export var zoom_min := 20.0
@export var zoom_max := 90.0


func zoom_in():
	
	camera.fov -= zoom_speed
	camera.fov = clamp(camera.fov, zoom_min, zoom_max)


func zoom_out():
	
	camera.fov += zoom_speed
	camera.fov = clamp(camera.fov, zoom_min, zoom_max)
