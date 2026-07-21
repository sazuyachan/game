"""
When running in Godot Editor, data will be saved in Godot application directory but not project directory.
"""


extends Node

const SAVE_DIR := "save"  # 相对存档目录


func _ready() -> void:
    var save_path = self.get_save_path()
    if not DirAccess.dir_exists_absolute(save_path):
        var error := DirAccess.make_dir_recursive_absolute(save_path)
        if error != OK:
            push_error("Cannot create path: %s, please move the game directory to another location." % save_path)


func get_save_path() -> String:
    return OS.get_executable_path().get_base_dir().path_join(SAVE_DIR)


func save(file_name: String, data: String) -> bool:
    var file_path := get_save_path().path_join(file_name)
    var file := FileAccess.open(file_path, FileAccess.WRITE)

    if file == null:
        push_error("Cannot save file: %s, error: %s" % [file_path, FileAccess.get_open_error()])
        return false

    file.store_string(data)
    file.close()
    return true


func load(file_name: String) -> String:
    var file_path := get_save_path().path_join(file_name)
    if not FileAccess.file_exists(file_path):
        return ""
    var file := FileAccess.open(file_path, FileAccess.READ)

    if file == null:
        push_error("Cannot load file: %s, error: %s" % [file_path, FileAccess.get_open_error()])
        return ""

    var data := file.get_as_text()
    file.close()
    return data
