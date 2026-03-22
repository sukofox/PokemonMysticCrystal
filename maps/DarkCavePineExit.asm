object_const_def
; no constant now

DarkCavePineExit_MapScripts:
	def_scene_scripts

	def_callbacks

DarkCavePineExit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  5, PINE_TOWN, 2
    warp_event  7, 15, DARK_CAVE_VIOLET_ENTRANCE, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet