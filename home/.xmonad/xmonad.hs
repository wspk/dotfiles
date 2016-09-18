import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

term = "gnome-terminal"
browser = "google-chrome"

main = xmonad =<< (xmobar $ defaultConfig {
    terminal    = term,
    borderWidth = 2,
    focusedBorderColor = "#cc6600",
    startupHook = startup,
    -- make sure xmobar isn't hidden
    manageHook = manageDocks <+> manageHook defaultConfig,
    layoutHook = avoidStruts $ layoutHook defaultConfig,
    handleEventHook = docksEventHook <+> handleEventHook defaultConfig
} `additionalKeysP` [ 
    ("C-<Return>",              spawn term),
    ("C-M-<Return>",            spawn browser),
    ("M-q",                     kill),
    ("M-S-r",                   restart "xmonad" True),
    ("<XF86AudioRaiseVolume>",  spawn "amixer -D pulse sset Master 5%+"),
    ("<XF86AudioLowerVolume>",  spawn "amixer -D pulse sset Master 5%-"),
    ("<XF86AudioMute>",         spawn "amixer -D pulse sset Master toggle"),
    ("M4-<F5>",   spawn "xbacklight -dec 10"),
    ("M4-<F6>",   spawn "xbacklight -inc 10")])


startup :: X ()
startup = do
    -- spawn "nm-applet"
    spawn "setxkbmap -option ctrl:nocaps"
    spawn "xcape -e 'Control_L=Escape"
    spawn "trayer --edge bottom --align right --width 20 --distancefrom right --distance 137 --height 14 --transparent true --tint 0x000000"
    spawn "nm-applet"
    spawn "cat /proc/$(ps aux | grep [x]monad | awk '{print $2}')/fd/* > /dev/null"
