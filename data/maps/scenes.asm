scene_var: MACRO
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	;scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	;scene_var TRADE_CENTER,                                wTradeCenterSceneID
	;scene_var COLOSSEUM,                                   wColosseumSceneID
	;scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
	;scene_var VANIVILLE_TOWN,                              wVanivilleTownSceneID
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	db -1 ; end
