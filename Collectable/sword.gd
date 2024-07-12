extends Collectable

@onready var animations = $AnimationPlayer

func collect(inventory: Inventory):
	animations.play("Spin")
	await animations.animation_finished
	super(inventory)