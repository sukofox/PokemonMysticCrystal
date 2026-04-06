object_const_def
	const ARCHEOLOGY_CENTER_SCIENTIST_OMANYTE

ArcheologyCenter3F_MapScripts:
	def_scene_scripts

	def_callbacks

FossilScientistScript:
	faceplayer
	checkevent EVENT_GOT_SAGUARO_OMANYTE
	iftrue .AlreadyGotGiftOmanyte
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFullGiftOmanyte
	opentext
	writetext FossilScientistText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext ReceivedGiftOmanyteText
	promptbutton
	givepoke OMANYTE, 20, BERRY
	setevent EVENT_GOT_SAGUARO_OMANYTE
	closetext
	end
	
.PartyFullGiftOmanyte:
	opentext
	writetext PartyFullGiftOmanyteText
	waitbutton
	closetext
	end

.AlreadyGotGiftOmanyte:
	opentext
	writetext AlreadyGotGiftOmanyteText
	waitbutton
	closetext
	end

PartyFullGiftOmanyteText:
	text "I was going to"
	line "give you something"
	cont "I found inside the"

	para "ruins, but your"
	line "party seems to"
	cont "be full."
	done

FossilScientistText:
	text "When digging deep"
	line "inside NIJOH"
	cont "RUINS, we found"

	para "a fossil, which"
	line "we revived. But"
	cont "I have too many"

	para "#MON, and I"
	line "can't take care"
	cont "of this one."
	done

ReceivedGiftOmanyteText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlreadyGotGiftOmanyteText:
	text "Take good care of"
	line "that fossil"
	cont "#MON!"
	done

ArcheologyCenter3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 14, ARCHEOLOGY_CENTER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event  9,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FossilScientistScript, -1
