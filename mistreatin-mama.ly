
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
    \tempo 4 = 60
    \key f \major
    \numericTimeSignature
    \time 4/4
    
    \clef treble

    f''8 f8
  }
>>

  \layout {}
  \midi {}
}