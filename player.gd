extends CharacterBody2D
@export var movmentSpeed = 400
var animatedSprite;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animatedSprite = $Player
	pass # Replace with function body.

func get_input():
	return Input.get_vector('Left', 'Right', 'w', 's')

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var inputVect = get_input()
	animatedSprite.animation(inputVect)
	move_and_collide(inputVect)
	if move_and_slide():
		# Play hit sound
		pass
	
