-- Xmobar Configuration File for Top Bar
Config {
   -- Appearance
   font		= "xft:Bitstream Vera Sans Mono:size=9:bold:antialias=true"
   , bgColor 	= "black"
   , fgColor	= "white"
   , position 	= Bottom

   -- Layout
   , sepChar 		= "%"
   , alignSep		= "}{"
   , template		= "}{%date%"

   -- General
   , allDesktops 	= True
   , hideOnStart 	= False
   , lowerOnStart	= False
   , persistent		= True
   -- Commands
   , commands = 	[ Run Date "%I:%m %p" "date" 1 
   			]                	]
}

