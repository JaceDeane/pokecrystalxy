;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0 (5-Dec-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.
; ============================================================================================================
;By JaceDeane - MIDI Credits to Latios212 on https://www.ninsheetmusic.org/browse/series/Pokemon

Music_KalosRoute1:
	musicheader 2, 1, Music_KalosRoute1_Ch1
	musicheader 1, 2, Music_KalosRoute1_Ch2

Music_KalosRoute1_Ch1:	
	notetype 12, $10
;Bar 1
	octave 2
	intensity $20
	note F_, 1
	note __, 3
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note A#, 3
	note __, 1
	note A#, 2
	octave 3
	note C_, 2
;Bar 2
	octave 2
	note F_, 3
	note __, 1
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 2
	octave 2
	note E_, 2
;Bar 3
	note F_, 3
	note __, 1
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note A#, 3
	note __, 1
	note F_, 3
	note __, 1
;Bar 4
	note F_, 3
	note __, 1
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note A#, 3
	note __, 1
	note F_, 2
	note E_, 2
;Bar 5
	note D_, 3
	note __, 1
	note A_, 3
	note __, 1
	note G_, 3
	note __, 1
	note D_, 2
	note G_, 2
;Bar 6
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note G_, 3
	note __, 1
	note C_, 3
	note __, 1
	note C_, 2
	note C_, 2
;Bar 7
	note A#, 1
	note __, 1
	note A#, 1
	note __, 5
	note F_, 1
	note __, 1
	note F_, 1
	note __, 5
;Bar 8
	octave 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 5
	octave 2
	note D_, 3
	note __, 1
	note A_, 3
	note __, 1
;Bar 9
	note A#, 3
	note __, 1
	note F_, 3
	note __, 1
	note A_, 3
	note __, 1
	note F_, 3
	note __, 1
;Bar 10
	note G_, 3
	note __, 1
	note D_, 3
	note __, 1
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note C_, 3
	note __, 1
;Bar 11
	note F_, 3
	note __, 1
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note A#, 3
	note __, 1
	note A_, 2
	note G_, 2
;Bar 12
	note F_, 3
	note __, 1
	octave 3
	note C_, 3
	note __, 1
	octave 2
	note A#, 3
	note __, 1
	note A_, 2
	octave 3
	note C_, 2
	loopchannel 0, Music_KalosRoute1_Ch1

Music_KalosRoute1_Ch2:
	tempo 180
	dutycycle $1
	notetype 12, $a7
;Bar 1
	intensity $a7
	note __, 2 ; WARNING: Auto-Sync says: Rounded down!
	octave 4
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	note __, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	octave 3
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note C_, 2
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note D_, 3
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $77
	note D_, 1
	note __, 1
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note D_, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 2
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
;Bar 2
	note __, 2
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	note __, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 2
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 1
	note __, 1
	intensity $77
	note G_, 1
	;note A#, 0 | WARNING: Rounded down to 0
	note G_, 1
	;note A#, 0 | WARNING: Rounded down to 0
	note G_, 1
	;note A#, 0 | WARNING: Rounded down to 0
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $77
	note A_, 1
	note __, 1
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 1
;Bar 3
	intensity $77
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 1
	note __, 1
	octave 4
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $77
	note C_, 1
	note __, 1
	octave 4
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $77
	note C_, 1
	octave 4
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 2
	octave 4
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note D_, 1
	note __, 1
	octave 4
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note D_, 3
	octave 4
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 1
	note __, 1
	octave 4
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 1
	note __, 1
;Bar 4
	intensity $77
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 3
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 1
	note __, 10
	octave 4
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
;Bar 5
	intensity $77
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	note __, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $77
	note F_, 1
	note __, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $77
	note F_, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 2
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 3
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	note __, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
;Bar 6
	intensity $77
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 3
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 1
	note __, 1
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note D_, 1
	note __, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 5
	note __, 2
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note D_, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 1
;Bar 7
	octave 3
	intensity $77
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note D_, 1
	note __, 1
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $77
	note D_, 1
	note __, 1
	octave 3
	intensity $67
	;note A#, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note D_, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 2
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	note __, 1
	octave 3
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $87
	note C_, 3
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	note __, 1
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	note __, 1
;Bar 8
	intensity $77
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 2
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 5
	note __, 2
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
;Bar 9
	intensity $77
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 1
	note __, 1
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 1
	note __, 1
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 2
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 1
	note __, 1
	octave 4
	intensity $67
	;note A_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 3
	octave 4
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	note __, 1
	intensity $67
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 1
	note __, 1
;Bar 10
	intensity $77
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	intensity $67
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 2
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	octave 5
	intensity $87
	note C_, 1
	note __, 1
	octave 4
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 3
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	note __, 1
	intensity $67
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 1
	note __, 1
;Bar 11
	octave 3
	intensity $77
	;note F_, 0 | WARNING: Rounded down to 0
	;note A_, 0 | WARNING: Rounded down to 0
	octave 4
	;note C_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F_, 2
	note __, 2
	octave 3
	intensity $77
	;note F_, 0 | WARNING: Rounded down to 0
	note A_, 2
	note __, 1
	;note G_, 0 | WARNING: Rounded down to 0
	note A#, 1
	note __, 1
	;note G_, 0 | WARNING: Rounded down to 0
	note A#, 3
	;note F_, 0 | WARNING: Rounded down to 0
	note A_, 1
	note __, 1
	;note E_, 0 | WARNING: Rounded down to 0
	note G_, 1
	note __, 1
;Bar 12
	;note F_, 0 | WARNING: Rounded down to 0
	note A_, 2
	note __, 2
	;note F_, 0 | WARNING: Rounded down to 0
	note A_, 2
	note __, 1
	;note G_, 0 | WARNING: Rounded down to 0
	note A#, 1
	note __, 1
	;note G_, 0 | WARNING: Rounded down to 0
	note A#, 1
	note __, 2
	;note F_, 0 | WARNING: Rounded down to 0
	note A_, 1
	note __, 1
	octave 4
	intensity $67
	;note F_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A_, 1
	intensity $67
	;note G_, 0 | WARNING: Rounded down to 0
	intensity $87
	note A#, 1
	loopchannel 0, Music_KalosRoute1_Ch2