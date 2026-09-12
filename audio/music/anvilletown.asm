Music_AnvilleTown:
	channel_count 3
	channel 1, Music_AnvilleTown_Ch1
	channel 2, Music_AnvilleTown_Ch2
	channel 3, Music_AnvilleTown_Ch3

Music_AnvilleTown_Ch1:
	stereopanning $f
	tempo 175
	dutycycle $1
	tone $0001
	notetype $c, $73
	octave 3
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note F_, 2
.loop
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note E_, 2
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
	callchannel .sub
	note C_, 6
	dutycycle $0
	intensity $97
	note G_, 4
	note F#, 2
	note F_, 4
	note E_, 2
	note D#, 4
	note D_, 2
	note D_, 4
	note F_, 2
	note __, 6
	octave 2
	note D#, 4
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	note F#, 2
	octave 3
	note E_, 4
	note G_, 2
	note __, 6
	note C_, 4
	note D_, 2
	note A#, 4
	note A_, 2
	note G_, 16
	notetype $6, $97
	note __, 1
	note F#, 1
	note E_, 1
	note D#, 1
	notetype $c, $97
	note C_, 4
	note F#, 2
	octave 2
	note G_, 6
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	note A#, 2
	note A_, 6
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	note A#, 2
	callchannel .sub
	dutycycle $0
	intensity $97
	octave 2
	note A_, 2
	note G#, 2
	note A_, 2
	octave 3
	note G_, 4
	note F#, 2
	octave 2
	note F#, 2
	note F_, 2
	note F#, 2
	octave 3
	note D#, 4
	note E_, 2
	note D_, 4
	note F_, 2
	note __, 6
	octave 2
	note D#, 4
	note F_, 2
	octave 3
	note C#, 3
	notetype $6, $97
	note C_, 1
	octave 2
	note A#, 1
	note F#, 4
	octave 3
	note E_, 8
	note G_, 4
	note __, 12
	note C_, 8
	note D_, 4
	note A#, 8
	note A_, 4
	note F_, 4
	octave 2
	note A_, 4
	octave 3
	note A_, 4
	octave 4
	note A_, 4
	octave 2
	note __, 4
	note E_, 4
	octave 3
	note E_, 12
	note G_, 8
	note F_, 16
	note D_, 12
	note C_, 12
	octave 2
	note A#, 12
	notetype $c, $74
	dutycycle $1
	octave 3
	note D#, 2
	note D_, 2
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 2
	note D#, 1
	note D#, 1
	note F#, 4
	note F#, 1
	note F#, 1
	note F#, 4
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	note __, 1
	note G_, 1
	note B_, 1
	octave 3
.repeat
	note C_, 1
	loopchannel 7, .repeat
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note C_, 1
	note C_, 1
	note F_, 4
	note F_, 2
	note E_, 4
	note __, 2
	note E_, 4
	note __, 2
	note F_, 4
	note __, 2
	note F_, 4
	note __, 8
	note A_, 4
	note A_, 2
	dutycycle $1
	intensity $73
	jumpchannel .loop

.sub
	intensity $74
	dutycycle $1
	octave 3
	note G_, 6
	note D_, 4
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note F#, 4
	note F#, 2
	octave 4
	note F_, 2
	octave 3
	note D_, 2
	note G_, 2
	note A#, 4
	octave 4
	note G_, 4
	octave 3
	note E_, 2
	note G_, 2
	note E_, 4
	note E_, 2
	octave 4
	note A_, 4
	octave 3
	note C_, 1
	note A_, 1
	octave 4
	note G_, 4
	note D_, 4
	octave 3
	note F_, 2
	note A#, 2
	note C#, 4
	note G#, 2
	endchannel

Music_AnvilleTown_Ch2:
	tone $0001
	dutycycle 2
	stereopanning $f0
	notetype $c, $73
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note A#, 2
.loop
	note __, 1
	octave 6
	note C_, 2
	octave 5
	note G#, 2
	note E_, 2
	note C_, 2
	octave 4
	note G#, 3
	octave 1
	dutycycle $2
	intensity $96
	note F_, 4
	note C_, 2
	note __, 6
	note D_, 4
	note D_, 2
	note __, 6
	octave 1
	note G_, 4
	note D_, 2
	note __, 6
	octave 2
	note C_, 4
	octave 1
	note C_, 2
	note __, 6
	note F_, 4
	note F_, 2
	note __, 6
	note A#, 4
	note C#, 2
	note __, 4
	note D_, 2
	note E_, 6
	note A_, 6
	note D_, 6
	note F#, 4
	note A_, 2
	note G_, 4
	note D_, 2
	note __, 6
	note A#, 4
	octave 2
	note F_, 2
	note D#, 2
	note C#, 2
	octave 1
	note A#, 2
	note A_, 4
	octave 2
	note C_, 2
	note __, 6
	octave 1
	note D_, 4
	note D_, 2
	note A_, 4
	note G#, 2
	note G_, 12
	octave 2
	note C_, 6
	octave 1
	note C_, 6
	note A_, 6
	note G#, 6
	note G_, 6
	note F#, 6
	note F_, 4
	note F_, 2
	note __, 6
	note D_, 4
	note D_, 2
	note __, 6
	note G_, 4
	note D_, 2
	note __, 6
	octave 2
	note C_, 6
	octave 1
	note C_, 6
	note F_, 4
	note __, 2
	note F_, 6
	note A#, 4
	note __, 2
	note A#, 6
	note A_, 10
	note F#, 2
	note D_, 6
	note F#, 4
	note A_, 2
	note G_, 4
	note G_, 2
	note __, 6
	note A#, 4
	octave 2
	note F_, 2
	note D#, 2
	note C#, 2
	octave 1
	note A#, 2
	note A_, 4
	octave 2
	note C_, 2
	note __, 6
	octave 1
	note D_, 4
	note D_, 2
	note __, 6
	note G_, 4
	octave 2
	note D_, 2
	note __, 4
	octave 1
	note G_, 2
	octave 2
	note C_, 6
	note C_, 2
	octave 1
	note A#, 2
	note G_, 2
	note F_, 6
	note G_, 6
	note A_, 6
	note G_, 6
	note F_, 10
	note G#, 2
	note A#, 6
	note F_, 4
	note E_, 2
	note D#, 4
	note D#, 2
	note G_, 4
	note D#, 2
	note A#, 4
	note G_, 2
	octave 2
	note A#, 2
	note G_, 2
	note D#, 2
	note D_, 6
	octave 1
	note F_, 4
	note D_, 2
	note G_, 6
	note G_, 6
	note C_, 4
	note G_, 2
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	dutycycle 2
	intensity $73
	jumpchannel .loop

Music_AnvilleTown_Ch3:
	stereopanning $ff
	notetype $c, $25
	vibrato $16, $13
	octave 2
	note G_, 8
	intensity $35
	note G_, 4
.loop
	intensity $25
	note C_, 6
	octave 3
	note C#, 4
	octave 2
	note A#, 2
	intensity $13
	octave 5
	note C_, 10
	octave 6
	note C_, 1
	octave 5
	note F_, 1
	note A#, 4
	note A_, 2
	note __, 6
	octave 5
	note D_, 10
	callchannel .sub
	note C_, 8
	notetype $c, $13
	note G_, 6
	intensity $33
	note G_, 2
	note __, 2
	intensity $13
	note F_, 2
	note C_, 12
	intensity $23
	note C_, 6
	intensity $33
	note C_, 6
	intensity $13
	note D_, 8
	octave 5
	note D_, 2
	note F_, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	note __, 6
	octave 6
	note C_, 8
	octave 4
	note A_, 2
	octave 5
	note C_, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	notetype $6, $13
	note __, 3
	note B_, 1
	octave 6
	note C_, 4
	octave 5
	note A_, 12
	note __, 8
	octave 4
	note B_, 4
	octave 5
	note C_, 4
	note A_, 12
	note C_, 4
	note __, 4
	note E_, 16
	note D#, 12
	note D_, 12
	note E_, 12
	note C_, 4
	note D_, 4
	note E_, 4
	note F_, 3
	note B_, 1
	octave 6
	note C_, 4
	note __, 2
	octave 5
	note F_, 2
	note A#, 8
	note A_, 4
	note __, 12
	note D_, 4
	note E_, 4
	note F_, 4
	note G_, 8
	callchannel .sub
	note C_, 7
	intensity $13
	note F#, 1
	note G_, 8
	note A_, 4
	intensity $33
	note A_, 4
	notetype $c, $13
	note G_, 4
	note C_, 12
	intensity $23
	note C_, 6
	notetype $6, $33
	note C_, 11
	intensity $13
	note C#, 1
	note D_, 12
	intensity $33
	note D_, 4
	intensity $13
	octave 5
	note D_, 4
	note F_, 4
	octave 6
	note C_, 8
	octave 5
	note A#, 4
	intensity $33
	note A#, 4
	note __, 8
	intensity $13
	octave 6
	note C_, 16
	intensity $33
	note C_, 4
	intensity $13
	octave 4
	note A_, 2
	octave 5
	note C_, 2
	octave 6
	note C_, 8
	octave 5
	note A#, 4
	intensity $33
	note A#, 3
	intensity $13
	note B_, 1
	octave 6
	note C_, 4
	octave 5
	note A_, 16
	intensity $33
	note A_, 4
	intensity $13
	note __, 4
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note G#, 11
	note G_, 1
	notetype $c, $13
	note G#, 4
	note F_, 12
	intensity $23
	note F_, 6
	intensity $13
	note __, 10
	note A#, 1
	note B_, 1
	octave 6
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 2
	note G_, 4
	note A#, 1
	note F#, 5
	note D_, 2
	note F_, 3
	note __, 1
	note F_, 4
	note G_, 8
	intensity $23
	note G_, 4
	intensity $33
	note G_, 2
	notetype $6, $13
	note D_, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note G_, 4
	note A_, 8
	note C#, 4
	note D_, 4
	note F_, 4
	note E_, 10
	note F_, 1
	note E_, 1
	note D_, 7
	note F#, 1
	note G_, 16
	notetype $c, $23
	note G_, 6
	octave 2
	jumpchannel .loop

.sub
	notetype $6, $13
	octave 6
	note D_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 8
	octave 5
	note A#, 4
	note __, 8
	note A_, 2
	note A#, 2
	octave 6
	note C_, 16
	intensity $23
	endchannel
