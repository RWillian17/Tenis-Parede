extends Area2D

class_name Quadrado

@export var speedQy: int = 10
@export var speedQx: int = 1
@export var dirx: int = 1
@export var diry: int = 1

signal acabou

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var speedQy: int = randf_range(0, 200)
	#var speedQx: int = randf_range(00, 500)
	
	if dirx == 1: 
		position.x = position.x + delta * speedQx
	else:
		position.x = position.x - delta * speedQx
	
	if diry == 1:
		position.y = position.y + delta * speedQy
	else:
		position.y = position.y - delta * speedQy
	
	if position.y >= 400:
		queue_free()
		acabou.emit()
	
	if position.x <= 5:
		dirx = -dirx
	elif position.x >=590:
		dirx = -dirx
	if position.y <= 10:
		diry = -diry
		
	
