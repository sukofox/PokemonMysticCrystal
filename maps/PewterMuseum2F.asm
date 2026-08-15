object_const_def
const PEWTER_MUSEUM_2F_TEACHER
const PEWTER_MUSEUM_2F_PICHU

PewterMuseum2F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseum2FTeacherScript:
	jumptextfaceplayer PewterMuseum2FTeacherText

PewterMuseum2FPichuScript:
	faceplayer
	opentext
	writetext PewterMuseum2FPichuText
	cry PICHU
	waitbutton
	closetext
	end

AerodactylSign:
	jumptext AerodactylSignText

PewterMuseum2FTeacherText:
    text "This PICHU"
    line "was given to"
    cont "me by my dad."

    para "She is very"
    line "hyperactive!"
    done

PewterMuseum2FPichuText:
	text "Pichu: Pichu!"
	done

AerodactylSignText:
    text "A fossil of"
    line "a flying"
    cont "#MON."
    done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, PEWTER_MUSEUM_1F, 5

	def_coord_events

	def_bg_events
    bg_event  2,  5, BGEVENT_READ, AerodactylSign


	def_object_events
    object_event 11,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FTeacherScript, -1
	object_event 10,  3, SPRITE_PICHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FPichuScript, -1
