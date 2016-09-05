import XMonad
import System.Exit
import qualified XMonad.StackSet 	as W
import qualified Data.Map 		as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.InsertPosition
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Config.Xfce
import XMonad.Util.EZConfig

-- Terminal Configuration
myTerm = "~/.local/bin/xterm.sh"

--------------------------------------------------
-- Keys
myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
   [ ((modMask, xK_b), sendMessage ToggleStruts)
   , ((modMask .|. shiftMask, xK_q), spawn "xfce4-session-logout")
   ]

-- Modkey
myModKey = mod4Mask


---------------------------------------------------
-- Mouse

-- Mouse Focus
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

----------------------------------------------------
-- Manage Hoook
myManageHook :: ManageHook
myManageHook = composeAll [ matchAny v --> a | (v,a) <- myActions]
	where myActions =
		[ ("xfrun4"		, doFloat)
		, ("xfce4-notifyd"	, doIgnore)
		, ("preferences"	, doFloat)
		]
-- Variables
matchAny :: String -> Query Bool
matchAny x = foldr ((<||>) . (=? x)) (return False) [className, title, name, role]

-- Match Against @WM_NAME@.
name :: Query String
name = stringProperty "WM_CLASS"

-- Match Against @WM_WINDOW_ROLE@.
role :: Query String
role = stringProperty "WM_WINDOW_ROLE"

----------------------------------------------------
-- Run XMonad
main = xmonad defaults

-- Defaults
defaults = xfceConfig {
-- General
    terminal		= myTerm
   , focusFollowsMouse	= myFocusFollowsMouse
   , modMask		= myModKey
   , manageHook = manageDocks 	<+> manageHook defaultConfig
   				<+> myManageHook
   , layoutHook = avoidStruts $ layoutHook defaultConfig
  }
