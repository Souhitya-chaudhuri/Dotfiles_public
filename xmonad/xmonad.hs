--This config file stores most of my personal xmonad perferences

import XMonad
import Data.Monoid
import System.Exit
import System.IO
import XMonad.Util.SpawnOnce
import XMonad.Util.Run
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spacing
import XMonad.Layout.Spiral
import XMonad.Layout.Fullscreen
import XMonad.Layout.Grid
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.DynamicLog
import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import XMonad.ManageHook
import XMonad.Util.NamedScratchpad

myTerminal      = "alacritty"
myTerminal2      = "st"

myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

myClickJustFocuses :: Bool
myClickJustFocuses = False

myBorderWidth   = 1

myModMask       = mod4Mask --Always change the mod mask to 4

myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]

-- myNormalBorderColor  = "#250001"
-- myFocusedBorderColor = "#ad2e0b"
-- myNormalBorderColor  = "#10131a"
-- myFocusedBorderColor = "#e6f9e6"
-- myFocusedBorderColor = "#99ffbb"
-- myFocusedBorderColor = "#f9c74f"
myNormalBorderColor = "#373c40"
myFocusedBorderColor = "#36c692"

screenshooter :: String
screenshooter = "flameshot gui"

------------------------------------------------------------------------
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- ================================================================================================================
    -- Required by the system
    -- ================================================================================================================

    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)

    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)
    -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)
    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)
    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)
    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))
    -- Toggle the status bar gap
    , ((modm              , xK_b     ), sendMessage ToggleStruts)
    -- close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)
    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)
    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )
    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)
    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )
    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )
    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)
    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )
    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)
    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)

    -- ================================================================================================================
    -- Made by me
    -- ================================================================================================================

    -- scratchpads
    , ((mod1Mask .|. shiftMask,  xK_b     ), namedScratchpadAction myScratchPads "bashtop")
    , ((mod1Mask .|. shiftMask,  xK_v     ), namedScratchpadAction myScratchPads "vifm")
    , ((mod1Mask .|. shiftMask,  xK_c     ), namedScratchpadAction myScratchPads "tty-clock")
    , ((mod1Mask .|. controlMask,  xK_v   ), namedScratchpadAction myScratchPads "volume")
    , ((mod1Mask .|. shiftMask,  xK_s     ), namedScratchpadAction myScratchPads "Scratchpad")
    , ((mod1Mask,                xK_s     ), namedScratchpadAction myScratchPads "Terminal")
    -- 2nd terminal
    , ((mod1Mask .|. shiftMask, xK_Return ), spawn "st &")
    --launch browsers
    , ((modm .|. shiftMask, xK_f     ), spawn "firefox")
    , ((modm .|. mod1Mask,  xK_c     ), spawn "google-chrome-stable")
    -- launch pcmanfm
    , ((modm .|. shiftMask, xK_p     ), spawn "pcmanfm")
    -- launch dmenu
    --, ((modm,               xK_p     ), spawn "dmenu_run -c -l 20")
    --, ((modm,               xK_p     ), spawn "dmenu_run")
    , ((modm,               xK_p     ), spawn "dmenu_run -p \"Application: \"")
    -- launch yakuake
    , ((modm .|. mod1Mask,  xK_y     ), spawn "yakuake")
    -- screenshot
    , ((0,                  xK_Print ), spawn $ screenshooter)
    , ((modm,               xK_Print ), spawn "flameshot full -p ~/Pictures/Screenshots")
    -- launch systemsettings5
    , ((modm .|. mod1Mask,  xK_s     ), spawn "systemsettings5")
    ------------------------
    --useless
    --
    -- launch deadbeef
    -- , ((modm,               xK_d     ), spawn "deadbeef")
    ------------------------

    -- Run xmessage with a summary of the default keybindings (useful for beginners)
    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))
    ]
    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]


------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

------------------------------------------------------------------------
-- Layouts:

-- myLayout = spacingRaw True (Border 0 4 4 4) True (Border 5 4 4 4) True
myLayout = smartSpacing 4
  $fullscreenFull
  $avoidStruts(tiled ||| Full ||| Grid ||| spiral (6/7) ||| Mirror tiled)
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = Tall nmaster delta ratio

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100

-----------------------------------------------------------------------

myScratchPads :: [NamedScratchpad]
myScratchPads = [ NS "bashtop" spawnBashTop findBashTop manageBashTop
                , NS "vifm" spawnVifm findVifm manageVifm
                , NS "tty-clock" spawnClock findClock manageClock
                , NS "volume" spawnVolume findVolume manageVolume
                , NS "Scratchpad" spawnScratchpad findScratchpad manageScratchpad
                , NS "Terminal" spawnTerminal findTerminal manageTerminal
                ]
  where
    spawnBashTop  = myTerminal ++ " -t bashtop -e bashtop "
    findBashTop   = title =? "bashtop"
    manageBashTop = customFloating $ W.RationalRect x y w h
               where
                 h = 0.9
                 w = 0.9
                 y = 0.95 -h
                 x = 0.95 -w

    -- spawnScratchpad  = myTerminal2 ++ " -t Scratchpad -e nvim ~/scratchpad.txt "
    spawnScratchpad  = myTerminal ++ " -t Scratchpad -e sh -c \" sleep 0.1 && nvim ~/scratchpad.txt \""
    findScratchpad   = title =? "Scratchpad"
    manageScratchpad = customFloating $ W.RationalRect x y w h
               where
                 h = 0.9
                 w = 0.9
                 y = 0.95 -h
                 x = 0.95 -w

    spawnVifm  = myTerminal ++ " -t vifm -e vifm ~/ ~/JADAVPUR/semester2/ "
    findVifm   = title =? "vifm"
    manageVifm = customFloating $ W.RationalRect x y w h
               where
                 h = 0.9
                 w = 0.9
                 y = 0.95 -h
                 x = 0.95 -w

    spawnClock  = myTerminal ++ " -t clock -e tty-clock -scbtBC 3 "
    findClock   = title =? "clock"
    manageClock = customFloating $ W.RationalRect 0.25 0.25 0.5 0.5

    spawnVolume  = myTerminal ++ " -t volume -e pulsemixer "
    findVolume   = title =? "volume"
    manageVolume = customFloating $ W.RationalRect 0.25 0.25 0.5 0.5

    spawnTerminal  = myTerminal ++ " -t terminal "
    findTerminal   = title =? "terminal"
    manageTerminal = customFloating $ W.RationalRect x y w h
               where
                 h = 0.9
                 w = 0.9
                 y = 0.95 -h
                 x = 0.95 -w

------------------------------------------------------------------------
-- Window rules:
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook =composeAll
    [ className =? "MPlayer"        --> doFloat
    , namedScratchpadManageHook myScratchPads
    , fullscreenManageHook
    , isFullscreen --> doFullFloat
    , className =? "yakuake"        --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore ]

------------------------------------------------------------------------
-- Event handling
--
myEventHook = fullscreenEventHook

------------------------------------------------------------------------
-- Status bars and logging

myLogHook h = dynamicLogWithPP $ def
    { ppLayout = wrap "(<fc=#e4b63c>" "</fc>)"
    -- , ppSort = getSortByXineramaRule  -- Sort left/right screens on the left, non-empty workspaces after those
    , ppTitleSanitize = const ""
    , ppVisible = wrap "(" ")"
    , ppCurrent = wrap "<fc=#b8473d>[</fc><fc=#7cac7a>" "</fc><fc=#b8473d>]</fc>"
    , ppOutput = hPutStrLn h
    }

------------------------------------------------------------------------

myStartupHook = do
  spawnOnce "xset r rate 300 50"
  spawnOnce "nitrogen --restore &"
  spawnOnce "picom --experimental-backends &"
  spawnOnce "conky &"

------------------------------------------------------------------------

main = do
  xmproc <- spawnPipe "xmobar -x 0 ~/.config/xmobar/xmobarrc"
  xmonad $ fullscreenSupport $ docks $ def {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayout,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook xmproc,
        startupHook        = myStartupHook
    }


-- | Finally, a copy of the default bindings in simple textual tabular format.
help :: String
help = unlines ["The default modifier key is 'alt'. Default keybindings:",
    "",
    "-- launching and killing programs",
    "mod-Shift-Enter  Launch xterminal",
    "mod-p            Launch dmenu",
    "mod-Shift-p      Launch gmrun",
    "mod-Shift-c      Close/kill the focused window",
    "mod-Space        Rotate through the available layout algorithms",
    "mod-Shift-Space  Reset the layouts on the current workSpace to default",
    "mod-n            Resize/refresh viewed windows to the correct size",
    "",
    "-- move focus up or down the window stack",
    "mod-Tab        Move focus to the next window",
    "mod-Shift-Tab  Move focus to the previous window",
    "mod-j          Move focus to the next window",
    "mod-k          Move focus to the previous window",
    "mod-m          Move focus to the master window",
    "",
    "-- modifying the window order",
    "mod-Return   Swap the focused window and the master window",
    "mod-Shift-j  Swap the focused window with the next window",
    "mod-Shift-k  Swap the focused window with the previous window",
    "",
    "-- resizing the master/slave ratio",
    "mod-h  Shrink the master area",
    "mod-l  Expand the master area",
    "",
    "-- floating layer support",
    "mod-t  Push window back into tiling; unfloat and re-tile it",
    "",
    "-- increase or decrease number of windows in the master area",
    "mod-comma  (mod-,)   Increment the number of windows in the master area",
    "mod-period (mod-.)   Deincrement the number of windows in the master area",
    "",
    "-- quit, or restart",
    "mod-Shift-q  Quit xmonad",
    "mod-q        Restart xmonad",
    "mod-[1..9]   Switch to workSpace N",
    "",
    "-- Workspaces & screens",
    "mod-Shift-[1..9]   Move client to workspace N",
    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3",
    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3",
    "",
    "-- Mouse bindings: default actions bound to mouse events",
    "mod-button1  Set the window to floating mode and move by dragging",
    "mod-button2  Raise the window to the top of the stack",
    "mod-button3  Set the window to floating mode and resize by dragging"]
