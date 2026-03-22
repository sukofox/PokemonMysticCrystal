object_const_def
const PINEPOKECENTER_NURSE

PinePokeCenter_MapScripts:
	def_scene_scripts
    scene_script PinePokeCenterNoopScene ; unusable

	def_callbacks

PinePokeCenterNoopScene:
	end

PinePokeCenterNurseScript:
	jumpstd PokecenterNurseScript

PinePokeCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, PINE_TOWN, 7
    warp_event  6,  7, PINE_TOWN, 7
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PinePokeCenterNurseScript, -1
