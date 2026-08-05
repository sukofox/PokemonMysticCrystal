object_const_def
	; none yet

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, SILPH_CO_3F, 2
	warp_event  3,  2, SILPH_CO_5F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none yet