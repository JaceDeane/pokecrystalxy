	object_const_def

AquacordeTown_MapScripts:
	def_scene_scripts

	def_callbacks

AquacordeTownSign:
	jumptext AquacordeTownSignText

AquacordeTownSignText:
	text "AQUACORDE TOWN"
	done

AquacordeTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7, 13, BGEVENT_READ, AquacordeTownSign

	def_object_events
