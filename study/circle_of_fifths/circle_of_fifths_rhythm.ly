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


\score {

  \new Staff {
    \globals
    r1 |
    \esChords |
    r1 |
    \isChords |
  }

  \layout { }
  \midi { }
}

