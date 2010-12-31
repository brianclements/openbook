\include "src/include/common.lyi"
\header {
	title="I'll Close My Eyes"
	composer="Billy Reid"
	poet="Buddy Kaye"
	style="Jazz"
	piece="Med Swing"
	structure="AB"

	completion="5"
	uuid="e7277c50-a26e-11df-863c-0019d11e5a41"

%%	url_lyrics="http://lyricsplayground.com/alpha/songs/i/illclosemyeyes.shtml"
%%	idyoutube="u6lXbfx1hHw"
	idyoutube="7Oh-Dl-KbF0"
}

%{
	TODO:
	- find this standard in one of my fake/real books and check it out.
	- fix up the lyrics
	- the chords seem kind of static (two E7 in a row, two fmaj7 in a row). Shouldn't
		there be more II->V there ?
%}

myChords=\chordmode {
	\startChords

	\startSong

	\partial 8*5 r8 r4 r4
	\repeat volta 2 {
		f1:maj7 | f1:maj7 | e1:m7.5- | a1:7.9- | \myEndLine
		d1:m7 | d1:m7 | c1:m7 | f1:7 | \myEndLine
		bes1:maj7 | ees1:7 |
	}
	\alternative {
		{
			f1:maj7 | f1:maj7 | \myEndLine
			e1:7 | e1:7 | a2:m7 d2:7 | g2:m7 c2:7 | \myEndLine
		}
		{
			a1:m7.5- | d1:7.9- | \myEndLine
			g1:m7 | c1:7 | f2:maj7 d2:7 | g2:m7 c2:7 | \myEndLine
			%% an ending would be:
			%% f1:maj7 | f1:maj7 | \myEndLine
		}
	}

	\endSong

	\endChords
}
myVoice=\relative c' {
	%% http://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Allegro" 4 = 150
	\time 4/4
	\key f \major
	\partial 8*5 c8 bes'4 a |
	\repeat volta 2 {
		a1 | r4 r8 c, bes'4 a | a4 g e2 | r4 r8 e g4 fis |
		f1 | r4 r8 f g4 f | ees1 | r2 r4 ees |
		d f c'2 | r4 r8 bes f4 g |
	}
	\alternative {
		{
			a1 | r2 r4 a |
			gis1 | r4 r8 e g4 f | e1 | r4 r8 c bes'4 a |
		}
		{
			a1 | r4 r8 a c4 b |
			bes4. d,8 e4 f | g2 a | f1~ | f2 r2 |
		}
	}
}
myLyrics=\lyricmode {
	I'll close my eyes
	To everyone but you
	And when I do
	I'll see you standing there

	I'll lock my heart
	To any other caress
	I'll never say yes
	To a new love affair

	Then I'll close my eyes
	To everything that's gay
	If you are not there
	Oh, to share each lovely day

	And through the years
	In those moments
	When we're far apart
	Don't you know I'll close my eyes
	And I'll see you with my heart
}
%% score for printing
\score {
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
		\new Lyrics \lyricsto "myvoice" \myLyrics
	>>
	\layout {
	}
}
%% score for midi
\score {
	\unfoldRepeats
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
	>>
	\midi {
	}
}
