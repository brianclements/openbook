<%inherit file="/src/include/common.makoi"/>
<%
	attributes['jazzTune']=True
%>
\header {
	default_header

	title="Chanson des faucheurs"
	composer="R. Schumann"
	style="Jazz"
	piece="Med Swing"

	completion="0"
	uuid="9ff5c7c4-a26e-11df-aa45-0019d11e5a41"
}

myVoice=\relative g'' {
	\key c \major
	\time 3/4

	g4 ( c ) b | a ( d ) c | b ( a ) b | c2 ( d4 ) |
	g,4 ( c ) b | a ( d ) c | b ( a ) b | c2 r4 |

	d,4 ( g ) fis | e ( a ) g | fis ( e ) fis | g2 ( b4 ) |
	d4 ( g ) fis | e ( a ) g | fis ( e ) fis | g2 r4 |

	g,4 ( c ) b | a ( d ) c | b ( a ) b | c2 ( d4 ) |
	g,4 ( c ) b | a ( d ) c | b ( a ) b | c2 r4 |
}

include(src/include/tune.lyi)
