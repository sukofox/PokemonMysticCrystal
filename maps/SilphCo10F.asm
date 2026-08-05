object_const_def
	; none yet

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 16, SILPH_CO_9F, 2
	warp_event  2, 18, SILPH_CO_11F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none yet