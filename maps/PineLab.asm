object_const_def
const PINELAB_SCIENTIST_KABUTO
const PINELAB_SCIENTIST1

PineLab_MapScripts:
	def_scene_scripts

	def_callbacks

GiftPokemonScientistScript:
	faceplayer
    checkevent EVENT_BEAT_BLACK_BELT_AKIRA
    iffalse .NeedToBeatAkira
    checkevent EVENT_GOT_PINE_KABUTO
    iftrue .AlreadyGotPineKabuto
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFullGift
	opentext
	writetext GiftPokemonScientistGiftText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext ReceivedGiftText
	promptbutton
	givepoke KABUTO, 35, BERRY
    setevent EVENT_GOT_PINE_KABUTO
	closetext
	end

.NeedToBeatAkira:
    opentext
    writetext NeedStrongTrainer
    waitbutton
    closetext
    end
	
.PartyFullGift:
	opentext
	writetext PartyFullGiftText
	waitbutton
	closetext
	end

.AlreadyGotPineKabuto:
	opentext
	writetext AlreadyGotPineKabutoText
	waitbutton
	closetext
	end

PineLabScientist1Script:
    jumptextfaceplayer PineLabScientist1Text

NeedStrongTrainer:
    text "When will someone"
    line "strong and caring"
    cont "come for this"

    para "#MON?"
    line "Some trainers"
    cont "abandoned it."
    done

PartyFullGiftText:
	text "I was going to"
	line "give you something"

	para "but your party"
	line "seems to be full."
	done

GiftPokemonScientistGiftText:
	text "I need a kind"
    line "trainer to"
    cont "take care of"

    para "KABUTO..."
    line "I am a busy"
    cont "person!"

    para "And I already"
    line "have too many"
    cont "#MON."
    done

ReceivedGiftText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlreadyGotPineKabutoText:
	text "Take good care of"
	line "that gift #MON!"
	done

PineLabScientist1Text:
    text "We have been"
    line "researching"
    cont "inside the"

    para "DARK CAVE."
    line "Some interesting"
    cont "#MON live there."
    done

PineLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 11, PINE_TOWN, 5
    warp_event  7, 11, PINE_TOWN, 5
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GiftPokemonScientistScript, -1
    object_event 10,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineLabScientist1Script, -1
