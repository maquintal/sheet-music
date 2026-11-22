
\version "2.26.0"

\header {
  title = "Harmonica Blues Solo"
  composer = "Paul Lenart/Ann Cohen"
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
    \tempo 4 = 80
    % \key a \major
    \numericTimeSignature
    \time 4/4
    
    \clef treble

    r8 b' dis~ dis e fis~ fis  |
  }
>>

  \layout {}
  \midi {}
}
