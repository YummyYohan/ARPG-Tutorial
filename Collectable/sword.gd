extends Collectable

@onready var animations = $AnimationPlayer

func collect():
	animations.play("Spin")
	await animations.animation_finished
	super()