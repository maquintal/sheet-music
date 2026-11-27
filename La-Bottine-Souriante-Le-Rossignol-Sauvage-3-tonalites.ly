\version "2.26.0"

\header {
  title = "Le Rossignol Sauvage"
  composer = "La Bottine Souriante"
}

% Mélodie unique réutilisée partout
melodie = \relative c'' {
  \key e \minor
  \numericTimeSignature
  \tempo 4 = 72
  \time 6/8

  g4. fis4 e8 |
  d4 b'8 b4 g8 |
  a4 b8 b4.~ |
  b4 b8 d4 b8 |
  a4 fis8 g8 e4 |
  e8 fis8 g8 a8. b16 a8 | \break
  a2. |
  fis8 g8 a8 b8 a8 g8 |
  fis4. e8 g8 a8 |
  b4 cis8 d8 cis8 b8 |
  a8 fis8 g8 e4. |
  g4. fis4 e8 |
  d4 fis8 e4. |
  \bar "|."
}

% ==========================================
% 1. AFFICHAGE : ORIGINALE (Mi mineur)
% ==========================================
\score {
  \new Staff \with {
    instrumentName = #"Harmonica"
    shortInstrumentName = #"Harm."
  } {
    \clef treble
    % Titre affiché directement sur la partition au-dessus de la 1re note
    <>^\markup \bold \large \raise #2 "1. Originale — Mi mineur (Em)"
    \melodie
  }
  \layout {}
}

% ==========================================
% 2. AFFICHAGE : TRANSPOSÉE EN LA MINEUR
% ==========================================
\score {
  \new Staff \with {
    instrumentName = #"Harmonica"
    shortInstrumentName = #"Harm."
  } {
    \clef treble
    <>^\markup \bold \large \raise #2 "2. Transposée — La mineur (Am) [Harmonica en Do]"
    \transpose e' a' {
      \melodie
    }
  }
  \layout {}
}

% ==========================================
% 3. AFFICHAGE : TRANSPOSÉE EN FA# MINEUR
% ==========================================
\score {
  \new Staff \with {
    instrumentName = #"Harmonica"
    shortInstrumentName = #"Harm."
  } {
    \clef treble
    <>^\markup \bold \large \raise #2 "3. Transposée — Fa# mineur (F#m) [Harmonica en La]"
    \transpose e' fis' {
      \melodie
    }
  }
  \layout {}
}

% ==========================================
% 4. AUDIO MIDI COMPLET (Les 3 à la suite)
% ==========================================
\score {
  \new Staff \with {
    midiMinimumVolume = #0.9
    midiMaximumVolume = #1.0
  } {
    \set Staff.midiInstrument = #"accordion"
    \tempo 4 = 72
    
    \melodie
    r2.
    \transpose e' a { \melodie }
    r2.
    \transpose e' fis'' { \melodie }
  }
  \midi {}
}
