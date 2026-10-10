\version "2.24.0"

\language "deutsch"

\header {
  title = \markup { \bold "Fiesta" }
  composer = "Hans-Günther Kölz"
}

\paper {
  markup-system-spacing.basic-distance = #15
  ragged-last-bottom = ##f
}

\paper {
 % page-count = #2
}

\layout {
  \context {
    \ChordNames
    % Macht die Akkorde etwas hübscher/standardisierter für Jazz
    \germanChords 
  }
}

akkords = \chordmode {
	
}

akk_one = \relative c'' {
    \repeat volta 2 { g4.\mf h8-> ~ h4 g-. | c8( h a) h-> ~ h2 | g4. h8-> ~ h4 g-. | a8( g fis) g-> ~ g2 | } \break
	\repeat volta 2 { e4\f g h g | a8-> a4-> h8-> ~ h2 | e,4\p g h g | a8-> a4-> g8-> ~ g2 | } \break
	
	\repeat volta 2 { g2.\f f8 g | b( g f) g-> ~ g2 | R1 | R1 |  \break
	g4.\mf g8 g4 g | g4. g8 g4 g | 
    \alternative {
	{ g4.\mf g8 g4 g | g4. g8 g4 g | \break }
	{ g4.->\f g8-> g4 -> f8 g8 | a8->( g f) g-.-> r2}
	}
	}
	\once \override Staff.BarLine.color = #(x11-color 'DarkRed)
	\bar "||"
	e4\f g h g | a8-> a4-> h8-> ~ h2 | \break
	
	e,4\p g h g | a8-> a4-> g8-> ~ g2 | e4\f g h g | a8-> a4-> h8-> ~ h2 | \break
	e,4\p g h g | a8-> a4-> g8-> ~ g2 | g4.\mf h8-> ~ h4 g-. | c8( h a h->) ~ h2 | g4. h8-> ~ h4 g-. | \break
	a8 g fis g-> ~ g2 | g4.\f h8-> ~ h4 g-. | c8( h a) h-> ~ h2 | g4. h8-> ~ h4 g-. | a8->\ff( g fis) g-^ r2 | \break
}

akk_two = \relative c'' {
	\repeat volta 2 { d,4.\mf g8-> ~ g4 d-. | a'4. g8-> ~ g2 | d4. g8-> ~ g4 d-. | a'8( g fis) g-> ~ g2 | } \break
	\repeat volta 2 { g4.\f g8 g4 g4 | fis8-> fis4-> g8-> ~ g2 | g4.\p g8 g4 g4 | fis8-> fis4-> g8-> ~ g2 | } \break
    
	\repeat volta 2 { 
	R1 | R1 | g2.\f f8 g | f( d c) d-> ~ d2 | \break 	
	b'4.\f^\markup { "Balg klopfen" } b8 b4 b4 | b4. b8 b4 b4 |	
	\alternative {
	{ b4. b8 b4 b4 | b4. b8 b4 b4 | \break }
	{ g4.->\f g8-> g4-> f8 g8 | a8->( g f) g-.-> r2}
	}
	}
	\once \override Staff.BarLine.color = #(x11-color 'DarkRed)
	\bar "||"
	g4.\f g8 g4 g | fis8-> fis4-> g8-> ~ g2 | \break
	
	g4.\p g8 g4 g | fis8-> fis4-> g8-> ~ g2 | g4.\f g8 g4 g | fis8-> fis4-> g8-> ~ g2 | \break 
	g4.\p g8 g4 g | fis8-> fis4-> g8-> ~ g2 | d4.\mf g8-> ~ g4 d-. | a'4. g8-> ~ g2 | d4. g8-> ~ g4 d-. | \break
	a'8 g fis g-> ~ g2 | d4.\f g8-> ~ g4 d-. | a'4. g8-> ~ g2 | d4. g8-> ~ g4 g-. |  a8->\ff( g fis) g-^ r2 | \break	
}
	
akk_thr = \relative c'' {
	 \repeat volta 2 { h,4. d8-> ~ d4 h-. | e4. d8-> ~ d2 | h4. d8-> ~ d4 h-. | e8 e d h-> ~ h2 | } \break
	 \repeat volta 2 { e4.\f e8 d4 d4 | d8-> d4-> d8-> ~ d2 | e4.\p e8 d4 d4 | c8-> c4-> <h d>8-> ~ <h d>2 | } \break
	 
	\repeat volta 2 { 
	b'4.\f^\markup { "Balg klopfen" } b8 b4 b4 | \repeat unfold 3 { b4. b8 b4 b4 | } \break 
	g2.\f f8 g | b g f g-> ~ g2 |	
	
	\alternative {
	{ R1 | R1 | \break }
	{ g4.->\f g8-> g4-> f8 g8 | a8->( g f) g-.-> r2}
	}
	}
	\once \override Staff.BarLine.color = #(x11-color 'DarkRed)
	\bar "||"
	e4.\f e8 d4 d | d8-> d4-> d8-> ~ d2 | \break
		 
	e4.\p e8 d4 d | c8-> c4-> <h d>8-> ~ <h d>2 | e4.\f e8 d4 d | d8-> d4-> d8-> ~ d2 | \break
	e4.\p e8 d4 d | c8-> c4-> <h d>8-> ~ <h d>2 | h4.\mf d8-> ~ d4 h-. | e4. d8-> ~ d2 | h4. d8-> ~ d4 h-. | \break
	e8 e d h-> ~ h2 | h4.\f d8-> ~ d4 h-. | e4. d8-> ~ d2 | h4. d8-> ~ d4 h-. | a'8->\ff( g fis) g-^ r2 | \break	
}
	
bass = \relative c'' {
	\repeat volta 2 { g4.\mf g8-> ~ g4 h-. | c4. d8-> ~ d2 | g,4. g8-> ~ g4 h-. | c4 d8-.g,-> ~ g2 | } \break
	\repeat volta 2 { c4.\f c8 h4 h | a8-> a4-> g8-> ~ g2 | c4.\p c8 h4 h | a8-> a4-> g8-> ~ g2  | } \break
			
	\repeat volta 2 { 
	g4.\mf g8 g4 g | \repeat unfold 3 { g4. g8 g4 g | } \break 
	R1 | R1 | 
	
	\alternative {
	{ g'2.\f f8 g | a( g f) g-> ~ g2 | \break }
	{ g4.->\f g8-> g4-> f8 g8 | a8->( g f) g-.-> r2 }
	}
	}
	\once \override Staff.BarLine.color = #(x11-color 'DarkRed)
	\bar "||"
	c,4.\f c8 h4 h | a8-> a4-> g8-> ~ g2 | \break
	
	c4.\p c8 h4 h | a8-> a4-> g8-> ~ g2 | c4.\f c8 h4 h | a8-> a4-> g8-> ~ g2 | \break
	c4.\p c8 h4 h | a8-> a4-> g8-> ~ g2 | g4.\mf g8-> ~ g4 h4-. | c4. d8-> ~ d2 | g,4. g8-> ~ g4 h4-. | \break
	c4 d8-.g,-> ~ g2 | g4.\f g8-> ~ g4 h4-. | c4. d8-> ~ d2 | g,4. g8-> ~ g4 h4-. |  a8->\ff( g fis) g-^ r2 | \break	
}

global = {
  \time 4/4
  \tempo "Latin ritmico" 2 = 84
  \key g \major
  \override Score.VoltaBracket.color = #(x11-color 'Red)
  \override Score.VoltaBracket.thickness = #3.0
  \override Score.VoltaBracket.padding = #4.0
  % \key a \major
    %  \transposition bes
	% \transpose c d {
}

\score {
<<  
  
  \new Staff \with {
      instrumentName = #"Akk.1"
      shortInstrumentName = #"Akk.1"
	  midiInstrument = "violin" 
      midiPanPosition = #-0.5
    } {
	
	
		\global	
		\akk_one
  }
  
   
  \new Staff \with {
      instrumentName = #"Akk.2"
      shortInstrumentName = #"Akk.2"
	  midiInstrument = "clarinet" 
      midiPanPosition = #0.0
    } {
	
	\transpose c d {
		\transposition b
		\global
		\akk_two
	}
  }
  
  \new Staff \with {
      instrumentName = #"Akk.3"
      shortInstrumentName = #"Akk.3"
	  midiInstrument = "accordion" 
      midiPanPosition = #0.5
    } {
	
	
		\global
		\akk_thr
	
  }
  
  \new Staff \with {
      instrumentName = #"Bass"
      shortInstrumentName = #"Bass"
	  midiInstrument = "tenor sax" 
      midiPanPosition = #0.0
    } {
	
	\transpose c d { 
		\transposition b
		\global
		\bass 
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
      % tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}