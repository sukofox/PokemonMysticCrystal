; =============================
; New Bark Meadow map
; =============================

object_const_def
const NEW_BARK_MEADOW_SPRITES ; just a placeholder constant

; Map events & scripts
NewBarkMeadow_MapScripts:
    def_scene_scripts

    def_callbacks

NewBarkMeadow_MapEvents:
    db 0,0 ; filler

    def_warp_events
    warp_event 33, 0, ROUTE_29, 1
    def_coord_events

    def_bg_events
    
    def_object_events
    ; no object events yet