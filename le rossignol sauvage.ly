
\version "2.26.0"

\header {
  title = "Le Rossignol Sauvage"
  composer = "La Bottine Souriante"
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
    \tempo 4 = 72
    \key e \minor
    \numericTimeSignature
    \time 6/8
    
    \clef treble

    g''4. fis4 e8 |
    d4 b'8 b4 g8 |
    a4 b8 b4.~ |
    b4 b8 d4 b8 |
    a4 fis8 g8 e4 |
    e8 fis8 g8 a8. b16 a8 |
    a2. |
    fis 8 g8 a8 b8 a8 g8 |
    fis4. e8 g8 a8 |
    b4 cis8 d8 cis8 b8 |
    a8 fis8 g8 e4. |
    g4. fis4 e8 d4 fis8 e4.
  }
>>

  \layout {}
  \midi {}
}
