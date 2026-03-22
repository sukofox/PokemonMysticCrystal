object_const_def
; none for now

AncientTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

AncientTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 25, PAGODA_OF_TIME_1F, 4
    warp_event  2,  3, ANCIENT_TUNNEL_2F, 1
   
	def_coord_events

	def_bg_events

	def_object_events
    ; None for now