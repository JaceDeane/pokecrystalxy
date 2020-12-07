	object_const_def

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

Route1Sign:
	jumptext Route1SignText

Route1SignText:
	text "ROUTE 1"

	para "VANIVILLE TOWN -"
	line "AQUACORDE TOWN"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  1,  5, BGEVENT_READ, Route1Sign

	def_object_events
