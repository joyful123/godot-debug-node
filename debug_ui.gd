extends CanvasLayer

@onready var fps_label: Label = $MarginContainer/VBoxContainer/FPSLabel
@onready var memory_label: Label = $MarginContainer/VBoxContainer/MemoryLabel
@onready var draw_calls_label: Label = $MarginContainer/VBoxContainer/DrawCallsLabel

func _process(_delta: float) -> void:
	fps_label.text = "FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))
	draw_calls_label.text = "Draw calls: " + str(Performance.get_monitor(Performance.RENDER_TOTAL_DRAW_CALLS_IN_FRAME))
	memory_label.text = "Memory: " + "%.2f" % (Performance.get_monitor(Performance.MEMORY_STATIC)/ (1024 * 1024)) + " MB"
