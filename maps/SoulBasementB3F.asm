object_const_def
	; none yet

SoulBasementB3F_MapScripts:
	def_scene_scripts

	def_callbacks

SoulBasementB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3,  2, SOUL_BASEMENT_B2F, 3
    warp_event  2, 17, SOUL_BASEMENT_B4F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none yet