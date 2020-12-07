	object_const_def
	const VANIVILLETOWN_TEACHER
	const VANIVILLETOWN_FISHER
	const VANIVILLETOWN_BOY

VanivilleTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_VANIVILLE
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

VanivilleTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

VanivilleTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement2
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

VanivilleTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

VanivilleTownHikerScript:
	jumptextfaceplayer Text_ScienceIsAmazing

VanivilleTownBoyScript:
	jumptextfaceplayer Text_LotsOfCoolTowns

VanivilleTownSign:
	jumptext VanivilleTownSignText

VanivilleTownPlayersHouseSign:
	jumptext VanivilleTownPlayersHouseSignText

VanivilleTownElmsLabSign:
	jumptext VanivilleTownElmsLabSignText

VanivilleTownElmsHouseSign:
	jumptext VanivilleTownElmsHouseSignText

VanivilleTown_TeacherRunsToYouMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

VanivilleTown_TeacherRunsToYouMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

VanivilleTown_TeacherBringsYouBackMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

VanivilleTown_TeacherBringsYouBackMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Is that a #MON?"
	line "I wish I had"
	cont "a #MON!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_ScienceIsAmazing:
	text "Science is"
	line "amazing!"

	para "Using comm. tech.,"
	line "you can play with"
	
	para "other players all"
	line "over the world!"
	done

Text_LotsOfCoolTowns:
	text "VANIVILLE TOWN is"
	line "pretty nice,"
	cont "right?"

	para "The KALOS Region"
	line "has lots of cool"
	cont "towns!"
	
	para "I want to see"
	line "them all when I"
	cont "get big!"
	done

VanivilleTownSignText:
	text "VANIVILLE TOWN"

	para "A Town Whose"
	line "Flower Is About"
	cont "to Bloom"
	done

VanivilleTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

VanivilleTownElmsLabSignText:
	text "<RIVAL>'s House"
	done

VanivilleTownElmsHouseSignText:
	text "TIERNO's House"
	done

VanivilleTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, PLAYERS_HOUSE_1F, 1
	;warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	;warp_event 11, 13, ELMS_HOUSE, 1

	def_coord_events
	coord_event  1,  8, SCENE_DEFAULT, VanivilleTown_TeacherStopsYouScene1
	coord_event  1,  9, SCENE_DEFAULT, VanivilleTown_TeacherStopsYouScene2

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, VanivilleTownSign
	bg_event 10, 10, BGEVENT_READ, VanivilleTownPlayersHouseSign
	bg_event 14, 10, BGEVENT_READ, VanivilleTownElmsLabSign
	bg_event  0, 10, BGEVENT_READ, VanivilleTownElmsHouseSign

	def_object_events
	object_event 13, 10, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VanivilleTownTeacherScript, -1
	object_event  7, 13, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VanivilleTownHikerScript, -1
	object_event  2,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VanivilleTownBoyScript, EVENT_RIVAL_NEW_BARK_TOWN
