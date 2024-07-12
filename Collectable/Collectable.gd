extends Area2D
class_name Collectable

@export var itemRes: inventoryItem
 
func collect(inventory: Inventory):
	inventory.insert(itemRes)
	queue_free()