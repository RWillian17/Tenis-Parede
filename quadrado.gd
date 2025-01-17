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
		self.position.x = self.position.x + delta * speedQx
	else:
		self.position.x = self.position.x - delta * speedQx
	
	if diry == 1:
		self.position.y = self.position.y + delta * speedQy
	else:
		self.position.y = self.position.y - delta * speedQy
	
	if self.position.y >= 400:
		queue_free()
		acabou.emit()
		set_process(false)
	
	if self.position.x <= 5:
		self.dirx = -self.dirx
	elif self.position.x >=590:
		self.dirx = -self.dirx
	if self.position.y <= 10:
		self.diry = -self.diry
		
	
