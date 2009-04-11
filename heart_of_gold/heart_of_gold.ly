\version "2.12.0"

\header {
  title = "Heart of Gold"
  composer = "Neil Young"
  copyright = \markup \center-column {
    "This file is Giacomo Ritucci's own work and represents his interpretation of the song."
    "You may only use this file for private study, scholarship, or research."
    " "
  }
}


globals = {
  \key e \minor
  \time 4/4
}


voice = \relative c' {
  \globals
  \clef treble
  \set Staff.instrumentName = "Voice"
  \set Staff.shortInstrumentName = "V"

  r1 | r | r | r |
  c2 c2 |
}


voiceLyrics = \lyricmode {
  to do
}


harp = \relative {
  \globals
  \set Staff.instrumentName = "Harp"
  \set Staff.shortInstrumentName = "H"
  \clef treble

  r1 | r | r | r |
  c |
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

  r1 | r | r | r |
  c |
}


rhythmGuitar = \relative {
  \globals
  \clef treble
  \set Staff.instrumentName = \markup {
    \column {
      "Rhythm"
      \line { "Guitar" }
    }
  }
  \set Staff.shortInstrumentName = "RG"

  r1 | r | r | r |
  c |
}


bass = \relative {
  \globals
  \clef bass
  \set Staff.instrumentName = "Bass"
  \set Staff.shortInstrumentName = "B"

  r1 | r | r | r |
  c
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

