object_const_def
	; none yet

SoulBasementB4F_MapScripts:
	def_scene_scripts

	def_callbacks

SoulBasementB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 15, 26, SOUL_BASEMENT_B3F, 2
    warp_event 16,  3, SOUL_BASEMENT_B5F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none yet