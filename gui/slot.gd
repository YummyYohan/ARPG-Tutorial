extends Panel

@onready var backgroundSprite: Sprite2D = $background 
@onready var itemSprite: Sprite2D = $CenterContainer/Panel/item 
@onready var amountLabel: Label = $CenterContainer/Panel/Label

func update(slot: InventorySlot):
	if !slot.item:
		backgroundSprite.frame = 0 
		itemSprite.visible = false
		amountLabel.visible = false 
	else: 
		backgroundSprite.frame = 1
		itemSprite.visible = true
		itemSprite.texture = slot.item.texture
		amountLabel.visible = slot.amount > 1
		amountLabel.text = str(slot.amount)