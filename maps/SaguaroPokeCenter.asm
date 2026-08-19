object_const_def
const SAGUAROPOKECENTER_NURSE
const SAGUARO_NPC_CENTER_COOLTRAINERF

SaguaroPokeCenter_MapScripts:
	def_scene_scripts
    scene_script SaguaroPokeCenterNoopScene ; unusable

	def_callbacks

SaguaroPokeCenterNoopScene:
	end

SaguaroPokeCenterNurseScript:
	jumpstd PokecenterNurseScript

SaguaroNPCCenterCooltrainerFScript:
    jumptextfaceplayer SaguaroNPCCenterCooltrainerFText

SaguaroNPCCenterCooltrainerFText:
	text "The desert made"
	line "my #MON"
	cont "very tired, so"

	para "I came to heal"
	line "them."
	done

SaguaroPokeCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAGUARO_CITY, 6
    warp_event  4,  7, SAGUARO_CITY, 6
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroPokeCenterNurseScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroNPCCenterCooltrainerFScript, -1

