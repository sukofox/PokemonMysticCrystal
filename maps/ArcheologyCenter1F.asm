object_const_def
	; none for now

ArcheologyCenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ArcheologyCenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 19, SAGUARO_CITY, 7
	warp_event 11, 19, SAGUARO_CITY, 7
    warp_event 17,  2, ARCHEOLOGY_CENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now