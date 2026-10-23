\version "2.24.0"

\header {
  title = "Balkan-Tanz"
  composer = "Alexander Jekic"
  subtitle = "Akkordeon mit zusätzlichem Kontrabass"
}

\language "deutsch"

akkordeon = \relative c' {
  c4 c c8 d es f | es4 d d2 | d4 d d8 es f g | f4 es es2 | \break
  e4 e e8 f g e | g4 f f2  | es4 c8 d es4 d8 c | d2. r4 | \break
  g4 g g d8 es | f4 f f c8 d | es4 es es  d8 c | d2 g | \break
  g4 g g d8 es | f4 f f c8 d | es4 d8 c d4 es8 d| c2 c4 r4 | \break    
}

akkordeonBass = {
  \clef bass
  \time 4/4
  <c c'>4_\markup \center-column { "cm" "C" }  <c c'>4_\markup \center-column { "cm" "C" } r2 | 
  <f, f>4_\markup \center-column { "fm" "F" } <f, f>_\markup \center-column { "fm" "F" } r2 | 
  <g, g>4_\markup \center-column { "g" "G" } <g, g>_\markup \center-column { "g" "G" } r2 |
  <c c'>4_\markup \center-column { "cm" "C" }  <c c'>_\markup \center-column { "cm" "C" } r2  | \break
  <c c'>4_\markup \center-column { "c" "C" }  <c c'>_\markup \center-column { "c" "C" } r2 |
  <f, f>4_\markup \center-column { "fm" "F" } <f, f>_\markup \center-column { "fm" "F" } r2 |
  <c c'>4_\markup \center-column { "cm" "C" } r4 <f, f>_\markup \center-column { "fm" "F" } r4 |
  <g, g>4_\markup \center-column { "g" "G" } <g, g>4_\markup \center-column { "g" "G" } <g, g>4_\markup \center-column { "g" "G" } r4 | \break
  \repeat unfold 4 { c8_\markup \center-column { "C" } c'8_\markup \center-column { "cm" } } | 
  \repeat unfold 4 { f,8_\markup \center-column { "F" } f8_\markup \center-column { "fm" } } | 
  \repeat unfold 4 { c8_\markup \center-column { "C" } c'8_\markup \center-column { "cm" } } | 
  \repeat unfold 4 { g,8_\markup \center-column { "G" } g8_\markup \center-column { "g" } } | \break
  \repeat unfold 4 { c8_\markup \center-column { "C" } c'8_\markup \center-column { "cm" } } | 
  \repeat unfold 4 { f,8_\markup \center-column { "F" } f8_\markup \center-column { "fm" } } | 
  \repeat unfold 4 { c8_\markup \center-column { "C" } c'8_\markup \center-column { "cm" } } | 
  \repeat unfold 2 { c8_\markup \center-column { "C" } c'8_\markup \center-column { "cm" } }  
  <c c'>4_\markup \center-column { "cm" "C" }  r4 | \break
}

kontrabass = {
  c8 r8 e8 r8 g,4 c8 d8 | f4 c4 f4 g4  |g,8 r8 d8 r8 g,4 c8 d8 | c4 g4 c4 es4  | \break
  c8 r8 c8 r8 g,4 c8 d8 | f4 c4 f4 g4  |c8 r8 e8 r8 f,4 c8 g,8 | g,4 d4 g4 r4  | \break
  c8 c c c c c es es | f f f f f f as as  |c8 c c c c c es es | g g g g d d d d  | \break
  c8 c c c c c es es | f f f f f f as as  |c8 c c c es es es es | g,4 r8 d8 c4 r4  | \break
}

clarinette = {
	R1*16
}

sax = {
	R1*16
}

global = {
  \clef treble
  \time 4/4
  \tempo 4 = 110
}

\score {
  <<
    
    \new PianoStaff \with {
      instrumentName = "Akkordeon"
      shortInstrumentName = "Akkordeon"
	  midiInstrument = #"accordion" 
	  midiMaximumVolume = #1.0
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
      instrumentName = "Kontrabass"
	  shortInstrumentName = "Kontrabass"
	  midiInstrument = #"contrabass" 
	  midiMinimumVolume = #0.8
	  midiMaximumVolume = #1.0
    } { 
		\clef bass
		\kontrabass 
	}
	
	\new Staff \with {
      instrumentName = #"Clarinette"
      shortInstrumentName = #"Clarinette"
	  midiInstrument = "clarinet" 
      midiPanPosition = #0.0
    } {
	
	\transpose c d {
		\transposition b
		\global
		\akkordeon
	}
  }
	
	\new Staff \with {
      instrumentName = "Sax"
	  shortInstrumentName = "Sax"
    } { 
		\global
		\sax 
	}
  >>
  \layout {
	indent = 2\cm       % Einzug der ersten Zeile
    short-indent = 2\cm % Einzug aller Folgesysteme (muss gleich sein!)
  }
  
  \midi {
    \context {
      \Score
      % Hier wird das Tempo für das gesamte Stück (alle Stimmen) gesetzt
      % tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}