extends Control



func _on_Button_pressed():
	get_tree().paused = false
	hide()



func _on_Quit_pressed():
	get_tree().quit()
