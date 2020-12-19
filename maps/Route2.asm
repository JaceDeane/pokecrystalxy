	object_const_def
	const ROUTE2_YOUNGSTER1
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2
	const ROUTE2_POKE_BALL3
	const ROUTE2_POKE_BALL4
	const ROUTE2_FRUIT_TREE

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText
	
Route2Sign2:
	jumptext Route2Sign2Text

Route2DireHit:
	itemball DIRE_HIT

Route2MaxPotion:
	itemball MAX_POTION

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXER

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

Route2HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

Route2HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

Route2HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE

Route2HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE

BugCatcherDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"
	done

BugCatcherDougBeatenText:
	text "No good!"
	done

BugCatcherDougAfterBattleText:
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

	def_bg_events
	bg_event 11, 25, BGEVENT_READ, Route2Sign
	bg_event 11,  5, BGEVENT_READ, Route2Sign2
	bg_event  3, 20, BGEVENT_ITEM, Route2HiddenMaxEther
	bg_event  3, 18, BGEVENT_ITEM, Route2HiddenFullHeal
	bg_event  3, 19, BGEVENT_ITEM, Route2HiddenFullRestore
	bg_event  3, 21, BGEVENT_ITEM, Route2HiddenRevive

	def_object_events
	object_event  7,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1
	object_event 15, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2DireHit, EVENT_ROUTE_2_DIRE_HIT
	object_event  4, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event 13,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event 14, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
	object_event 13, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
