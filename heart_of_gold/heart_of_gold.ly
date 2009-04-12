\version "2.12.0"

\header {
  title = "Heart of Gold"
  composer = "Neil Young"
%  copyright = \markup \center-column {
%    "This file is Giacomo Ritucci's own work and represents his interpretation of the song."
%    "You may only use this file for private study, scholarship, or research."
%    " "
%  }
}


globals = {
  \key e \minor
  \time 4/4
  \tempo 4 = 86
}


voice = \relative c' {
  \globals
  \clef treble
  \set Staff.instrumentName = "Voice"
  \set Staff.shortInstrumentName = "V"

  r1 * 12 |
  c1 |
}


voiceLyrics = \lyricmode {
  I want to live
  I want to give
  I've been a miner for a heart of gold
  It's these expressions I never give
  That keep me searching for a heart of gold
  And I'm getting old
  Keeps me searching for a heart of gold
  And I'm getting old

  I've been to Hollywood,
  I've been to Redwood
  I've crossed the ocean for a heart of gold
  I've been in my mind
  It's such a fine line
  That keeps me searching for a heart of gold
  And I'm getting old
  Keeps me searching for a heart of gold
  And I'm getting old

  Keep me searching for a heart of gold
  Keep me searching and I'm growing old
  Keep me searching for a heart of gold
  I've been a miner for a heart of gold.
}


harp = \relative {
  \globals
  \set Staff.instrumentName = "Harp"
  \set Staff.shortInstrumentName = "H"
  \clef treble

  r1*4 |
}


leadGuitar = \relative {
  \globals
  \clef treble
  \set Staff.instrumentName = \markup {
    \column {
      "Lead"
      \line { "Guitar" }
    }
  }
  \set Staff.shortInstrumentName = "LG"

  r1 |
}

strumEminorDmajor = \relative c {
  < e b' e g b e >8     % Em
  < e b' e g b e >8
  < e b' e g b e >8
  < e b' e g b e >8
  < e b' e g b e >8
  < e b' e g b e >8
  < a d a' d fis >4     % D
  < a d a' d fis >8
  < e b' e g b e >4     % Em
}


rhythmGuitar = \relative c {
  \globals
  \clef treble
  \set Staff.instrumentName = \markup {
    \column {
      "Rhythm"
      \line { "Guitar" }
    }
  }
  \set Staff.shortInstrumentName = "RG"

  e4 \strumEminorDmajor a16 b d8 e |
  e,8 e8 \strumEminorDmajor a16 b d8 e |
}


bass = \relative {
  \globals
  \clef bass
  \set Staff.instrumentName = "Bass"
  \set Staff.shortInstrumentName = "B"

  r1 |
}


\score {
  <<
    <<
      \new Voice = "one" {
	\autoBeamOff
	\voice
      }
      \new Lyrics \lyricsto "one" \voiceLyrics
    >>
    \new Staff \harp
    \new Staff \leadGuitar
    \new Staff \rhythmGuitar
    \new Staff \bass
  >>
  \layout { }
  \midi { }
}

