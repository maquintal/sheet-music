
\version "2.26.0"

\header {
  title = "Mistreatin' Mama (1927)"
  composer = "Jaybird Coleman"
}

\score {
    % Visuellement, on écrit bien "Harmonica"
     \new Staff \with {
        instrumentName = #"Harmonica"
        shortInstrumentName = #"Harm."
        midiMinimumVolume = #0.9
        midiMaximumVolume = #1.0
    }
<<
    \relative {
    % Pour le haut-parleur, on utilise le son de l'accordéon (plus fiable)
    \set Staff.midiInstrument = #"accordion"
    \tempo 4 = 120
    \key a \major
    \numericTimeSignature
    \time 4/4
    
    \clef treble

    r8 d'8 d8 r8 d8 d4 cis4  |
  }
>>

  \layout {}
  \midi {}
}
