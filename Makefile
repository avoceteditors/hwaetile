
CALL = stow -vR
CONFIG = ~/.config
CALLCFG = $(CALL) -t $(CONFIG)
CALLHM = $(CALL) -t ~/
HWAET = ~/Public/hwaetile

all: i3wmlink

i3wmlink:
	$(CALLCFG)/i3 i3


xmonadconfig: xmonadrc xmonbar-top

xmonadrc:
	ln -s $(HWAET)/xmonad/xmonad.hs ~/.xmonad/xmonad.hs

xmobar-top:
	ln -s $(HWAET)/xmonad/top-xmobar.hs ~/.top-xmobarrc
xmobar-bot:
	ln -s $(HWAET)/xmonad/bot-xmobar.hs ~/.bot-xmobarrc
