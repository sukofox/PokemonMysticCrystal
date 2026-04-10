object_const_def
const SPRUCEPOKECENTER_NURSE

SprucePokecenter_MapScripts:
	def_scene_scripts
    scene_script SprucePokecenterNoopScene ; unusable

	def_callbacks

SprucePokecenterNoopScene:
	end

SprucePokecenterNurseScript:
	jumpstd PokecenterNurseScript

SprucePokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SPRUCE_CITY, 3
    warp_event  4,  7, SPRUCE_CITY, 3
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SprucePokecenterNurseScript, -1
