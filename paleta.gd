extends Area2D

@export var speedP: int = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	self.position.x = self.position.x + speedP * Input.get_axis("left","right")
	
	if self.position.x <= 11:
		self.position.x = 11
	elif self.position.x >= get_viewport_rect().size.x - 11:
		self.position.x = get_viewport_rect().size.x - 11 
