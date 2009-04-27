\version "2.12.0"

\header {
  title = "Further on Up the Road"
  composer = "Bruce Springsteen"
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
  \tempo 4 = 62
}


voice = \relative c {
  \globals
  \clef bass
  \set Staff.instrumentName = "Voice"
  \set Staff.shortInstrumentName = "V"

  | r1*3 |
  | r2 r8 \times 2/3 { a8 a16 } \times 2/6 { a4 c4. e8 ~ | e8 r4 }
  r2 \times 2/3 { a,8 a16 } \times 2/6 { a4 c4. e8 ~ | e4. }
  r2 \times 2/3 { e8 e16 } \times 2/6 { e4 g4. a8 ~ | a4. }
  r2 \times 2/3 { e8 e16 } \times 2/6 { g4 e4. e8 ~ | e4. }
}

voiceLyrics = \lyricmode {
  Where the road is dark and the seed is sowed
  Where the gun is cocked and the bul -- let's cold
  Where the miles are marked in the blood and gold
  I'll meet you further on up the road

  Got on my dead man's suit and my smilin' skull ring
  My lucky graveyard boots and song to sing
  I got a song to sing, keep me out of the cold
  And I'll meet you further on up the road.

  Further on up the road
  Further on up the road
  Where the way dark and the night is cold
  One sunny mornin' we'll rise I know
  And I'll meet you further on up the road.

  Now I been out in the desert, just doin' my time
  Searchin' through the dust, lookin' for a sign
  If there's a light up ahead well brother I don't know
  But I got this fever burnin' in my soul
  So let's take the good times as they go
  And I'll meet you further on up the road

  Further on up the road
  Further on up the road
  Further on up the road
  Further on up the road

  One sunny mornin' we'll rise I know
  And I'll meet you further on up the road
  One sunny mornin' we'll rise I know
  And I'll meet you further on up the road.
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

    \drums {
      \repeat unfold 6 {
	hh4 hh hh hh
      }
    }
  >>

  \layout { }
  \midi { }
}

