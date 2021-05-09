tool
extends EditorPlugin


func _enter_tree():
	add_custom_type('RNG', 'Node', preload("RNGNode.gd"), preload("NodeImage.png"))


func _exit_tree():
	remove_custom_type('RNG')
