	object_const_def
	const VANIVILLETOWN_RIVAL
	const VANIVILLETOWN_SHAUNA1
	const VANIVILLETOWN_TEACHER
	const VANIVILLETOWN_FISHER
	const VANIVILLETOWN_BOY

VanivilleTown_MapScripts:
	def_scene_scripts
	scene_script .RivalIntro ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.RivalIntro:
	prioritysjump .MeetRivals
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_VANIVILLE
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

.MeetRivals:
	applymovement PLAYER, VanivilleTown_ExitDoor
	pause 5
	turnobject VANIVILLETOWN_SHAUNA1, UP
	turnobject VANIVILLETOWN_RIVAL, UP
	;playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, VANIVILLETOWN_RIVAL, 15
	opentext
	writetext Text_RivalIntro1
	waitbutton
	writetext Text_ShaunaIntro1
	waitbutton
	writetext Text_RivalIntro2
	waitbutton
	writetext Text_ShaunaIntro2
	waitbutton
	closetext
	pause 5
	setscene SCENE_FINISHED
	disappear VANIVILLETOWN_RIVAL
	disappear VANIVILLETOWN_SHAUNA1
	;special RestartMapMusic
	end
	
VanivilleTownGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_ReallyWantAMon
	waitbutton
	givepoke CHESPIN, 5, BERRY ; debug
	givepoke FENNEKIN, 5, BERRY ; debug
	givepoke FROAKIE, 5, BERRY ; debug
	setflag ENGINE_POKEDEX ; debug
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
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

VanivilleTown_ExitDoor:
	step DOWN
	step_end

Text_RivalIntro1:
	text "Welcome to"
	line "VANIVILLE TOWN!"
	
	para "My name's <RIVAL>."
	line "I'm your neighbor."
	done
	
Text_ShaunaIntro1:
	text "And I'm SHAUNA!"
	line "Great to meet you!"
	
	para "Guess what!"
	
	para "We've come to"
	line "get you!"
	done
	
Text_RivalIntro2:
	text "<RIVAL>: The est-"
	line "eemed PROF."
	cont "SYCAMORE lives"
	
	para "here in the"
	line "KALOS Region."
	
	para "I was told he"
	line "had a request for"
	cont "five kids,"
	cont "including us."
	
	para "But I'm a little"
	line "surprised he knows"
	cont "who you are."
	
	para "You did just move"
	line "to VANIVILLE,"
	cont "after all."
	done

Text_ShaunaIntro2:
	text "SHAUNA: We'll wait"
	line "for you in the"
	cont "next town over!"
	
	para "And you know"
	line "what?!"
	
	para "We're going to get…"
	line "a #MON!"
	
	para "C'mon! Hurry!"
	line "Let's go!"
	done

Text_SleepingRhyhorn:
	text "Grr… Groo…"
	done
	
Text_ReallyWantAMon:
	text "I reeeally want"
	line "a #MON!"
	
	para "Then I could go"
	line "wherever I want!"
	done
	
Text_YourMonIsAdorable:
	text "Is that a #MON?"
	line "I wish I had"
	cont "a #MON!"
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

VanivilleTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, PLAYERS_HOUSE_1F, 1
	warp_event 15,  5, RIVALS_HOUSE_1F, 1
	warp_event  1,  5, TIERNOS_HOUSE_1F, 1

	def_coord_events
	;coord_event 11,  6, SCENE_DEFAULT, VanivilleTown_TeacherStopsYouScene1
	;coord_event 11,  9, SCENE_DEFAULT, VanivilleTown_TeacherStopsYouScene2

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, VanivilleTownSign
	bg_event 10, 10, BGEVENT_READ, VanivilleTownPlayersHouseSign
	bg_event 14, 10, BGEVENT_READ, VanivilleTownElmsLabSign

	def_object_events
	object_event 12,  7, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_RIVAL_NEW_BARK_TOWN ; RIVAL
	object_event 11,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_RIVAL_NEW_BARK_TOWN ; SHAUNA
	;object_event 12, 7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1 ; SHAUNA POST-GAME
	object_event 13, 10, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VanivilleTownGirlScript, -1
	object_event  7, 13, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VanivilleTownHikerScript, -1
	object_event  2,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VanivilleTownBoyScript, -1
