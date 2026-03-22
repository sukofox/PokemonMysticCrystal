object_const_def
; no constant now

DarkCavePineEntrance1_MapScripts:
	def_scene_scripts

	def_callbacks

DarkCavePineEntrance1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 9, 5, DARK_CAVE_BLACKTHORN_ENTRANCE, 3
    warp_event 7,  7, PINE_TOWN, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet