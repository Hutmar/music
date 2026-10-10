\version "2.24.0"

% Wir nutzen die deutsche Sprache (h statt b, b statt bes, fis, etc.)
\language "deutsch"

\header {
  title = "Blue Monk"
  composer = "Thelonius Monk"
}

\paper {

  % Abstand zwischen dem Titel und dem ersten Notensystem
  markup-system-spacing.basic-distance = #18
  
  % Abstand zwischen dem letzten Notensystem und deiner Pentatonik-Box
  % score-markup-spacing.basic-distance = #18
  
  system-system-spacing = #'(
    (basic-distance . 16)   % Erhöhen von z.B. 10 auf 15-18 für mehr Luft
    (minimum-distance . 12) % Mindestabstand
    (padding . 2)           % Puffer
    (stretchability . 5)    % Wie sehr darf LilyPond hier schummeln?
  )
  
  % ragged-last-bottom = ##f
  ragged-bottom = ##t
}

\layout {
  \context {
    \ChordNames
	
    minorChordModifier = \markup { \small "m" }
	
	\semiGermanChords
    
    \override ChordName.font-series = #'bold
    \override ChordName.font-size = #1
  }

  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
      (basic-distance . 11)
      (minimum-distance . 10)
      (padding . 3)
      (stretchability . 0)
    )
  }
}


akkords = \chordmode {
	b1 | es1:7 | b2 f:7 | b2 b:7 |
	es1 | e1:dim7 | b2 f:7 | b1 |
	f1:7 | f1:7 | b1 | b4 b4 f2
}

blueMonk = \relative c'' {
      \key c \major
      e8 f fis g~ g2 |
	  a8 b h c~ c2 |
	  g8 a g fis f g, dis' e~ |
	  e dis4 d8~ d2 | \break
	  a'8 b h c~ c2 |
	  c8 cis  d dis~ dis2 |
	  g,8 a g fis f g, dis' e~ |
	  e2. \tuplet 3/2 { g8 g g } | \break
	  g8 g,4.~ g2 |
	  g'8 a g fis f g, dis' e~ |
	  e4 g8 a g fis f g, |
	  dis'8 e4.~ e2 | \break \break
	  % s1 | s1 | s1 | s1 | \break
}

pentatonik = \chordmode {
	c1 es f fis g b   
}
	  
\score {
<<  
   
  \new Staff \with {
      instrumentName = #"TSax"
      shortInstrumentName = #"TSax"
    } {
    % Grundeinstellungen
	\set Staff.midiInstrument = #"tenor sax"
    \clef treble
    
    \time 4/4
    % \tempo 4 = 120

    \blueMonk
	
	  \bar ":|."
  }
  
  \new Staff \with {
      instrumentName = #"Bb"
      shortInstrumentName = #"Bb"
    } {
	\transpose c c, { \blueMonk }
  }
  
   \new ChordNames { \akkords }
  
  \new Staff \with {
      instrumentName = #"Org."
      shortInstrumentName = #"Org."
    } {
	\transpose c b,, { \blueMonk }
  }
  
 >>
 \layout { 
	indent = 0\mm 
 }
 
 \midi { 
	\tempo 4 = 120
  }
}

\markup {
	\vspace #1
}


 \score {
  \new ChordNames { 
    \semiGermanChords
    \pentatonik 
  }
  
  \layout { 
	ragged-right = ##t
	indent = 60\mm 
  }
}
