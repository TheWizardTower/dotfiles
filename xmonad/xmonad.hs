-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---INFORMATIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- informations = { Author   = Graawr
--                , Version  = XMonad 0.10 <+> ghc 7.4 <+> dzen-0.8.5
--                , Updated  = August 17 2013
--                }


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---IMPORTS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Base
import XMonad
import XMonad.Actions.Submap
import Data.Maybe (isJust)
import Data.Map as M
import XMonad.Config.Kde
import System.IO (hPutStrLn)
import System.Exit (exitSuccess)
import qualified XMonad.StackSet as W
import XMonad.ManageHook

    -- Utilities
import XMonad.Util.EZConfig (additionalKeysP, additionalMouseBindings, mkKeymap)
-- import XMonad.Util.NamedScratchpad (NamedScratchpad(NS), namedScratchpadManageHook, namedScratchpadAction, customFloating)
import XMonad.Util.NamedScratchpad
import XMonad.Util.Scratchpad (scratchpadSpawnAction, scratchpadManageHook, scratchpadFilterOutWorkspace)
import XMonad.Util.Run (safeSpawn, unsafeSpawn, runInTerm, spawnPipe)
import XMonad.Util.SpawnOnce
import XMonad.Util.WindowProperties (getProp32s)

    -- Hooks
import XMonad.Hooks.DynamicLog (dynamicLogWithPP, defaultPP, dzenColor, pad, shorten, PP(..))
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.Place
import XMonad.Hooks.InsertPosition
import XMonad.Hooks.FloatNext (floatNextHook, toggleFloatNext, toggleFloatAllNew)
import XMonad.Hooks.EwmhDesktops

    -- Actions
import XMonad.Actions.Promote
import XMonad.Actions.RotSlaves (rotSlavesDown, rotAllDown)
import XMonad.Actions.CopyWindow (kill1, copyToAll, killAllOtherCopies, runOrCopy)
import XMonad.Actions.WindowGo (runOrRaise, raiseMaybe)
import XMonad.Actions.WithAll (sinkAll, killAll)
import XMonad.Actions.CycleWS (nextScreen, prevScreen, shiftNextScreen,
                               shiftPrevScreen, moveTo, shiftTo, WSType(..))
import XMonad.Actions.GridSelect (GSConfig(..), goToSelected, bringSelected, colorRangeFromClassName, buildDefaultGSConfig)
import XMonad.Actions.DynamicWorkspaces (addWorkspacePrompt, removeEmptyWorkspace)
import XMonad.Actions.Warp (warpToWindow, banishScreen, Corner(LowerRight))
import XMonad.Actions.MouseResize
import qualified XMonad.Actions.ConstrainedResize as Sqr

    -- Layouts modifiers
import XMonad.Layout.PerWorkspace (onWorkspace)
import XMonad.Layout.Renamed (renamed, Rename(CutWordsLeft, Replace))
import XMonad.Layout.WorkspaceDir
import XMonad.Layout.Spacing (spacing)
import XMonad.Layout.Minimize
import XMonad.Layout.Maximize
import XMonad.Layout.BoringWindows (boringWindows)
import XMonad.Layout.LimitWindows (limitWindows, increaseLimit, decreaseLimit)
import XMonad.Layout.WindowArranger (windowArrange, WindowArrangerMsg(..))
import XMonad.Layout.Reflect (reflectVert, reflectHoriz, REFLECTX(..), REFLECTY(..))
import XMonad.Layout.MultiToggle (mkToggle, single, EOT(EOT), Toggle(..), (??))
import XMonad.Layout.MultiToggle.Instances (StdTransformers(NBFULL, MIRROR, NOBORDERS))
import qualified XMonad.Layout.ToggleLayouts as T (toggleLayouts, ToggleLayout(Toggle))

    -- Layouts
import XMonad.Layout.WindowArranger
import XMonad.Layout.LayoutHints
import XMonad.Layout.NoBorders
import XMonad.Layout.Simplest
import XMonad.Layout.Tabbed
import XMonad.Layout.TwoPane
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Grid
import XMonad.Layout.Accordion
import XMonad.Layout.Column
import XMonad.Layout.Reflect
import XMonad.Layout.SimplestFloat
import XMonad.Layout.OneBig
import XMonad.Layout.ResizableTile
import XMonad.Layout.ZoomRow (zoomRow, zoomIn, zoomOut, zoomReset, ZoomMessage(ZoomFullToggle))
import XMonad.Layout.IM (withIM, Property(Role))

    -- Prompts
import XMonad.Prompt (defaultXPConfig, XPConfig(..), XPPosition(Top), Direction1D(..))


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---SETTINGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Styles
myFont          = "-artwiz-snap-normal-*-normal-*-10-*-*-*-*-*-*-*"
myBorderWidth   = 1
myColorBG       = "#151515"
myColorWhite    = "#ebebeb"
myColorRed      = "#C3143B"
myColorGray     = "#545454"
myColorDarkgray = "#353535"

    -- Settings
myModMask       = mod4Mask
myTerminal      = "konsole"

    -- Prompts colors
myPromptConfig =
    defaultXPConfig { font                  = myFont
                    , bgColor               = myColorBG
                    , fgColor               = myColorRed
                    , bgHLight              = myColorBG
                    , fgHLight              = myColorWhite
                    , borderColor           = myColorBG
                    , promptBorderWidth     = myBorderWidth
                    , height                = 20
                    , position              = Top
                    , historySize           = 0
                    }

    -- Grid selector colors
myGridConfig = colorRangeFromClassName
    (0x15,0x15,0x15) -- lowest inactive bg
    (0x15,0x15,0x15) -- highest inactive bg
    (0xC3,0x14,0x3B) -- active bg
    (0x54,0x54,0x54) -- inactive fg
    (0xEB,0xEB,0xEB) -- active fg

myGSConfig colorizer  = (buildDefaultGSConfig myGridConfig)
    { gs_cellheight   = 65
    , gs_cellwidth    = 120
    , gs_cellpadding  = 10
    , gs_font         = myFont
    }


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---SCRATCHPADS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myScratchpads =
              [ NS "terminal"        "konsole"                                      (className =? "Konsole")        myPosition
              , NS "music"           "audacious"                                    (className =? "Audacious")      myPosition
              , NS "google-music"    "seamonkey 'http://music.google.com/'"         (className =? "Seamonkey")      myPosition
              , NS "rtorrent"        "urxvtc_mod -name rtorrent -e rtorrent"        (resource =? "rtorrent")        myPosition
              , NS "calc"            "free42dec"                                    (role =? "Free42 Calculator")   myPosition
              ] where
                myPosition = customFloating $ W.RationalRect (1/3) (1/3) (1/3) (1/3)
                role = stringProperty "WM_WINDOW_ROLE"


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---KEYBINDINGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myKeys =
    -- Xmonad
        [ ("M-C-r",             spawn "xmonad --recompile")
        , ("M-M1-r",            spawn "xmonad --restart")
        , ("M-S-r",             spawn "pkill dzen2 && xmonad --restart")
        , ("M-M1-q",            io exitSuccess)
        , ("M-<Backspace>",     spawn "qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock")


    -- Windows
        , ("M-r",               refresh)
        , ("M-q",               kill1)
        , ("M-C-q",             killAll)
        , ("M-S-q",             killAll >> moveTo Next nonNSP >> killAll >> moveTo Next nonNSP >> killAll >> moveTo Next nonNSP >> killAll >> moveTo Next nonNSP)

        , ("M-t",               withFocused $ windows . W.sink)
        , ("M-S-t",             sinkAll)
        , ("M-s",               windows W.swapMaster)


    -- Layouts
        , ("M-S-<Space>",       sendMessage ToggleStruts)
        , ("M-d",               asks (XMonad.layoutHook . config) >>= setLayout)
        , ("M-<Space>",         sendMessage NextLayout)
        , ("M-S-f",             sendMessage (T.Toggle "float"))
        , ("M-S-g",             sendMessage (T.Toggle "gimp"))
        , ("M-S-x",             sendMessage $ Toggle REFLECTX)
        , ("M-S-y",             sendMessage $ Toggle REFLECTY)
        , ("M-S-m",             sendMessage $ Toggle MIRROR)
        , ("M-S-b",             sendMessage $ Toggle NOBORDERS)
        , ("M-S-d",             sendMessage (Toggle NBFULL) >> sendMessage ToggleStruts)

    -- Workspaces
        , ("M-w",               nextScreen)
        , ("M-e",               prevScreen)
        , ("M-S-w",             shiftNextScreen)
        , ("M-S-e",             shiftPrevScreen)

    -- Modal Bindings
        ,  ("M-u",   submap . mkKeymap myXConfig $
          [("c", spawn "krunner")
         , ("s", windows W.swapMaster)
         , ("r", spawn "xmonad --recompile && pkill dzen2 && xmonad --restart")
         , ("l", submap .  mkKeymap myXConfig $
           [("1", setLayout $ Layout Full)
           ])
         , ("u", submap . mkKeymap myXConfig $
                 [("u", spawn "Xdialog --titlle  'Really, dude?' --screencenter --yesno 'Really, dude?' 10 30")
                ])
          ])

    -- Apps

        , ("M-<Return>",        spawn "konsole")
        , ("M-S-<Return>",      spawn "emacs")
        , ("M-S-C-<Return>",    spawn "emacs --debug-init")
        , ("M-c",               spawn "exe=`dmenu_run -nb '#151515' -nf '#545454' -sb '#C3143B' -sf '#ebebeb' -p 'run:' -i` && eval \"exec $exe\"")
        , ("M-f",               raiseMaybe (runInTerm "-name ranger" "ranger") (resource =? "ranger"))
        , ("M-m",               raiseMaybe (runInTerm "-name mutt" "mutt") (resource =? "mutt"))
        , ("M-v",               raiseMaybe (runInTerm "-name irssi" "irssi") (resource =? "irssi"))
        , ("M-o",               raiseMaybe (runInTerm "-name htop" "htop") (resource =? "htop") >> warpToWindow (1/2) (1/2))
        , ("M-C-f",             runOrCopy "dolphin" (resource =? "dolphin"))
        , ("M-C-<Return>",      runOrRaise "trayerd" (resource =? "trayer"))
        , ("M-M1-f",            runOrCopy "runInTerm  -name ranger -e ranger" (resource =? "ranger"))
        , ("M-M1-t",            runOrCopy "runInTerm  -name newsbeuter -e newsbeuter" (resource =? "newsbeuter"))
        , ("M-M1-v",            runOrCopy "runInTerm  -name irssi -e irssi" (resource =? "irssi"))
        , ("M-M1-o",            runOrCopy "runInTerm  -name htop -e htop" (resource =? "htop") >> warpToWindow (1/2) (1/2))
        , ("M-C-M1-f",          runOrRaise "thunar" (resource =? "thunar"))


    -- Scratchpads
        , ("M-M1-m",               namedScratchpadAction myScratchpads "music" )
        , ("M-C-m",               namedScratchpadAction myScratchpads "google-music" )
        , ("M-M1-c",               namedScratchpadAction myScratchpads "calc" )
        , ("M-M1-<Return>",        namedScratchpadAction myScratchpads "terminal" )
        , ("<XF86Tools>",          namedScratchpadAction myScratchpads "music")

    -- Multimedia Keys
        , ("<XF86AudioPlay>",   spawn "ncmpcpp toggle")
        , ("<XF86AudioPrev>",   spawn "ncmpcpp prev")
        , ("<XF86AudioNext>",   spawn "ncmpcpp next")
        , ("<XF86AudioMute>",   spawn "amixer set Master toggle")
        , ("<XF86AudioLowerVolume>", spawn "amixer set Master 5%- unmute")
        , ("<XF86AudioRaiseVolume>", spawn "amixer set Master 5%+ unmute")
        , ("<XF86HomePage>",    safeSpawn "firefox" ["/home/logan/.config/infoconf.html"])
        , ("<XF86Search>",      safeSpawn "google-chrome" ["https://www.duckduckgo.com/"])
        , ("<XF86Mail>",        runOrRaise "icedove" (resource =? "icedove"))
        , ("<XF86Calculator>",  runOrRaise "speedcrunch" (resource =? "speedcrunch"))
        , ("<XF86Eject>",       spawn "toggleeject")
        , ("<Print>",           spawn "scrot 0")
        ] where nonNSP          = WSIs (return (\ws -> W.tag ws /= "NSP"))
                nonEmptyNonNSP  = WSIs (return (\ws -> isJust (W.stack ws) && W.tag ws /= "NSP"))

myMouseKeys = [ ((mod4Mask .|. shiftMask, button3), \w -> focus w >> Sqr.mouseResizeWindow w True) ]


myModalKeys = [
         ]


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---WORKSPACES
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myWorkspaces = ["1.text", "2.web", "3.media", "4.comms", "5.misc", "6", "7", "8", "9.syst"]

namedScratchpads =
           [
           ]

myManageHook = scratchpadManageHook (W.RationalRect l t w h) <+>
               (composeAll $
         [  className =? "Yakuake"           --> doFloat
          , className =? "Pidgin"            --> doShift "1.text"
          , className =? "Gimp"              --> doShift "5.misc"
         ]
         ++
         [  className =? "Plasma-desktop" --> doFloat
          , className =? "plasmashell"    --> doFloat
          , className =? "plasma-desktop" --> makeMaster <+> doFloat
         ]
         ++
         [   isFullscreen --> doFullFloat
           , isDialog     --> placeHook (inBounds (underMouse (0,0))) <+> makeMaster <+> doFloat

         ])
         <+> namedScratchpadManageHook namedScratchpads
         <+> manageDocks
         <+> makeMaster
         where
           makeMaster = insertPosition Master Newer
           role = stringProperty "WM_WINDOW_ROLE"
           h= 0.4
           w = 0.75
           t = 0.85 - h
           l = 0.87 - w



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---LAYOUTS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mainLayout = avoidStruts $ Mirror three ||| Mirror tiled ||| Grid ||| Accordion ||| Column 1.6 ||| OneBig (3/4) (3/4) ||| tiled ||| three ||| Full
   where
     -- Default tiling algorithm partitions the screen into two panes
     tiled = Tall nmaster delta ratio

     three = ThreeCol 1 (3/100) (1/2)

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proporton of the screen occupied by the master pane
     ratio = 1/2

     -- Percent of screen to increment by when resizing panes
     delta = 3/100

myLayout = mouseResize $
           windowArrange mainLayout

numworkspaces = take 10 [1..]

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---STATUSBAR
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myBitmapsDir = "/home/logan/.xmonad/statusbar/icons"
myXmonadBarL = "dzen2 -x '0' -y '0' -h '16' -w '1000' -ta 'l' -fg '"++myColorWhite++"' -bg '"++myColorBG++"' -fn '"++myFont++"' "
-- myXmonadBarR = "conky -c /home/logan/.xmonad/statusbar/conky_dzen | dzen2 -x '1000' -y '0' -w '680' -h '16' -ta 'r' -bg '"++myColorBG++"' -fg '"++myColorWhite++"' -fn '"++myFont++"'"

myLogHook h  = dynamicLogWithPP $ defaultPP
      { ppOutput           = hPutStrLn h
      , ppCurrent          = dzenColor myColorWhite myColorRed . pad
      , ppHidden           = dzenColor myColorWhite myColorBG  . noScratchPad
      , ppHiddenNoWindows  = dzenColor myColorGray myColorBG   . noScratchPad
      , ppSep              = dzenColor myColorRed myColorBG " | "
      , ppWsSep            = dzenColor myColorRed myColorBG ""
      , ppTitle            = dzenColor myColorWhite myColorBG  . shorten 75
      , ppOrder            = \(ws:l:t:_) -> [ws,l,t]
      , ppLayout           = dzenColor myColorWhite myColorBG  .
                             (\x -> case x of
                                 "oneBig"       -> "^i("++myBitmapsDir++"/mini/nbstack.xbm)"
                                 "tiled"        -> "^i("++myBitmapsDir++"/mini/tile.xbm)"
                                 "lined"        -> "^i("++myBitmapsDir++"/mini/bstack2.xbm)"
                                 "monocle"      -> "^i("++myBitmapsDir++"/mini/monocle.xbm)"
                                 "grid"         -> "^i("++myBitmapsDir++"/mini/grid.xbm)"
                                 "float"        -> "^i("++myBitmapsDir++"/mini/float.xbm)"
                                 "gimp"         -> "^i("++myBitmapsDir++"/fox.xbm)"
                                 "Full"         -> "^i("++myBitmapsDir++"/mini/monocle2.xbm)"
                                 _              -> x
                             )
      } where noScratchPad ws = if ws == "NSP" then "" else pad ws


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---AUTOSTART
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myStartupHook = do
          spawnOnce "xsetroot -cursor_name left_ptr &"
          spawnOnce "unclutter &"
          spawnOnce "compton -bc -t -8 -l -9 -r 6 -o 0.7 -m 1.0 &"
          spawnOnce "pidgin &"
          spawnOnce "yakuake &"
          spawnOnce "xcompmgr -c"

kdeOverride :: Query Bool
kdeOverride = ask >>= \w -> liftX $ do
    override <- getAtom "_KDE_NET_WM_WINDOW_TYPE_OVERRIDE"
    wt <- getProp32s "_NET_WM_WINDOW_TYPE" w
    return $ maybe False (elem $ fromIntegral override) wt

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---CONFIG
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
myXConfig = kde4Config
        { modMask            = myModMask
        , terminal           = myTerminal
        , manageHook         = ((className =? "krunner" <||> className =?
 "Plasma-desktop") >>= return . not --> manageHook kde4Config) <+>
 (kdeOverride --> doFloat) <+> myManageHook
        , layoutHook         = myLayout
--        , logHook            = myLogHook
        , startupHook        = myStartupHook
        , workspaces         = myWorkspaces
        , borderWidth        = myBorderWidth
        , normalBorderColor  = myColorDarkgray
        , focusedBorderColor = myColorWhite
        } `additionalKeysP`         myKeys
          `additionalMouseBindings` myMouseKeys




main = do
    xmonad       $ myXConfig
