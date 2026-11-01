\version "2.24.0"

\header {
  title = "Her Style"
}

\language "deutsch"

global = {
  \clef treble
  \time 4/4
  \tempo 4 = 132
  \key d \major
  \override Score.VoltaBracket.color = #(x11-color 'Red)
  \override Score.VoltaBracket.thickness = #3.0
  \override Score.VoltaBracket.padding = #4.0
}

akkordeon = \relative c' {
  <fis a>4-.\f <fis a>4-. <e a>2 | d4-. d2( e4-.) | <fis a>4-. <fis a>4-. <e a>2 | d1 | <fis a>4-. <fis a>4-. <e a>2 | d4-. d2( e4-.) \break
  fis4-. fis-. e2 | d1 | \bar ".|:" a'8 a a a a-- a-. r4 | d8 d d d-> ~ d4 d | a8 a a a a4-- a-- | a1 | \break
  a8 a a a a-- a-. r4 | d8 d d d-> ~ d4 d | e8 e e e-> ~ e4 e | d1 | <fis, a>8 <fis a>8 <fis a>8 <e a>8-> ~ <e a>4 <e a>4 | d4-. d2-> e4 | \break
  <fis a>8 <fis a> <fis a> <e a>-> ~ <e a>4 <e a>|d1|<fis a>8 <fis a> <fis a> <e a>-> ~ <e a>4 <e a>|d4-. d2-> e4|fis8 fis fis e-> ~ e4 e4 | \break 
  d1 \bar ":|." d4-.\mf d2. | c8 c c c c4 r4 | d-. d2 d8 ( <e g> ~ | <e g>1 ) | \break 
  <fis a>4-. <fis a>2. | g8 g g g g4-- r4 | a4-. \< a2 <g c>8( <a d> ~ | <a d>2. ) \!\f r4 | \break
}

akkordeonBass = {
  \clef bass
  \key d \major
  d4-.\f d-. d-. d-. | d-. d-. d-. d-. | d-. d-. d-. d-. | d-. d-. g,( a,) | d d d d | d-. d-. d-. a,-. | \break
  g,4-. g,-. fis-. fis-. | e-. e2.-> | d4 r r d | d r8 d-> ~ d2 | d4 r4 r2 | a,4-. a,2.-> |  \break
  d4 r r d | d r8 d-> ~ d2 | cis4 r8 cis-> ~ cis2 | h,4-. h,2.-> | a,1 ~ | a,4 a,2.-> | \break
  a,1 | e2 g,4( a,) | d1 ~ | d4 d2.-> | g8 g g fis-> ~ fis4 fis4 | \break
  e4 e2.-> | d4-.\mf d-. d-. d-. | d8 d d d d4-- r4 |d4-. d-. d-. d-. | d8 d d d d2 | \break
  d4-. d-. d-. d-. | d8 d d d d4-- r4 | d4-. \< d-. d-. c8( d ~ | d2. ) \!\f r4 | \break
}

violin = \relative c'' {
  d4-.\f d-. cis2 | <g h>4-. <g h>2 ( <a cis>4-. ) | d4-. d4-. cis2 | <g h>1 | d'4-. d4-. cis2 | <g h>4-. <g h>2 ( <a cis>4-. ) | \break
  <h d>4-. <h d>4-. <a cis>2 | <g h>1 | d8 d d d e-- d-. r4 | g8 a h a-> ~ a4 g | d8 d d d e4-- fis-- | e1 | \break
  d8 d d d e-- d-. r4 | g8 a h a-> ~ a4 g | a8 h cis h-> ~ h4 a | g1 | d'8 d d cis-> ~ cis4 cis | <g h>-. <g h>2-> <a cis>4 | \break
  d8 d d cis-> ~ cis4 cis | <g h>1 | d'8 d d cis-> ~ cis4 cis | <g h>4-. <g h>2-> <a cis>4 | <h d>8 <h d>8 <h d>8 <a cis>-> ~ <a cis>4 <a cis>4 | \break
  <g h>1 | a4-.\mf a2. | g8 g g g g4-- e8( g) | a4-. a2 a8( c ~ | c1) | \break
  d4-. d2.| <c e>8 <c e>8 <c e>8 <c e>8 <c e>4-- c8( e) | <d fis>4-. \< <d fis>2 <e g>8( <fis a>8 ~ | <fis a>2.)\!\f r4 | \break 
}

clarinet = \relative c' {
  \key e \major
  e4-.\f e-. e-. e-.|e-. e-. e-. e-.|e-. e-. e-. e-.|e-. e-. a,( h)|e-. e-. e-. e-.|e-. e-. e-. h-.|\break
  a-. a-. gis'-. gis-. | fis-. fis2.-> | gis4 r r gis | a4 r8 a8-> ~ a2 | gis4 r r2 | fis4-. fis2.-> | \break
  gis4 r r gis  | a r8 a-> ~ a2 | fis4 r8 fis8-> ~ fis2 | a4-. a2.-> | h,1 ~ | h4 h2.-> | \break  
  h1 | fis'2 a,4( h)| e1 ~ | e4 e2.-> | a,8 a a gis'-> ~ gis4 gis | \break
  fis4 fis2.-> | gis4-.\mf gis-. gis-. gis-. | fis8 fis fis fis  fis4-- r4 | gis-. gis-. gis-. gis-. |fis8 fis fis fis fis2|\break
  gis4-. gis-. gis-. gis-. | fis8 fis fis fis  fis4-- r4 |gis-. \< gis-. gis-. fis8( gis ~ | gis2.)\!\f r4 | \break
}

sax = \relative c' {
	\key e \major
  e4-.\f e-. e-. e-.|e-. e-. e-. e-.|e-. e-. e-. e-.|e-. e-. a( h)|e,-. e-. e-. e-.|e-. e-. e-. h'-.|\break
  a-. a-. gis-. gis-. | fis-. fis2.-> | e4 r r e | e r8 e8-> ~ e2 | e4 r r2 | dis4-. dis2.-> | \break
  e4 r r e | e r8 e8-> ~ e2|  dis4 r8 dis8-> ~ dis2 | e4-. e2.-> | h1 ~ | h4 h2.-> | \break  
  h1 | fis'2 a4( h)| e,1 ~ | e4 e2.-> | a8 a a gis-> ~ gis4 gis | \break
  fis4 fis2.-> | e'4-.\mf e4-. e4-. e4-.| d8 d d d d4-- r4 |e4-. e4-. e4-. e4-.|d8 d d d d2|\break
  e4-. e4-. e4-. e4-.| d8 d d d d4-- r4 |e4-.\< e4-. e4-. d8( e ~ | e2.)\!\f r4 | \break
}


metronomMidi = {
  \time 4/4
  \tempo 4 = 132
  \repeat unfold 33 {
    \drummode {
      hiwoodblock4 hiwoodblock4 hiwoodblock4 hiwoodblock4
    }
  }
}

\score {
  <<
    
    \new PianoStaff \with {
      instrumentName = "Akk."
      shortInstrumentName = "Akk."
    } <<
      \new Staff {
	    \global
		\akkordeon 
		\bar ":|."
	  }
      \new Staff {
		\akkordeonBass 
	  }
    >>
	
    \new Staff \with {
      instrumentName = "Viol."
	  shortInstrumentName = "Viol."
    } {
		\global
		\violin 
	}
	
	\new Staff \with {
      instrumentName = #"Clar."
      shortInstrumentName = #"Clar."
    } {
	
	\clarinet
	}
	
	\new Staff \with {
      instrumentName = "Sax."
	  shortInstrumentName = "Sax."
    } {
		\sax 
	}
  >>
  \layout {
	indent = 2\cm       % Einzug der ersten Zeile
    short-indent = 2\cm % Einzug aller Folgesysteme (muss gleich sein!)
  }
}

\score {
  <<
    \new DrumStaff {
      \metronomMidi
    }

    \new Staff \with {
	  midiInstrument = #"accordion" 
	  midiMaximumVolume = #0.7
	  midiPanPosition = #-0.2
	} {
	  R1
      \akkordeon
    }

    \new Staff \with {
	  midiInstrument = #"accordion" 
	  midiMaximumVolume = #0.7
	  midiPanPosition = #-0.2
	} {
	  R1
      \akkordeonBass
    }

    \new Staff \with {
	  midiInstrument = #"violin"
	  midiMinimumVolume = #0.8
	  midiMaximumVolume = #1.0
	  midiPanPosition = #0.2
    } {
	  R1
      \violin
    }
	
	\new Staff \with {
      midiInstrument = #"clarinet" 
	  midiMinimumVolume = #0.8
	  midiMaximumVolume = #0.7
      midiPanPosition = #0.3
    } {
	
	\transposition b
	R1
	\clarinet
	}
	
	\new Staff \with {
	  midiInstrument = #"tenor sax" 
	  midiMaximumVolume = #0.6
      midiPanPosition = #0.2
    } {
		R1
		\transposition b
		\sax 
	}
  >>
  \midi { }
}