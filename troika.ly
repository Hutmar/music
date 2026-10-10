\version "2.24.0"

\language "deutsch"

\header {
  title = \markup { \bold "Troika" }
  subtitle = "Deigespann"
  composer = "Russland"
  arranger = "notiert v. H.D. Schotsch"
}

\paper {
  markup-system-spacing.basic-distance = #15
  ragged-last-bottom = ##f
}

\paper {
  page-count = #1
}

\layout {
  \context {
    \ChordNames
    % Macht die Akkorde etwas hübscher/standardisierter für Jazz
    \germanChords 
  }
}

akkords = \chordmode {
	a4:m e4 | a8:m e8 a4:m | a4:m e4 | a8:m e8 a4:m |
	g4 c4 | e4:7 a4:m | a2:m | e4:7 a4:m |
	a2:m | e2:7 | a2:m | e2:7 |
	a2:m | g2 | a4:m e4:7 | a8:m e8 a4:m | 	
}

mando_first = \relative c'' {
      a8. h16 c d e d | c8. d16 e8 c | a8. h16 c d e d | c8. h16  a h c a | \break
	  h4 c | gis a | a8 h c4 | e16 d c h c4 | \break
	}

mando_sec_a = \relative c'' {
	  \repeat tremolo 8 { a32 e'32 } | \repeat tremolo 8 { gis,32 d'32 } | \repeat tremolo 8 { a32 c32 } | e,16 fis gis a gis8 e | \break
	}
	
mando_sec_b = \relative c'' {
	  a8 e' a, e' | gis, d' gis, d' | a c a c | h4 e16 d c h | \break
	}
	
mando_third = \relative c'' {
	  a8-. h-. a gis16( a) | h8-. c-. h a16( h) | a h c d e8 d | c16 e d8 c4 |
	}
	
viol = \relative c'' {
      e8. d16  c8 h8 | a8 gis a e | e'8. d16  c8 h8 | a8 gis8 a4 | \break
	  g16 g'8 f16 f8 e8 | e,16 e'8 d16 d8 c8 | c16( h c) d \stemDown e8-. e,-. \stemNeutral | c'8 h8 a4 | \break
	  c8 c c h16( a) | h8 h h a16( gis) | a8 a a16 c( h a) | gis8-. e-. e4 | \break
	  c'8-. c-. c h16( c) | d8-. d-. d c16( d) | e8 a, c h | a8 gis a4 |
	}

bassnoten = \relative c'' {
	a4 e4 | a,8 h8 c4 | a'4 e4 | a,8 h c e | \break
	g,4 c | h a | e' a | e8 gis a4 | \break
	e8 a, e' a, | e' e, e' e, | e' c e c | e e, fis gis | \break
	a a e' e | g, g h h | c c e gis | a e a,4 |
}

\score {
<<  
  
  \new Staff \with {
      instrumentName = #"Clar1."
      shortInstrumentName = #"Clar1."
	  midiInstrument = "violin" 
      midiPanPosition = #-0.5
    } {
	
	\time 2/4
	\clef treble
	\tempo 4 = 84
	\key h \minor
	\transposition b
	
	\transpose a h { 
		\viol 
	}
	
    \bar ":|."
  }
  
   
  \new Staff \with {
      instrumentName = #"Clar."
      shortInstrumentName = #"Clar."
	  midiInstrument = "clarinet" 
      midiPanPosition = #1.0
    } {
	
	\time 2/4
	\clef treble
	\tempo 4 = 84
	\key h \minor
	\transposition b
	\transpose a h { 
		\mando_first
		\mando_sec_b
		\mando_third
	}
  }
  
  \new Staff \with {
      instrumentName = #"T.Sx"
      shortInstrumentName = #"T.Sx."
	  midiInstrument = "tenor sax" 
      midiPanPosition = #-1.0
    } {
	
	\clef "treble_8"
	\time 2/4
	\tempo 4 = 84
	\key h \minor
	\transposition b
	
	\transpose a h { 
		\bassnoten 
	}
  }
 >>
  
  \layout { 
    indent = 0\mm % Verhindert das Einrücken der ersten Zeile
  }
  
  \midi {
    \context {
      \Score
      % Hier wird das Tempo für das gesamte Stück (alle Stimmen) gesetzt
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}