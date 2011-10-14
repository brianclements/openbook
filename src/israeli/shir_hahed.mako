include(src/include/common.lyi)
\header {
	default_header_heb

	title="שיר ההד"
	composer="יוחנן זראי"
	singer="אריק לביא"
	piece="בלדה איטית"
	poet="יעקב שבתאי"

	completion="4"

	idyoutube="IUZQgbhivqw"

	uuid="56513346-a26f-11df-b591-0019d11e5a41"
}
jazzTune

<%doc>
	TODO:
		- after the first verse there is a transposition of 1.5 steps up
		though the chord Ab7 (which is the alter-dominant of g which we are
		going to...).
		- finish the tune.
		- align all the lyrics.
</%doc>

myChords=\chordmode {
	\startChords

	\mark "פתיחה"
	\startPart
	e2. | e2. | e2. | e2. |
	fis2. | fis2. | e4. aes4./ees | a4./cis a4. |
	e2. | e2. |
	\endPart

	\mark "בית"
	\startPart
	e2. | e2. | cis2.:m | cis2.:m |
	fis2.:m | fis2.:m | b2.:7 | b2.:7/a |
	aes2. | cis2.:m | aes2. | cis4.:m cis4.:m/b |
	a2. | \time 3/8 e4. | \time 6/8 cis2.:m |
	fis2.:m | fis2.:m | b2.:7 | b2.:7 |
	\endPart

	\endChords
}
myVoice=\relative f' {
	\time 6/8
	\key e \major
	%% http://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Moderato" 4 = 112

	gis2 a8 b | gis2 a8 b | gis8 a b gis8 a b | gis2. |
	fis2 gis8 ais | fis2 ~ fis8 e | b'4. gis4 fis8 | fis8 e4. cis8 e8 |
	e2. | e2. |

	b8 e b e4. ~ | e8 fis gis fis e cis | cis2. ~ | cis2. |
}
myLyrics=\lyricmode {
	_ _ _ _ _ _ _ _ _ _ _
	_ _ _ _ _ _ _ _ _ _ _
	_ _ _ _ _

	בו -- קר ע -- לה ב -- ה -- רים ה -- כחו -- לים
	טיפסתי נושם בשבילים עתיקים
	נולד בי שיר זמר נושן:
	"הו, מה כחול!"
	והד לי ענה מהרי הבשן:
	"הו, מה כחול, כחול, כחול, כחול!"

	שמש מכה על ראשי הגבעות
	קרוע בגדי ופני לוהטות
	שירי אז עלה בצמא:
	"הו מה עייף!"
	והד לי ענה מאבני החומה:
	"הו מה עייף, עייף, עייף, עייף!"

	ערב יורד ובגיא דמדומים
	טיפסתי בודד בשבילים אדומים
	שירי מתגלגל במדרון:
	"הו מה בודד!"
	והד לי עונה מהרי גוש עציון
	"הו מה בודד, בודד, בודד, בודד!"

	לילה יורד בין צוקי הר נבו
	צבוע בוכה אל מדבר וחולו
	קולי מחפש את רעי
	"הו מה רחוק!"
	והד לי עונה מפסגת הר סיני:
	"הו מה רחוק, רחוק, רחוק, רחוק!"
}
include(src/include/harmony_tune_lyrics.lyi)