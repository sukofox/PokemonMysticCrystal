	object_const_def
	; none yet

SoulBasementB2F_MapScripts:
	def_scene_scripts

	def_callbacks

SoulBasementB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 17, 16, SOUL_BASEMENT_B1F, 2
    warp_event  3, 16, SOUL_BASEMENT_B1F, 3
    warp_event  8,  3, SOUL_BASEMENT_B3F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none yet