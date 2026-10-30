\version "2.26.0"

\header {
title = "Les Belles-Meres"
composer = "La Bolduc"
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

    r2 r4 e'8 a |
    cis4 cis4 cis4 b8 cis8 |
    b4 a4~ a4 e8 a8 |
    cis4 cis4 e4 d8 cis8 |
    b2~ b4 e8. d16 |
    cis4 cis8 b8 a4 b8 cis8 |
    e8 cis8 d4~ d4 b8 d8 |
    cis4 a8 cis8 b4 gis8 b8 |
    a2. r4 |
    }
  \addlyrics {
  "3" "4" | 
  "5" "5" "5" "-4" "5" |
  "-4" "5" "3" "4" |
  "5" "5" "6" "-5" "5" |
  "-4" "6" "-5" | 
  "5" "5" "-4" "4" "-5" "5" |
  "6" "5" "-5" "-4" "-5" |
  "5" "4" "5" "-4" "-3" "-4" | 
  "4"

  }
>>

\layout {}
\midi {}
}