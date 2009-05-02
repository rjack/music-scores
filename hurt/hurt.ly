\version "2.12.0"

\header {
  title = "Hurt"
  composer = "Trent Reznor"
  arranger = "Johnny Cash"
%  copyright = \markup \center-column {
%    "This file is Giacomo Ritucci's own work and represents his interpretation of the song."
%    "You may only use this file for private study, scholarship, or research."
%    " "
%  }
}


globals = {
  \key c \major
  \time 4/4
  \tempo 4 = 90
}


voiceLyrics = \lyricmode {
  I hurt my -- self to -- day
  To see if I still feel
  I focus on the pain
  The only thing that's real

  The needle tears a hole
  The old familiar sting
  Try to kill it all away
  But I remember everything

  What have I become
  My sweetest friend
  Everyone I know
  Goes away in the end

  And you could have it all
  My empire of dirt
  I will let you down
  I will make you hurt

  I wear this crown of thorns
  Upon my liars chair
  Full of broken thoughts
  I cannot repair

  Beneath the stains of time
  The feelings disappear
  You are someone else
  I am still right here

  What have I become
  My sweetest friend
  Everyone I know
  Goes away in the end

  And you could have it all
  My empire of dirt
  I will let you down
  I will make you hurt

  If I could start again
  A million miles away
  I would keep myself
  I would find a way
}


voice = \relative c {
  \globals
  \clef bass
  \set Staff.instrumentName = "Voice"
  \set Staff.shortInstrumentName = "V"

  | r1*4 |

  | r2. e4 |
  | g8 e4 d2 c8 |
  | e4 r2 r8 c8 |
  | d4 c8 d4 r4 c8 |
  | e1 |
}


guitarChords = \chordmode {
  \repeat unfold 10 {
    | a1:m | c2 d |
  }
}


guitar = \relative c {
  \globals
  \clef "treble_8"
  \set Staff.instrumentName = "Guitar"
  \set Staff.shortInstrumentName = "G"
  \set Staff.midiInstrument = "acoustic guitar (steel)"

  \repeat unfold 10 {
    a8 e' < a c e >2. |
    c,8 e g c d, a' d e |
  }
}


\score {
  <<
    <<
      \new Voice = "jc" {
	\autoBeamOff
	\voice
      }
      \new Lyrics \lyricsto "jc" \voiceLyrics
    >>

    <<
      \new ChordNames {
	\guitarChords
      }
      \new Staff \guitar
    >>
  >>
  \layout { }
  \midi { }
}

