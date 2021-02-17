	object_const_def
	const ROUTE2_YOUNGSTER1
	const ROUTE2_FRUIT_TREE

Route2_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	def_callbacks

.DummyScene:
	end
	
Route2Fletchling:
	checkevent EVENT_EXPLODING_TRAP_22 ; EVENT_ROUTE_2_FLETCHLING
	iftrue NoRoute2Fletchling
	scall FletchlingEncounter
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_22 ; EVENT_ROUTE_2_FLETCHLING
	end

FletchlingEncounter:
	cry PIDGEY ; FLETCHLING
	setlasttalked -1
	; loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP ; makes the battle inescapable
	loadwildmon PIDGEY, 3 ; FLETCHLING, 3
	startbattle
	end

NoRoute2Fletchling:
	end
	
TrainerYoungsterAustin:
	trainer YOUNGSTER, AUSTIN, EVENT_BEAT_BUG_CATCHER_DOUG, YoungsterAustinSeenText, YoungsterAustinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAustinAfterBattleText
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText
	
Route2Sign2:
	jumptext Route2Sign2Text

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

YoungsterAustinSeenText:
	text "When two Trainers'"
	line "eyes meet, a"
	cont "#MON battle"
	cont "must begin!"
	done

YoungsterAustinBeatenText:
	text "You should've told"
	line "me you were"
	cont "THAT strong!"
	done

YoungsterAustinAfterBattleText:
	text "Time to get in"
	line "some practice with"

	para "the wild #MON"
	line "in the tall grass!"

	para "Oh! I'd better heal"
	line "up my #MON"
	cont "first!"
	done

Route2SignText:
	text "ROUTE 2"
	line "AVANCE TRAIL"

	para "AQUACORDE TOWN -"
	line "SANTALUNE CITY"
	done
	
Route2Sign2Text:
	text "SANTALUNE FOREST"
	line "AHEAD"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  2, SANTALUNE_FOREST, 1
	warp_event  9,  2, SANTALUNE_FOREST, 2

	def_coord_events
	coord_event  6, 31, SCENE_DEFAULT, Route2Fletchling
	coord_event  7, 31, SCENE_DEFAULT, Route2Fletchling
	coord_event  8, 31, SCENE_DEFAULT, Route2Fletchling
	coord_event  9, 31, SCENE_DEFAULT, Route2Fletchling
	coord_event 10, 31, SCENE_DEFAULT, Route2Fletchling
	coord_event 11, 31, SCENE_DEFAULT, Route2Fletchling

	def_bg_events
	bg_event 11, 25, BGEVENT_READ, Route2Sign
	bg_event 11,  5, BGEVENT_READ, Route2Sign2

	def_object_events
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterAustin, -1
	object_event 13, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
