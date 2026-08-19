object_const_def
const SPRUCEPOKECENTER_NURSE
const SPRUCEPOKECENTER_COOLTRAINER_M

SprucePokecenter_MapScripts:
	def_scene_scripts
    scene_script SprucePokecenterNoopScene ; unusable

	def_callbacks

SprucePokecenterNoopScene:
	end

SprucePokecenterNurseScript:
	jumpstd PokecenterNurseScript

SprucePokecenterCooltrainerMScript:
	jumptextfaceplayer SprucePokecenterCooltrainerMText

SprucePokecenterCooltrainerMText:
	text "My SMOOCHUM"
	line "likes to"
	cont "make snow"

	para "angels. It's"
	line "so adorable."
	done

SprucePokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SPRUCE_CITY, 3
    warp_event  4,  7, SPRUCE_CITY, 3
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SprucePokecenterNurseScript, -1
	object_event  7,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SprucePokecenterCooltrainerMScript, -1

