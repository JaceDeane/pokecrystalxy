	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_FLETCHLING

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	sjump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovementDown
MeetMomScript:
	opentext
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	writetext EveningFromMom
	jump .MeetMomContinue
	
.morn
	writetext MorningFromMom
	jump .MeetMomContinue
	
.day
	writetext AfternoonFromMom
	jump .MeetMomContinue

.MeetMomContinue
	promptbutton
	writetext ElmsLookingForYouText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	;setflag ENGINE_PHONE_CARD
	;addcellnum PHONE_MOM
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	;writetext MomGivesPokegearText
	;promptbutton
	;special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .FinishPhone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek

.FinishPhone
	writetext ComeHomeForDSTText
	waitbutton
	special NameRival
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	sjump .FinishPhone2
	
.PlayerIsFemale
	variablesprite SPRITE_RIVAL, SPRITE_CHRIS
	special LoadUsedSpritesGFX
	sjump .FinishPhone2

.FinishPhone2
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromLeft
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromRight
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovementUp
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, UP
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PokegearName:
	db "a #GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_DEFAULT
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext NeighborsAreWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

FletchlingScript:
	faceplayer
	opentext
	writetext FletchlingText
	cry FLETCHLING
	waitbutton
	closetext
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

MomTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end
	
MomWalksToPlayerMovementDown:
	slow_step DOWN
	turn_head RIGHT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	turn_head UP
	step_end
	
MomWalksBackMovementUp:
	slow_step UP
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	turn_head UP
	step_end

MorningFromMom:
	text "Morning <PLAYER>!" ;needs to be time dependent
	done

AfternoonFromMom:
	text "Afternoon <PLAYER>!"
	done

EveningFromMom:
	text "Evening <PLAYER>!"
	done
	
ElmsLookingForYouText:
	text "You sure slept"
	line "well! All rested"
	cont "up from the move?"

	para "It's about time"
	line "you got going!"

	para "Why don't you step"
	line "out and say hello"
	cont "to the neighbors?"

	para "Oh! Your #MON"
	line "GEAR is back from"
	cont "the repair shop."

	para "Here you go!"
	done

MomGivesPokegearText:
	text "#MON GEAR, or"
	line "just #GEAR."

	para "It's essential if"
	line "you want to be a"
	cont "good trainer."

	para "Oh, the day of the"
	line "week isn't set."

	para "You mustn't forget"
	line "that!"
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

ComeHomeForDSTText:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time."

	; para "By the way, do you"
	; line "know how to use"
	; cont "the PHONE?"
	done

KnowTheInstructionsText:
	text "Don't you just"
	line "turn the #GEAR"

	para "on and select the"
	line "PHONE icon?"
	done

DontKnowTheInstructionsText:
	text "I'll read the"
	line "instructions."

	para "Turn the #GEAR"
	line "on and select the"
	cont "PHONE icon."
	done

InstructionsNextText:
	; text "Phone numbers are"
	; line "stored in memory."

	; para "Just choose a name"
	; line "you want to call."

	; para "Gee, isn't that"
	; line "convenient?"
	
	text "Why don't you step"
	line "out and say hello"
	cont "to the neighbors?"
	done

NeighborsAreWaitingText:
	text "The neighbors are"
	line "waiting for you."

	para "Hurry up, baby!"
	done

DontWakeRhyhornText:
	text "Don't wake RHYHORN,"
	line "okay?"
	done
	
SpokeToNeighborsText:
	text "Really?"
	
	para "The neighbor kids"
	line "invited you to"
	cont "the next town?"
	
	para "That's great!"
	line "I'm glad you were"
	
	para "able to make fri-"
	line "ends so quickly!"
	
	para "Okay! Have fun!"
	line "Stay out of"
	cont "trouble!"
	done
	
SoWhatWasProfElmsErrandText:
	text "So, what did the"
	line "neighbors want?"

	para "…"

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done
	
MomText1:
	text "My motto is go"
	line "for broke!"

	para "It means to risk"
	line "everything and try"
	cont "as hard as poss-"
	cont "ible!"
	done
	
MomText2:
	text "The connection"
	line "that I feel with"
	
	para "my RHYHORN during"
	line "a race…"

	para "I want you to feel"
	line "that kind of clo-"
	line "seness with your"
	cont "#MON as well."
	done
	
MomText3:
	text "A memory from when"
	line "I was a RHYHORN"
	cont "Racer?"

	para "There was a time"
	line "that I couldn't"
	
	para "stop at the finish"
	line "line."
	
	para "Your DAD was wait-"
	line "ing there, and I"
	cont "sent him flying…"
	done
	
MomText4:
	text "All right! You and"
	line "your #MON look"
	cont "raring to go!"
	done

FletchlingText:
	text "FLETCHLING: Cheerp"
	line "cheerp!"
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "CRUNCHY RHYHORN"
	line "COOKIES!"
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "tasty LEMONADE!"
	done

PlayersHouse1FTVText:
	text "It's a documentary"
	line "about a RHYHORN"

	para "that overcame an"
	line "injury to take on"

	para "a big race and the"
	line "girl who struggled"
	cont "alongside it."
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, VANIVILLE_TOWN, 1
	warp_event  5,  7, LUMIOSE_CITY_SOUTH, 1
	warp_event  9,  6, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  7,  6, SCENE_DEFAULT, MeetMomLeftScript
	coord_event  7,  7, SCENE_DEFAULT, MeetMomRightScript

	def_bg_events
	bg_event  2,  5, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  5, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  0,  5, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FTVScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  6,  6, SPRITE_GRACE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  1,  6, SPRITE_GRACE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  1,  6, SPRITE_GRACE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  1,  6, SPRITE_GRACE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  5,  3, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FletchlingScript, -1
