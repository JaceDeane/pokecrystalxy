	object_const_def
	const VANIVILLETOWN_TEACHER
	const VANIVILLETOWN_FISHER
	const VANIVILLETOWN_SILVER

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
	;setflag ENGINE_FLYPOINT_VANIVILLE
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

VanivilleTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

VanivilleTownSilverScript:
	opentext
	writetext VanivilleTownRivalText1
	waitbutton
	closetext
	turnobject VANIVILLETOWN_SILVER, LEFT
	opentext
	writetext VanivilleTownRivalText2
	waitbutton
	closetext
	follow PLAYER, VANIVILLETOWN_SILVER
	applymovement PLAYER, VanivilleTown_SilverPushesYouAwayMovement
	stopfollow
	pause 5
	turnobject VANIVILLETOWN_SILVER, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, VanivilleTown_SilverShovesYouOutMovement
	applymovement VANIVILLETOWN_SILVER, VanivilleTown_SilverReturnsToTheShadowsMovement
	end

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

VanivilleTown_SilverPushesYouAwayMovement:
	turn_head UP
	step DOWN
	step_end

VanivilleTown_SilverShovesYouOutMovement:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

VanivilleTown_SilverReturnsToTheShadowsMovement:
	step RIGHT
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
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
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

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

VanivilleTownRivalText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"
	done

VanivilleTownRivalText2:
	text "…What are you"
	line "staring at?"
	done

VanivilleTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

VanivilleTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

VanivilleTownElmsLabSignText:
	text "ELM #MON LAB"
	done

VanivilleTownElmsHouseSignText:
	text "ELM'S HOUSE"
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
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VanivilleTownTeacherScript, -1
	object_event  7, 13, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VanivilleTownFisherScript, -1
	object_event  3,  6, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VanivilleTownSilverScript, EVENT_RIVAL_NEW_BARK_TOWN
