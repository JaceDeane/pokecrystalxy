	object_const_def
	const ROUTE2SANTALUNEFORESTGATE_OFFICER
	const ROUTE2SANTALUNEFORESTGATE_YOUNGSTER

Route2SantaluneForestGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2SantaluneForestGateOfficerScript:
	jumptextfaceplayer Route2SantaluneForestGateOfficerText

Route2SantaluneForestGateYoungsterScript:
	jumptextfaceplayer Route2SantaluneForestGateYoungsterText

Route2SantaluneForestGateOfficerText:
	text "You're going into"
	line "the forest?"

	para "It's a popular"
	line "place for young"
	cont "Trainers like"
	cont "yourself."
	done

Route2SantaluneForestGateYoungsterText:
	text "Different kinds of"
	line "#MON appear"
	cont "past here."

	para "If you want to"
	line "catch them all,"

	para "you have to look"
	line "everywhere."
	done

Route2SantaluneForestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SANTALUNE_FOREST, 1
	warp_event  5,  0, SANTALUNE_FOREST, 2
	warp_event  4,  7, ROUTE_2, 1
	warp_event  5,  7, ROUTE_2, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route2SantaluneForestGateOfficerScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route2SantaluneForestGateYoungsterScript, -1
