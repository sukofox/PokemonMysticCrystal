object_const_def
	; none yet

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  2, SILPH_CO_8F, 2
	warp_event 16, 16, SILPH_CO_10F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none yet