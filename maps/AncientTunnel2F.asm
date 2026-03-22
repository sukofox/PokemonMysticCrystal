object_const_def
; none for now

AncientTunnel2F_MapScripts:
	def_scene_scripts

	def_callbacks

AncientTunnel2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, ANCIENT_TUNNEL_1F, 2
    warp_event 17,  5, RUINS_OF_ALPH_OUTSIDE, 12
   
	def_coord_events

	def_bg_events

	def_object_events
    ; None for now