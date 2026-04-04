object_const_def
	; none for now

ArcheologyCenter2F_MapScripts:
	def_scene_scripts

	def_callbacks

ArcheologyCenter2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, ARCHEOLOGY_CENTER_1F, 3
	warp_event 17, 16, ARCHEOLOGY_CENTER_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now