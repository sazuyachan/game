extends Control


@onready var node_save_text := $VBoxContainer/Save/TextEdit
@onready var node_load_text := $VBoxContainer/Load/Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    $Label.text += '\nThis result is from addon "example": '
    var example_class_instance = ExampleLib.new()
    $Label.text += 'gcd(18, 12) is %s' % example_class_instance.gcd(18, 12)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
    pass


func _on_save_button_pressed() -> void:
    SaveData.save('test_save.dat', node_save_text.text)


func _on_load_button_pressed() -> void:
    self.node_load_text.text = SaveData.load('test_save.dat')
