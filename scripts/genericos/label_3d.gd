extends Label3D

# referencia o player ou a câmera
@onready var player = $"../../Camera3D"

func _process(_delta):
	if player:
		var target_pos = player.global_transform.origin
		target_pos.y = global_transform.origin.y
		look_at(target_pos, Vector3.UP)
		rotate_y(deg_to_rad(180))  # gira 180° pra frente do texto olhar certo
