extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    $Label.text += '\nThis result is from addon "example": '
    var example_class_instance = ExampleDLL.new()
    $Label.text += 'gcd(18, 12) is %s' % example_class_instance.gcd(18, 12)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
