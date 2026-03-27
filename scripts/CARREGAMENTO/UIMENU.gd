extends ColorRect

var base_hd: Vector2 = Vector2(720, 1600)
var base_fhd: Vector2 = Vector2(1080, 2400)
var base_qhd: Vector2 = Vector2(1440, 3200)

func _ready():

	position = Vector2.ZERO
	pivot_offset = Vector2.ZERO

	var tela = Vector2i(20000,766) #Vector2 = DisplayServer.window_get_size()

	var base_escolhida: Vector2

	# escolhe a resolução mais próxima pela largura
	if tela.x <= 900:
		base_escolhida = base_hd
	elif tela.x <= 1260:
		base_escolhida = base_fhd
	else:
		base_escolhida = base_qhd

	# calcula escala baseada na resolução escolhida
	var escala_x: float = tela.x / base_escolhida.x
	var escala_y: float = tela.y / base_escolhida.y

	scale = Vector2(escala_x, escala_y)

	print("Tela:", tela)
	print("Base usada:", base_escolhida)
	print("Escala:", scale)
