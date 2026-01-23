extends CharacterBody2D
@export var movmentSpeed = 400

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

func get_input():
	var input_diretion = Input.get_vector('Left', 'Right', 'w', 's')
	return input_diretion

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var inputVect = get_input()
	position += inputVect
	
	
