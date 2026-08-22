object_const_def
	; none yet

SoulBasementB5F_MapScripts:
	def_scene_scripts

	def_callbacks

SoulBasementB5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 13,  4, SOUL_BASEMENT_B4F, 2
    warp_event 10, 27, SOUL_BASEMENT_B6F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none yet