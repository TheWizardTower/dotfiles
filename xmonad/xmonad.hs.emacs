import           Data.Monoid
import System.Exit (exitSuccess)
import           XMonad
import           XMonad.Config.Kde
import qualified XMonad.StackSet             as W
import           XMonad.Util.Cursor
import           XMonad.Util.EZConfig
import           XMonad.Actions.CycleWS
import           XMonad.Actions.Warp
import           XMonad.Hooks.DynamicLog
import           XMonad.Hooks.SetWMName
import           XMonad.Hooks.ManageDocks
import           XMonad.Hooks.ManageHelpers
import           XMonad.Layout.Accordion
import           XMonad.Layout.NoBorders
import           XMonad.Layout.Simplest

main = do
  xmonad $ kdeConfig
    { keys                 = myKeys
    , modMask              = mod4Mask
    , workspaces           = myWorkspaces
    , focusFollowsMouse    = False
    , borderWidth          = 2
    , normalBorderColor    = "#202020"
    , focusedBorderColor   = "#808080"
    , layoutHook           = myLayout
    , logHook              = myLogHook
    , manageHook           = manageHook kdeConfig <+> myManageHook
    , startupHook          = myStartupHook
    , handleEventHook      = myEventHook
    }

myWorkspaces = map show [1..9]

myLogHook =
  dynamicLogString defaultPP >>= xmonadPropLog

myLayout = (myTall ||| myMTall ||| mySimplest ||| myAccordion) where
  myTall      = avoidStruts $ Tall 1 0.1 0.5
  myMTall     = avoidStruts $ Mirror $ Tall 1 0.1 0.5
  myAccordion = avoidStruts $ noBorders $ Accordion
  mySimplest  = noBorders Simplest

myKeys = \c -> mkKeymap c $
  [ ("M-w p",             windows $ W.focusUp)
  , ("M-w n",             windows $ W.focusDown)
  , ("M-w m",             windows $ W.focusMaster)
  , ("M-w S-p",           windows $ W.swapUp)
  , ("M-w S-n",           windows $ W.swapDown)
  , ("M-w S-m",           windows $ W.swapMaster)
  , ("M-w s",             withFocused $ windows . W.sink)
  , ("M-w c",             kill)
  , ("M-w <Space>",       shiftTo Next EmptyWS)
  , ("M-w <Tab>",         shiftNextScreen)
  , ("M-<Space> e",       moveTo Next EmptyWS)
  , ("M-<Space> p",       moveTo Prev HiddenNonEmptyWS)
  , ("M-<Space> n",       moveTo Next HiddenNonEmptyWS)
  , ("M-<Space> t",       toggleWS)
  , ("M-<Space> <Tab>",   nextScreen)
  , ("M-<Space> <Space>", swapNextScreen)
  , ("M-<Return>",        sendMessage NextLayout)
  , ("M-b c",             warpToWindow 0.5 0.5)
  , ("M-C-r",             spawn "xmonad --recompile")
  , ("M-M1-r",            spawn "xmonad --restart")
  , ("M-S-r",             spawn "pkill dzen && xmonad --restart")
  , ("M-M1-q",            io exitSuccess)
  ]

myEventHook = mempty

myManageHook = composeOne $ concat
  [ [ transience ]
  , [ appName  =? x -?> doIgnore       | x <- myIgnore ]
  , [ appName  =? x -?> doCenterFloat  | x <- myFloat  ]
  , [ isDialog      -?> doCenterFloat ]
  ] where
    myFloat  = ["Dialog"]
    myIgnore = ["Conky"]

myStartupHook = do
  setDefaultCursor xC_plus
