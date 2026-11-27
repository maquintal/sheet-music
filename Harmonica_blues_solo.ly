\version "2.26.0"
\include "swing.ly"

\header {
  title = "Harmonica Blues Solo"
  composer = "Paul Lenart/Ann Cohen"
}

musique = \relative {
  \set Staff.midiInstrument = #"accordion"

  % Indication visuelle du swing en haut de la portée
  \tempo \markup {
    \line {
      "Swing ("
      \rhythm { 8[ 8] }
      " = "
      \rhythm { \tuplet 3/2 { 4 8 } }
      ")"
    }
  } 4 = 58

  \numericTimeSignature
  \time 4/4
  \clef treble

  r8 b'8 dis8 e8 f fis4.~ |
  fis4.\bendAfter #-4 r8 a,8 fis4.
  fis8 r8 r8 b8 dis8 dis8 \tuplet 3/2 { e8 fis dis } |
  b a16 fis16 a8 b8 b4 dis8 fis8 |
  e4 \tuplet 3/2 { e8 gis, b } b4 dis8 a16 fis16 |
 fis4 \tuplet 3/2 { b8 dis b' } a2~ |
 a2  \tuplet 3/2 { gis8 fis8 e } dis8 b8~b4
}

% 1. Partition visuelle (croches écrites normalement)
\score {
  \new Staff \with {
    instrumentName = #"Harmonica"
    shortInstrumentName = #"Harm."
  }
  \musique

  \layout {}
}

% 2. Rendu MIDI uniquement (avec les croches swinguées)
\score {
  \new Staff \with {
    midiMinimumVolume = #0.9
    midiMaximumVolume = #1.0
  }
  \tripletFeel 8 \musique

  \midi {}
}