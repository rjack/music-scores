\version "2.12.0"

\header {
  title = "Circle of Fifths"
  subtitle = "Rhythm"
  copyright = \markup \center-column {
    "This work is in the public domain."
  }
}


globals = {
  \time 4/4
  \clef treble
  \tempo 4 = 60
}


isChords = \relative c {
  \key c \major
  \chordmode {
    c1 | c | c | c |
  }

  \key g \major
  \chordmode {
    g1 | g | g | g |
  }

  \key d \major
  \chordmode {
    d1 | d | d | d |
  }

  \key a \major
  \chordmode {
    a1 | a | a | a |
  }

  \key e \major
  \chordmode {
    e1 | e | e | e |
  }

  \key b \major
  \chordmode {
    b1 | b | b | b |
  }
}

esChords = \relative c {
  \key c \major
  \chordmode {
    c1 | c | c | c |
  }
  \key f \major
  \chordmode {
    f1 | f | f | f |
  }
  \key bes \major
  \chordmode {
    bes1 | bes | bes | bes |
  }
  \key ees \major
  \chordmode {
    ees1 | ees | ees | ees |
  }
  \key aes \major
  \chordmode {
    aes1 | aes | aes | aes |
  }
  \key des \major
  \chordmode {
    des1 | des | des | des |
  }
  \key ges \major
  \chordmode {
    ges1 | ges | ges | ges |
  }
  \key ces \major
  \chordmode {
    ces1 | ces | ces | ces |
  }
}

isNotes = \relative c' {
  \key c \major
  \repeat unfold 4 {
    c8 d e f g a b c |
  }

  \key g \major
  \repeat unfold 4 {
    g a b c d e fis g |
  }

  \key d \major
  \repeat unfold 4 {
    d, e fis g a b cis d |
  }

  \key a \major
  \repeat unfold 4 {
    a, b cis d e fis gis a |
  }

  \key e \major
  \repeat unfold 4 {
    e fis gis a b cis dis e |
  }

  \key b \major
  \repeat unfold 4 {
    b, cis dis e fis gis ais b |
  }
}


esNotes = \relative c' {
  \key c \major
  \repeat unfold 4 {
    c8 d e f g a b c |
  }

  \key f \major
  \repeat unfold 4 {
    f,8 g a bes c d e f |
  }

  \key bes \major
  \repeat unfold 4 {
    bes,,8 c d ees f g a bes |
  }

  \key ees \major
  \repeat unfold 4 {
    ees,8 f g aes bes c d ees |
  }

  \key aes \major
  \repeat unfold 4 {
    aes,8 bes c des ees f g aes |
  }

  \key des \major
  \repeat unfold 4 {
    des,,8 ees f ges aes bes c des |
  }

  \key ges \major
  \repeat unfold 4 {
    ges,8 aes bes ces des ees f ges |
  }

  \key ces \major
  \repeat unfold 4 {
    ces,,8 des ees fes ges aes bes ces |
  }
}


\score {

  <<
    \new Staff {
      \globals
      r1 |
      \esNotes |
      r1 |
      \isNotes |
    }

    \new Staff {
      \globals
      r1 |
      \esChords |
      r1 |
      \isChords |
    }

    \drums {
      \repeat unfold 58 {
	hh4 hh hh hh
      }
    }
  >>

  \layout { }
  \midi { }
}
