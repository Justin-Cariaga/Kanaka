extends Button

export(String,FILE) var scene_path:=""
export(String) var node_path:=""
#use this to change scenes
func _on_SceneButton_button_up():
    get_tree().change_scene(scene_path)

#use this to show and hide tabs
func _on_TabButton_button_up():
    var tab = get_node(node_path)
    tab.visible = !tab.visible

#use this to exit the game
func _on_ExitButton_button_up():
    get_tree().quit()

#use this to pause the game
func _on_PauseButton_button_up():
    get_tree().change_scene(scene_path) #temporary

func _get_configuration_warning():
    if scene_path == "":
        return "Error: no scene set"
    elif node_path == "":
        return "Error: no tab set"
    else:
        return ""

