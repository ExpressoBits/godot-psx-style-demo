extends Node

const DEFAULT_FOV := 24

@export var post_process_lcd : Material
@export var post_process_blur : Material
@export var post_process_dither_band : Material
@export var environment : Material


func _ready():
	set_fov(DEFAULT_FOV)


func set_fov(value: int):
	Engine.max_fps = value


func set_post_process(enabled: bool):
	post_process_lcd.set_shader_param("enabled", enabled)
	post_process_blur.set_shader_param("enabled", enabled)


func set_lcd_opacity(value: float):
	post_process_lcd.set_shader_param("lcd_opacity", value)


func set_lcd_scanline_gap(value: int):
	post_process_lcd.set_shader_param("scanline_gap", value)


func set_color_depth(value: int):
	post_process_dither_band.set_shader_param("col_depth", value)


func set_dither_banding(enabled: bool):
	post_process_dither_band.set_shader_param("dither_banding", enabled)


func set_fog_enabled(enabled: bool):
	environment.set_fog_enabled(enabled)


func set_fog_color(color: Color):
	environment.set_fog_color(color)


func set_fog_depth_begin(value: float):
	environment.set_fog_depth_begin(value)


func set_fog_depth_end(value: float):
	environment.set_fog_depth_end(value)


func set_ambient_light_color(color: Color):
	environment.set_ambient_light_color(color)


func set_ambient_energy(value: float):
	environment.set_ambient_light_energy(value)
