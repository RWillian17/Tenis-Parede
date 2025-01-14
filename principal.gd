extends Node2D

var melhorPont: int = 0
var atualPont: int = 0

@export var deNovo: PackedScene

# Called when the node enters the scene tree for the first time.

@onready var label_melhor: Label = $Label_melhor
@onready var label_atual: Label = $Label_atual

func _ready() -> void:
	spawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_quadrado_acabou() -> void:
	#if left == 1 or right == 1:
	spawn()

func spawn() -> void:
	var jogar: Quadrado = deNovo.instantiate()
	jogar.acabou.connect(teste)
	jogar.name = "Quadrado"
	#jogar.acertou.connect(teste)
	jogar.speedQx = randf_range(-500, 500)
	jogar.speedQy = randf_range(50, 200)
	jogar.position.x = get_viewport_rect().size.x/2
	jogar.position.y = 16
	print("X = ",jogar.speedQx)
	print("Y = ",jogar.speedQy)
	add_child(jogar)
	
func teste() -> void:
	spawn()
	atualPont = 0
	label_atual.text = "Atual: " + str(atualPont)


func _on_paleta_area_entered(area: Area2D) -> void:
	var abc: Quadrado = get_child(4)
	abc.diry = -abc.diry
	abc.speedQx += randi_range(-100, 100)
	abc.speedQy += randi_range(-20, 100)
	print("asdadaws")
	atualPont += 1
	if melhorPont < atualPont:
		melhorPont = atualPont
		
	label_atual.text = "Atual: " + str(atualPont)
	label_melhor.text = "Melhor: " + str(melhorPont)
