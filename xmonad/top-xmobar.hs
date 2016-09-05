-- Xmobar Configuration File for Top Bar
Config {
   -- Appearance
   font		= "xft:Bitstream Vera Sans Mono:size=9:bold:antialias=true"
   , bgColor 	= "black"
   , fgColor	= "white"
   , position 	= TopW L 50

   -- Layout
   , sepChar 		= "%"
   , alignSep		= "}{"
   , template		= "%date% }{"

   -- General
   , allDesktops 	= True
   , hideOnStart 	= False
   , lowerOnStart	= False
   , persistent		= True
   -- Commands
   , commands = 	[ Run Date "%A, %B %d, %Y" "date" 10
   			]                	]
}

