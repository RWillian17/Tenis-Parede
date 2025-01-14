extends Area2D

@export var speedP: int = 5
signal acertou

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.x = position.x + speedP * Input.get_axis("left","right")
	if position.x <= 11:
		position.x = 11
	elif position.x >= get_viewport_rect().size.x - 11:
		position.x = get_viewport_rect().size.x - 11 
