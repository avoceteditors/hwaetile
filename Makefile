
CALL = stow -vR
CONFIG = ~/.config
CALLCFG = $(CALL) -t $(CONFIG)
CALLHM = $(CALL) -t ~/
HWAET = ~/Public/hwaetile

all: i3wmlink

i3wm-init:
	$(CALLCFG)/i3 i3

awesome-init:
	$(CALLCFG)/awesome awesome

xmonad-init:
	$(CALLHM).xmonad xmonad

