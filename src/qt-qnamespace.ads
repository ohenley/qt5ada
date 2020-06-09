--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2016,2018            บ
-- บ Copyright (C) 2012,2015,2016,2018                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QNamespace is

  color0               : constant :=  0;
  color1               : constant :=  1;
  black                : constant :=  2;
  white                : constant :=  3;
  darkGray             : constant :=  4;
  gray                 : constant :=  5;
  lightGray            : constant :=  6;
  red                  : constant :=  7;
  green                : constant :=  8;
  blue                 : constant :=  9;
  cyan                 : constant := 10;
  magenta              : constant := 11;
  yellow               : constant := 12;
  darkRed              : constant := 13;
  darkGreen            : constant := 14;
  darkBlue             : constant := 15;
  darkCyan             : constant := 16;
  darkMagenta          : constant := 17;
  darkYellow           : constant := 18;
  transparent          : constant := 19;

  NoModifier           : constant := 16#00000000#;
  ShiftModifier        : constant := 16#02000000#;
  ControlModifier      : constant := 16#04000000#;
  AltModifier          : constant := 16#08000000#;
  MetaModifier         : constant := 16#10000000#;
  KeypadModifier       : constant := 16#20000000#;
  GroupSwitchModifier  : constant := 16#40000000#;
-- Do not extend the mask to include 0x01000000
  KeyboardModifierMask : constant := 16#fe000000#;

--    shorter names for shortcuts

  META          : constant := MetaModifier;
  SHIFT         : constant := ShiftModifier;
  CTRL          : constant := ControlModifier;
  ALT           : constant := AltModifier;
  MODIFIER_MASK : constant := KeyboardModifierMask;
  UNICODE_ACCEL : constant := 0;

--  MouseButton 
    NoButton         : constant := 16#00000000#;
    LeftButton       : constant := 16#00000001#;
    RightButton      : constant := 16#00000002#;
    MidButton        : constant := 16#00000004#; -- ### Qt 6: remove me
    MiddleButton     : constant := MidButton;
    BackButton       : constant := 16#00000008#;
    XButton1         : constant := BackButton;
    ExtraButton1     : constant := XButton1;
    ForwardButton    : constant := 16#00000010#;
    XButton2         : constant := ForwardButton;
    ExtraButton2     : constant := ForwardButton;
    TaskButton       : constant := 16#00000020#;
    ExtraButton3     : constant := TaskButton;
    ExtraButton4     : constant := 16#00000040#;
    ExtraButton5     : constant := 16#00000080#;
    ExtraButton6     : constant := 16#00000100#;
    ExtraButton7     : constant := 16#00000200#;
    ExtraButton8     : constant := 16#00000400#;
    ExtraButton9     : constant := 16#00000800#;
    ExtraButton10    : constant := 16#00001000#;
    ExtraButton11    : constant := 16#00002000#;
    ExtraButton12    : constant := 16#00004000#;
    ExtraButton13    : constant := 16#00008000#;
    ExtraButton14    : constant := 16#00010000#;
    ExtraButton15    : constant := 16#00020000#;
    ExtraButton16    : constant := 16#00040000#;
    ExtraButton17    : constant := 16#00080000#;
    ExtraButton18    : constant := 16#00100000#;
    ExtraButton19    : constant := 16#00200000#;
    ExtraButton20    : constant := 16#00400000#;
    ExtraButton21    : constant := 16#00800000#;
    ExtraButton22    : constant := 16#01000000#;
    ExtraButton23    : constant := 16#02000000#;
    ExtraButton24    : constant := 16#04000000#;
    AllButtons       : constant := 16#07ffffff#;
    MaxMouseButton   : constant := ExtraButton24;
    -- 4 high-order bits remain available for future use (0x08000000 through 0x40000000).
    MouseButtonMask  : constant := 16#ffffffff#;

    -- Orientation  
    Horizontal :constant := 1;
    Vertical   :constant := 2;

    -- FocusPolicy 
    NoFocus    :constant := 0;
    TabFocus   :constant := 1;
    ClickFocus :constant := 2;
    StrongFocus:constant := TabFocus + ClickFocus + 8;
    WheelFocus :constant := StrongFocus +4;

--  SortOrder  
    AscendingOrder  :constant := 0;       
    DescendingOrder :constant := 1;       

--  TileRule 
    StretchTile     :constant := 0;        
    RepeatTile      :constant := 1;        
    RoundTile       :constant := 2;        

--  AlignmentFlag  
    AlignLeft            : constant := 16#0001#;
    AlignLeading         : constant := AlignLeft;
    AlignRight           : constant := 16#0002#;
    AlignTrailing        : constant := AlignRight;
    AlignHCenter         : constant := 16#0004#;
    AlignJustify         : constant := 16#0008#;
    AlignAbsolute        : constant := 16#0010#;
    AlignHorizontal_Mask : constant := AlignLeft + AlignRight + AlignHCenter + AlignJustify + AlignAbsolute;

    AlignTop           : constant := 16#0020#;
    AlignBottom        : constant := 16#0040#;
    AlignVCenter       : constant := 16#0080#;
    AlignVertical_Mask : constant := AlignTop + AlignBottom + AlignVCenter;
    AlignCenter        : constant := AlignVCenter + AlignHCenter;

--  TextFlag  
    TextSingleLine            : constant := 16#0100#;
    TextDontClip              : constant := 16#0200#;
    TextExpandTabs            : constant := 16#0400#;
    TextShowMnemonic          : constant := 16#0800#;
    TextWordWrap              : constant := 16#1000#;
    TextWrapAnywhere          : constant := 16#2000#;
    TextDontPrint             : constant := 16#4000#;
    TextIncludeTrailingSpaces : constant := 16#08000000#;
    TextHideMnemonic          : constant := 16#8000#;
    TextJustificationForced   : constant := 16#10000#;
    TextForceLeftToRight      : constant := 16#20000#;
    TextForceRightToLeft      : constant := 16#40000#;
    TextLongestVariant        : constant := 16#80000#;
    TextBypassShaping         : constant := 16#100000#;

--  TextElideMode  
    ElideLeft   : constant := 0;
    ElideRight  : constant := 1;
    ElideMiddle : constant := 2;
    ElideNone   : constant := 3;

--  WindowType  
     Widget                       : constant := 16#00000000#;
     Window                       : constant := 16#00000001#;
     Dialog                       : constant := 16#00000002# + Window;
     Sheet                        : constant := 16#00000004# + Window;
     Drawer                       : constant := Sheet + Dialog;
     Popup                        : constant := 16#00000008# + Window;
     Tool                         : constant := Popup + Dialog;
     ToolTip                      : constant := Popup + Sheet;
     SplashScreen                 : constant := ToolTip + Dialog;
     Desktop                      : constant := 16#00000010# + Window;
     SubWindow                    : constant := 16#00000012#; 

     WindowType_Mask              : constant := 16#000000ff#;
     MSWindowsFixedSizeDialogHint : constant := 16#00000100#;
     MSWindowsOwnDC               : constant := 16#00000200#;
     X11BypassWindowManagerHint   : constant := 16#00000400#;
     FramelessWindowHint          : constant := 16#00000800#;
     WindowTitleHint              : constant := 16#00001000#;
     WindowSystemMenuHint         : constant := 16#00002000#;
     WindowMinimizeButtonHint     : constant := 16#00004000#;
     WindowMaximizeButtonHint     : constant := 16#00008000#;
     WindowMinMaxButtonsHint      : constant := WindowMinimizeButtonHint + WindowMaximizeButtonHint;
     WindowContextHelpButtonHint  : constant := 16#00010000#;
     WindowShadeButtonHint        : constant := 16#00020000#;
     WindowStaysOnTopHint         : constant := 16#00040000#;
     WindowTransparentForInput    : constant := 16#00080000#;
     WindowOverridesSystemGestures: constant := 16#00100000#;
     WindowDoesNotAcceptFocus     : constant := 16#00200000#;

     CustomizeWindowHint          : constant := 16#02000000#;
     WindowStaysOnBottomHint      : constant := 16#04000000#;
     WindowCloseButtonHint        : constant := 16#08000000#;
     MacWindowToolBarButtonHint   : constant := 16#10000000#;
     BypassGraphicsProxyWidget    : constant := 16#20000000#;
     WindowOkButtonHint           : constant := 16#00080000#;
     WindowCancelButtonHint       : constant := 16#00100000#;
     WindowSoftkeysVisibleHint    : constant := 16#40000000#;
    
-- WindowState 
        WindowNoState    : constant := 16#00000000#;
        WindowMinimized  : constant := 16#00000001#;
        WindowMaximized  : constant := 16#00000002#;
        WindowFullScreen : constant := 16#00000004#;
        WindowActive     : constant := 16#00000008#;

--   ScreenOrientation 
        PrimaryOrientation           : constant := 16#00000000#;
        PortraitOrientation          : constant := 16#00000001#;
        LandscapeOrientation         : constant := 16#00000002#;
        InvertedPortraitOrientation  : constant := 16#00000004#;
        InvertedLandscapeOrientation : constant := 16#00000008#;

--  WidgetAttribute 
        WA_Disabled           : constant := 0;
        WA_UnderMouse         : constant := 1;
        WA_MouseTracking      : constant := 2;
        WA_ContentsPropagated : constant := 3; -- ## deprecated
        WA_OpaquePaintEvent   : constant := 4;
        WA_NoBackground       : constant := WA_OpaquePaintEvent; -- ## deprecated
        WA_StaticContents     : constant := 5;
        WA_LaidOut            : constant := 7;
        WA_PaintOnScreen      : constant := 8;
        WA_NoSystemBackground : constant := 9;
        WA_UpdatesDisabled    : constant := 10;
        WA_Mapped : constant  := 11;
        WA_MacNoClickThrough  : constant := 12; -- Mac only
        WA_InputMethodEnabled : constant := 14;
        WA_WState_Visible     : constant := 15;
        WA_WState_Hidden      : constant := 16;

        WA_ForceDisabled      : constant := 32;
        WA_KeyCompression     : constant := 33;
        WA_PendingMoveEvent   : constant := 34;
        WA_PendingResizeEvent : constant := 35;
        WA_SetPalette         : constant := 36;
        WA_SetFont            : constant := 37;
        WA_SetCursor          : constant := 38;
        WA_NoChildEventsFromChildren : constant := 39;
        WA_WindowModified     : constant := 41;
        WA_Resized            : constant := 42;
        WA_Moved              : constant := 43;
        WA_PendingUpdate      : constant := 44;
        WA_InvalidSize        : constant := 45;
        WA_MacBrushedMetal    : constant := 46; -- Mac only
        WA_MacMetalStyle      : constant := WA_MacBrushedMetal; -- obsolete
        WA_CustomWhatsThis    : constant := 47;
        WA_LayoutOnEntireRect : constant := 48;
        WA_OutsideWSRange     : constant := 49;
        WA_GrabbedShortcut    : constant := 50;
        WA_TransparentForMouseEvents : constant := 51;
        WA_PaintUnclipped     : constant := 52;
        WA_SetWindowIcon      : constant := 53;
        WA_NoMouseReplay      : constant := 54;
        WA_DeleteOnClose      : constant := 55;
        WA_RightToLeft        : constant := 56;
        WA_SetLayoutDirection : constant := 57;
        WA_NoChildEventsForParent : constant := 58;
        WA_ForceUpdatesDisabled : constant := 59;

        WA_WState_Created     : constant := 60;
        WA_WState_CompressKeys: constant := 61;
        WA_WState_InPaintEvent: constant := 62;
        WA_WState_Reparented  : constant := 63;
        WA_WState_ConfigPending : constant := 64;
        WA_WState_Polished    : constant := 66;
        WA_WState_DND         : constant := 67; -- ## deprecated
        WA_WState_OwnSizePolicy : constant := 68;
        WA_WState_ExplicitShowHide : constant := 69;

        WA_ShowModal          : constant := 70; -- ## deprecated
        WA_MouseNoMask        : constant := 71;
        WA_GroupLeader        : constant := 72; -- ## deprecated
        WA_NoMousePropagation : constant := 73; -- ## for now; might go away.
        WA_Hover              : constant := 74;
        WA_InputMethodTransparent : constant := 75; -- Don't reset IM when user clicks on this (for virtual keyboards on embedded)
        WA_QuitOnClose        : constant := 76;

        WA_KeyboardFocusChange: constant := 77;

        WA_AcceptDrops        : constant := 78;
        WA_DropSiteRegistered : constant := 79; -- internal
        WA_ForceAcceptDrops   : constant := WA_DropSiteRegistered; -- ## deprecated

        WA_WindowPropagation  : constant := 80;

        WA_NoX11EventCompression : constant := 81;
        WA_TintedBackground   : constant := 82;
        WA_X11OpenGLOverlay   : constant := 83;
        WA_AlwaysShowToolTips : constant := 84;
        WA_MacOpaqueSizeGrip  : constant := 85;
        WA_SetStyle           : constant := 86;

        WA_SetLocale          : constant := 87;
        WA_MacShowFocusRect   : constant := 88;

        WA_MacNormalSize      : constant := 89;  -- Mac only
        WA_MacSmallSize       : constant := 90;   -- Mac only
        WA_MacMiniSize        : constant := 91;    -- Mac only

        WA_LayoutUsesWidgetRect : constant := 92;
        WA_StyledBackground  : constant := 93; -- internal
        WA_MSWindowsUseDirect3D : constant := 94; -- Win only
        WA_CanHostQMdiSubWindowTitleBar : constant := 95; -- Internal

        WA_MacAlwaysShowToolWindow : constant := 96; -- Mac only
        WA_StyleSheet         : constant := 97; -- internal
        WA_ShowWithoutActivating : constant := 98;
        WA_X11BypassTransientForHint : constant := 99;
        WA_NativeWindow       : constant := 100;
        WA_DontCreateNativeAncestors : constant := 101;
        WA_MacVariableSize    : constant := 102;    -- Mac only
        WA_DontShowOnScreen   : constant := 103;

        -- window types from http:--standards.freedesktop.org/wm-spec/
        WA_X11NetWmWindowTypeDesktop      : constant := 104;
        WA_X11NetWmWindowTypeDock         : constant := 105;
        WA_X11NetWmWindowTypeToolBar      : constant := 106;
        WA_X11NetWmWindowTypeMenu         : constant := 107;
        WA_X11NetWmWindowTypeUtility      : constant := 108;
        WA_X11NetWmWindowTypeSplash       : constant := 109;
        WA_X11NetWmWindowTypeDialog       : constant := 110;
        WA_X11NetWmWindowTypeDropDownMenu : constant := 111;
        WA_X11NetWmWindowTypePopupMenu    : constant := 112;
        WA_X11NetWmWindowTypeToolTip      : constant := 113;
        WA_X11NetWmWindowTypeNotification : constant := 114;
        WA_X11NetWmWindowTypeCombo        : constant := 115;
        WA_X11NetWmWindowTypeDND          : constant := 116;

        WA_MacFrameworkScaled             : constant := 117;

        WA_SetWindowModality              : constant := 118;
        WA_WState_WindowOpacitySet        : constant := 119; -- internal
        WA_TranslucentBackground          : constant := 120;

        WA_AcceptTouchEvents              : constant := 121;
        WA_WState_AcceptedTouchBeginEvent : constant := 122;
        WA_TouchPadAcceptSingleTouchEvents: constant := 123;

        WA_MergeSoftkeys                  : constant :=  124;
        WA_MergeSoftkeysRecursively       : constant :=  125;

        WA_X11DoNotAcceptFocus            : constant := 126;
        WA_MacNoShadow                    : constant := 127;
        WA_AlwaysStackOnTop               : constant := 128;
        -- Add new attributes before this line
        WA_AttributeCount                 : constant := 129; 

    -- Image conversion flags.  The unusual ordering is caused by
    -- compatibility and default requirements.

  -- ImageConversionFlag 
        ColorMode_Mask          : constant := 16#00000003#;
        AutoColor               : constant := 16#00000000#;
        ColorOnly               : constant := 16#00000003#;
        MonoOnly                : constant := 16#00000002#;
        -- Reserved             : constant := 16#00000001#;

        AlphaDither_Mask        : constant := 16#0000000c#;
        ThresholdAlphaDither    : constant := 16#00000000#;
        OrderedAlphaDither      : constant := 16#00000004#;
        DiffuseAlphaDither      : constant := 16#00000008#;
        NoAlpha                 : constant := 16#0000000c#; -- Not supported

        Dither_Mask             : constant := 16#00000030#;
        DiffuseDither           : constant := 16#00000000#;
        OrderedDither           : constant := 16#00000010#;
        ThresholdDither         : constant := 16#00000020#;
        -- ReservedDither       : constant := 16#00000030#;

        DitherMode_Mask         : constant := 16#000000c0#;
        AutoDither              : constant := 16#00000000#;
        PreferDither            : constant := 16#00000040#;
        AvoidDither             : constant := 16#00000080#;

        NoOpaqueDetection       : constant := 16#00000100#;
        NoFormatConversion      : constant := 16#00000200#;

  -- BGMode 
        TransparentMode : constant := 0;
        OpaqueMode      : constant := 0;

  -- Key 
        Key_Escape     : constant := 16#01000000#;                -- misc keys
        Key_Tab        : constant := 16#01000001#;
        Key_Backtab    : constant := 16#01000002#;
        Key_Backspace  : constant := 16#01000003#;
        Key_Return     : constant := 16#01000004#;
        Key_Enter      : constant := 16#01000005#;
        Key_Insert     : constant := 16#01000006#;
        Key_Delete     : constant := 16#01000007#;
        Key_Pause      : constant := 16#01000008#;
        Key_Print      : constant := 16#01000009#;
        Key_SysReq     : constant := 16#0100000a#;
        Key_Clear      : constant := 16#0100000b#;
        Key_Home       : constant := 16#01000010#;                -- cursor movement
        Key_End        : constant := 16#01000011#;
        Key_Left       : constant := 16#01000012#;
        Key_Up         : constant := 16#01000013#;
        Key_Right      : constant := 16#01000014#;
        Key_Down       : constant := 16#01000015#;
        Key_PageUp     : constant := 16#01000016#;
        Key_PageDown   : constant := 16#01000017#;
        Key_Shift      : constant := 16#01000020#;                -- modifiers
        Key_Control    : constant := 16#01000021#;
        Key_Meta       : constant := 16#01000022#;
        Key_Alt        : constant := 16#01000023#;
        Key_CapsLock   : constant := 16#01000024#;
        Key_NumLock    : constant := 16#01000025#;
        Key_ScrollLock : constant := 16#01000026#;
        Key_F1         : constant := 16#01000030#;                -- function keys
        Key_F2         : constant := 16#01000031#;
        Key_F3         : constant := 16#01000032#;
        Key_F4         : constant := 16#01000033#;
        Key_F5         : constant := 16#01000034#;
        Key_F6         : constant := 16#01000035#;
        Key_F7         : constant := 16#01000036#;
        Key_F8         : constant := 16#01000037#;
        Key_F9         : constant := 16#01000038#;
        Key_F10        : constant := 16#01000039#;
        Key_F11        : constant := 16#0100003a#;
        Key_F12        : constant := 16#0100003b#;
        Key_F13        : constant := 16#0100003c#;
        Key_F14        : constant := 16#0100003d#;
        Key_F15        : constant := 16#0100003e#;
        Key_F16        : constant := 16#0100003f#;
        Key_F17        : constant := 16#01000040#;
        Key_F18        : constant := 16#01000041#;
        Key_F19        : constant := 16#01000042#;
        Key_F20        : constant := 16#01000043#;
        Key_F21        : constant := 16#01000044#;
        Key_F22        : constant := 16#01000045#;
        Key_F23        : constant := 16#01000046#;
        Key_F24        : constant := 16#01000047#;
        Key_F25        : constant := 16#01000048#; -- F25 .. F35 only on X11
        Key_F26        : constant := 16#01000049#;
        Key_F27        : constant := 16#0100004a#;
        Key_F28        : constant := 16#0100004b#;
        Key_F29        : constant := 16#0100004c#;
        Key_F30        : constant := 16#0100004d#;
        Key_F31        : constant := 16#0100004e#;
        Key_F32        : constant := 16#0100004f#;
        Key_F33        : constant := 16#01000050#;
        Key_F34        : constant := 16#01000051#;
        Key_F35        : constant := 16#01000052#;
        Key_Super_L    : constant := 16#01000053#;  -- extra keys
        Key_Super_R    : constant := 16#01000054#;
        Key_Menu       : constant := 16#01000055#;
        Key_Hyper_L    : constant := 16#01000056#;
        Key_Hyper_R    : constant := 16#01000057#;
        Key_Help       : constant := 16#01000058#;
        Key_Direction_L: constant := 16#01000059#;
        Key_Direction_R: constant := 16#01000060#;
        Key_Space      : constant := 16#20#;                -- 7 bit printable ASCII
        Key_Any        : constant := Key_Space;
        Key_Exclam     : constant := 16#21#;
        Key_QuoteDbl   : constant := 16#22#;
        Key_NumberSign : constant := 16#23#;
        Key_Dollar     : constant := 16#24#;
        Key_Percent    : constant := 16#25#;
        Key_Ampersand  : constant := 16#26#;
        Key_Apostrophe : constant := 16#27#;
        Key_ParenLeft  : constant := 16#28#;
        Key_ParenRight : constant := 16#29#;
        Key_Asterisk   : constant := 16#2a#;
        Key_Plus       : constant := 16#2b#;
        Key_Comma      : constant := 16#2c#;
        Key_Minus      : constant := 16#2d#;
        Key_Period     : constant := 16#2e#;
        Key_Slash      : constant := 16#2f#;
        Key_0          : constant := 16#30#;
        Key_1          : constant := 16#31#;
        Key_2          : constant := 16#32#;
        Key_3          : constant := 16#33#;
        Key_4          : constant := 16#34#;
        Key_5          : constant := 16#35#;
        Key_6          : constant := 16#36#;
        Key_7          : constant := 16#37#;
        Key_8          : constant := 16#38#;
        Key_9          : constant := 16#39#;
        Key_Colon      : constant := 16#3a#;
        Key_Semicolon  : constant := 16#3b#;
        Key_Less       : constant := 16#3c#;
        Key_Equal      : constant := 16#3d#;
        Key_Greater    : constant := 16#3e#;
        Key_Question   : constant := 16#3f#;
        Key_At         : constant := 16#40#;
        Key_A          : constant := 16#41#;
        Key_B          : constant := 16#42#;
        Key_C          : constant := 16#43#;
        Key_D          : constant := 16#44#;
        Key_E          : constant := 16#45#;
        Key_F          : constant := 16#46#;
        Key_G          : constant := 16#47#;
        Key_H          : constant := 16#48#;
        Key_I          : constant := 16#49#;
        Key_J          : constant := 16#4a#;
        Key_K          : constant := 16#4b#;
        Key_L          : constant := 16#4c#;
        Key_M          : constant := 16#4d#;
        Key_N          : constant := 16#4e#;
        Key_O          : constant := 16#4f#;
        Key_P          : constant := 16#50#;
        Key_Q          : constant := 16#51#;
        Key_R          : constant := 16#52#;
        Key_S          : constant := 16#53#;
        Key_T          : constant := 16#54#;
        Key_U          : constant := 16#55#;
        Key_V          : constant := 16#56#;
        Key_W          : constant := 16#57#;
        Key_X          : constant := 16#58#;
        Key_Y          : constant := 16#59#;
        Key_Z          : constant := 16#5a#;

        Key_BracketLeft  : constant := 16#5b#;
        Key_Backslash    : constant := 16#5c#;
        Key_BracketRight : constant := 16#5d#;
        Key_AsciiCircum  : constant := 16#5e#;
        Key_Underscore   : constant := 16#5f#;
        Key_QuoteLeft    : constant := 16#60#;
        Key_BraceLeft    : constant := 16#7b#;
        Key_Bar          : constant := 16#7c#;
        Key_BraceRight   : constant := 16#7d#;
        Key_AsciiTilde   : constant := 16#7e#;

        Key_nobreakspace : constant := 16#0a0#;
        Key_exclamdown   : constant := 16#0a1#;
        Key_cent         : constant := 16#0a2#;
        Key_sterling     : constant := 16#0a3#;
        Key_currency     : constant := 16#0a4#;
        Key_yen          : constant := 16#0a5#;
        Key_brokenbar    : constant := 16#0a6#;
        Key_section      : constant := 16#0a7#;
        Key_diaeresis    : constant := 16#0a8#;
        Key_copyright    : constant := 16#0a9#;
        Key_ordfeminine  : constant := 16#0aa#;
        Key_guillemotleft: constant := 16#0ab#;  -- left angle quotation mark
        Key_notsign      : constant := 16#0ac#;
        Key_hyphen       : constant := 16#0ad#;
        Key_registered   : constant := 16#0ae#;
        Key_macron       : constant := 16#0af#;
        Key_degree       : constant := 16#0b0#;
        Key_plusminus    : constant := 16#0b1#;
        Key_twosuperior  : constant := 16#0b2#;
        Key_threesuperior: constant := 16#0b3#;
        Key_acute        : constant := 16#0b4#;
        Key_mu           : constant := 16#0b5#;
        Key_paragraph    : constant := 16#0b6#;
        Key_periodcentered : constant := 16#0b7#;
        Key_cedilla      : constant := 16#0b8#;
        Key_onesuperior  : constant := 16#0b9#;
        Key_masculine    : constant := 16#0ba#;
        Key_guillemotright : constant := 16#0bb#;        -- right angle quotation mark
        Key_onequarter   : constant := 16#0bc#;
        Key_onehalf      : constant := 16#0bd#;
        Key_threequarters: constant := 16#0be#;
        Key_questiondown : constant := 16#0bf#;
        Key_Agrave       : constant := 16#0c0#;
        Key_Aacute       : constant := 16#0c1#;
        Key_Acircumflex  : constant := 16#0c2#;
        Key_Atilde       : constant := 16#0c3#;
        Key_Adiaeresis   : constant := 16#0c4#;
        Key_Aring        : constant := 16#0c5#;
        Key_AE           : constant := 16#0c6#;
        Key_Ccedilla     : constant := 16#0c7#;
        Key_Egrave       : constant := 16#0c8#;
        Key_Eacute       : constant := 16#0c9#;
        Key_Ecircumflex  : constant := 16#0ca#;
        Key_Ediaeresis   : constant := 16#0cb#;
        Key_Igrave       : constant := 16#0cc#;
        Key_Iacute       : constant := 16#0cd#;
        Key_Icircumflex  : constant := 16#0ce#;
        Key_Idiaeresis   : constant := 16#0cf#;
        Key_ETH          : constant := 16#0d0#;
        Key_Ntilde       : constant := 16#0d1#;
        Key_Ograve       : constant := 16#0d2#;
        Key_Oacute       : constant := 16#0d3#;
        Key_Ocircumflex  : constant := 16#0d4#;
        Key_Otilde       : constant := 16#0d5#;
        Key_Odiaeresis   : constant := 16#0d6#;
        Key_multiply     : constant := 16#0d7#;
        Key_Ooblique     : constant := 16#0d8#;
        Key_Ugrave       : constant := 16#0d9#;
        Key_Uacute       : constant := 16#0da#;
        Key_Ucircumflex  : constant := 16#0db#;
        Key_Udiaeresis   : constant := 16#0dc#;
        Key_Yacute       : constant := 16#0dd#;
        Key_THORN        : constant := 16#0de#;
        Key_ssharp       : constant := 16#0df#;
        Key_division     : constant := 16#0f7#;
        Key_ydiaeresis   : constant := 16#0ff#;

        -- International input method support (X keycode - 16#EE00#; the
        -- definition follows Qt/Embedded 2.3.7) Only interesting if
        -- you are writing your own input method

        -- International & multi-key character composition
        Key_AltGr               : constant := 16#01001103#;
        Key_Multi_key           : constant := 16#01001120#;  -- Multi-key character compose
        Key_Codeinput           : constant := 16#01001137#;
        Key_SingleCandidate     : constant := 16#0100113c#;
        Key_MultipleCandidate   : constant := 16#0100113d#;
        Key_PreviousCandidate   : constant := 16#0100113e#;

        -- Misc Functions
        Key_Mode_switch         : constant := 16#0100117e#;  -- Character set switch
        --Key_script_switch       : constant := 16#0100117e#;  -- Alias for mode_switch

        -- Japanese keyboard support
        Key_Kanji               : constant := 16#01001121#;  -- Kanji#; Kanji convert
        Key_Muhenkan            : constant := 16#01001122#;  -- Cancel Conversion
        --Key_Henkan_Mode         : constant := 16#01001123#;  -- Start/Stop Conversion
        Key_Henkan              : constant := 16#01001123#;  -- Alias for Henkan_Mode
        Key_Romaji              : constant := 16#01001124#;  -- to Romaji
        Key_Hiragana            : constant := 16#01001125#;  -- to Hiragana
        Key_Katakana            : constant := 16#01001126#;  -- to Katakana
        Key_Hiragana_Katakana   : constant := 16#01001127#;  -- Hiragana/Katakana toggle
        Key_Zenkaku             : constant := 16#01001128#;  -- to Zenkaku
        Key_Hankaku             : constant := 16#01001129#;  -- to Hankaku
        Key_Zenkaku_Hankaku     : constant := 16#0100112a#;  -- Zenkaku/Hankaku toggle
        Key_Touroku             : constant := 16#0100112b#;  -- Add to Dictionary
        Key_Massyo              : constant := 16#0100112c#;  -- Delete from Dictionary
        Key_Kana_Lock           : constant := 16#0100112d#;  -- Kana Lock
        Key_Kana_Shift          : constant := 16#0100112e#;  -- Kana Shift
        Key_Eisu_Shift          : constant := 16#0100112f#;  -- Alphanumeric Shift
        Key_Eisu_toggle         : constant := 16#01001130#;  -- Alphanumeric toggle
        --Key_Kanji_Bangou        : constant := 16#01001137#;  -- Codeinput
        --Key_Zen_Koho            : constant := 16#0100113d#;  -- Multiple/All Candidate(s)
        --Key_Mae_Koho            : constant := 16#0100113e#;  -- Previous Candidate

        -- Korean keyboard support
        --
        -- In fact#; many Korean users need only 2 keys#; Key_Hangul and
        -- Key_Hangul_Hanja. But rest of the keys are good for future.

        Key_Hangul              : constant := 16#01001131#;  -- Hangul start/stop(toggle)
        Key_Hangul_Start        : constant := 16#01001132#;  -- Hangul start
        Key_Hangul_End          : constant := 16#01001133#;  -- Hangul end#; English start
        Key_Hangul_Hanja        : constant := 16#01001134#;  -- Start Hangul->Hanja Conversion
        Key_Hangul_Jamo         : constant := 16#01001135#;  -- Hangul Jamo mode
        Key_Hangul_Romaja       : constant := 16#01001136#;  -- Hangul Romaja mode
        --Key_Hangul_Codeinput    : constant := 16#01001137#;  -- Hangul code input mode
        Key_Hangul_Jeonja       : constant := 16#01001138#;  -- Jeonja mode
        Key_Hangul_Banja        : constant := 16#01001139#;  -- Banja mode
        Key_Hangul_PreHanja     : constant := 16#0100113a#;  -- Pre Hanja conversion
        Key_Hangul_PostHanja    : constant := 16#0100113b#;  -- Post Hanja conversion
        --Key_Hangul_SingleCandidate   : constant := 16#0100113c#;  -- Single candidate
        --Key_Hangul_MultipleCandidate : constant := 16#0100113d#;  -- Multiple candidate
        --Key_Hangul_PreviousCandidate : constant := 16#0100113e#;  -- Previous candidate
        Key_Hangul_Special      : constant := 16#0100113f#;  -- Special symbols
        --Key_Hangul_switch       : constant := 16#0100117e#;  -- Alias for mode_switch

        -- dead keys (X keycode - 16#ED00 to avoid the conflict)
        Key_Dead_Grave          : constant := 16#01001250#;
        Key_Dead_Acute          : constant := 16#01001251#;
        Key_Dead_Circumflex     : constant := 16#01001252#;
        Key_Dead_Tilde          : constant := 16#01001253#;
        Key_Dead_Macron         : constant := 16#01001254#;
        Key_Dead_Breve          : constant := 16#01001255#;
        Key_Dead_Abovedot       : constant := 16#01001256#;
        Key_Dead_Diaeresis      : constant := 16#01001257#;
        Key_Dead_Abovering      : constant := 16#01001258#;
        Key_Dead_Doubleacute    : constant := 16#01001259#;
        Key_Dead_Caron          : constant := 16#0100125a#;
        Key_Dead_Cedilla        : constant := 16#0100125b#;
        Key_Dead_Ogonek         : constant := 16#0100125c#;
        Key_Dead_Iota           : constant := 16#0100125d#;
        Key_Dead_Voiced_Sound   : constant := 16#0100125e#;
        Key_Dead_Semivoiced_Sound : constant := 16#0100125f#;
        Key_Dead_Belowdot       : constant := 16#01001260#;
        Key_Dead_Hook           : constant := 16#01001261#;
        Key_Dead_Horn           : constant := 16#01001262#;

        -- multimedia/internet keys - ignored by default - see QKeyEvent c'tor
        Key_Back                 : constant := 16#01000061#;
        Key_Forward              : constant := 16#01000062#;
        Key_Stop                 : constant := 16#01000063#;
        Key_Refresh              : constant := 16#01000064#;
        Key_VolumeDown           : constant := 16#01000070#;
        Key_VolumeMute           : constant := 16#01000071#;
        Key_VolumeUp             : constant := 16#01000072#;
        Key_BassBoost            : constant := 16#01000073#;
        Key_BassUp               : constant := 16#01000074#;
        Key_BassDown             : constant := 16#01000075#;
        Key_TrebleUp             : constant := 16#01000076#;
        Key_TrebleDown           : constant := 16#01000077#;
        Key_MediaPlay            : constant := 16#01000080#;
        Key_MediaStop            : constant := 16#01000081#;
        Key_MediaPrevious        : constant := 16#01000082#;
        Key_MediaNext            : constant := 16#01000083#;
        Key_MediaRecord          : constant := 16#01000084#;
        Key_MediaPause           : constant := 16#1000085#;
        Key_MediaTogglePlayPause : constant := 16#1000086#;
        Key_HomePage             : constant := 16#01000090#;
        Key_Favorites            : constant := 16#01000091#;
        Key_Search               : constant := 16#01000092#;
        Key_Standby              : constant := 16#01000093#;
        Key_OpenUrl              : constant := 16#01000094#;
        Key_LaunchMail           : constant := 16#010000a0#;
        Key_LaunchMedia          : constant := 16#010000a1#;
        Key_Launch0              : constant := 16#010000a2#;
        Key_Launch1              : constant := 16#010000a3#;
        Key_Launch2              : constant := 16#010000a4#;
        Key_Launch3              : constant := 16#010000a5#;
        Key_Launch4              : constant := 16#010000a6#;
        Key_Launch5              : constant := 16#010000a7#;
        Key_Launch6              : constant := 16#010000a8#;
        Key_Launch7              : constant := 16#010000a9#;
        Key_Launch8              : constant := 16#010000aa#;
        Key_Launch9              : constant := 16#010000ab#;
        Key_LaunchA              : constant := 16#010000ac#;
        Key_LaunchB              : constant := 16#010000ad#;
        Key_LaunchC              : constant := 16#010000ae#;
        Key_LaunchD              : constant := 16#010000af#;
        Key_LaunchE              : constant := 16#010000b0#;
        Key_LaunchF              : constant := 16#010000b1#;
        Key_MonBrightnessUp      : constant := 16#010000b2#;
        Key_MonBrightnessDown    : constant := 16#010000b3#;
        Key_KeyboardLightOnOff   : constant := 16#010000b4#;
        Key_KeyboardBrightnessUp : constant := 16#010000b5#;
        Key_KeyboardBrightnessDown : constant := 16#010000b6#;
        Key_PowerOff             : constant := 16#010000b7#;
        Key_WakeUp               : constant := 16#010000b8#;
        Key_Eject                : constant := 16#010000b9#;
        Key_ScreenSaver          : constant := 16#010000ba#;
        Key_WWW                  : constant := 16#010000bb#;
        Key_Memo                 : constant := 16#010000bc#;
        Key_LightBulb            : constant := 16#010000bd#;
        Key_Shop                 : constant := 16#010000be#;
        Key_History              : constant := 16#010000bf#;
        Key_AddFavorite          : constant := 16#010000c0#;
        Key_HotLinks             : constant := 16#010000c1#;
        Key_BrightnessAdjust     : constant := 16#010000c2#;
        Key_Finance              : constant := 16#010000c3#;
        Key_Community            : constant := 16#010000c4#;
        Key_AudioRewind          : constant := 16#010000c5#;
        Key_BackForward          : constant := 16#010000c6#;
        Key_ApplicationLeft      : constant := 16#010000c7#;
        Key_ApplicationRight     : constant := 16#010000c8#;
        Key_Book                 : constant := 16#010000c9#;
        Key_CD                   : constant := 16#010000ca#;
        Key_Calculator           : constant := 16#010000cb#;
        Key_ToDoList             : constant := 16#010000cc#;
        Key_ClearGrab            : constant := 16#010000cd#;
        Key_Close                : constant := 16#010000ce#;
        Key_Copy                 : constant := 16#010000cf#;
        Key_Cut                  : constant := 16#010000d0#;
        Key_Display              : constant := 16#010000d1#;
        Key_DOS                  : constant := 16#010000d2#;
        Key_Documents            : constant := 16#010000d3#;
        Key_Excel                : constant := 16#010000d4#;
        Key_Explorer             : constant := 16#010000d5#;
        Key_Game                 : constant := 16#010000d6#;
        Key_Go                   : constant := 16#010000d7#;
        Key_iTouch               : constant := 16#010000d8#;
        Key_LogOff               : constant := 16#010000d9#;
        Key_Market               : constant := 16#010000da#;
        Key_Meeting              : constant := 16#010000db#;
        Key_MenuKB               : constant := 16#010000dc#;
        Key_MenuPB               : constant := 16#010000dd#;
        Key_MySites              : constant := 16#010000de#;
        Key_News                 : constant := 16#010000df#;
        Key_OfficeHome           : constant := 16#010000e0#;
        Key_Option               : constant := 16#010000e1#;
        Key_Paste                : constant := 16#010000e2#;
        Key_Phone                : constant := 16#010000e3#;
        Key_Calendar             : constant := 16#010000e4#;
        Key_Reply                : constant := 16#010000e5#;
        Key_Reload               : constant := 16#010000e6#;
        Key_RotateWindows        : constant := 16#010000e7#;
        Key_RotationPB           : constant := 16#010000e8#;
        Key_RotationKB           : constant := 16#010000e9#;
        Key_Save                 : constant := 16#010000ea#;
        Key_Send                 : constant := 16#010000eb#;
        Key_Spell                : constant := 16#010000ec#;
        Key_SplitScreen          : constant := 16#010000ed#;
        Key_Support              : constant := 16#010000ee#;
        Key_TaskPane             : constant := 16#010000ef#;
        Key_Terminal             : constant := 16#010000f0#;
        Key_Tools                : constant := 16#010000f1#;
        Key_Travel               : constant := 16#010000f2#;
        Key_Video                : constant := 16#010000f3#;
        Key_Word                 : constant := 16#010000f4#;
        Key_Xfer                 : constant := 16#010000f5#;
        Key_ZoomIn               : constant := 16#010000f6#;
        Key_ZoomOut              : constant := 16#010000f7#;
        Key_Away                 : constant := 16#010000f8#;
        Key_Messenger            : constant := 16#010000f9#;
        Key_WebCam               : constant := 16#010000fa#;
        Key_MailForward          : constant := 16#010000fb#;
        Key_Pictures             : constant := 16#010000fc#;
        Key_Music                : constant := 16#010000fd#;
        Key_Battery              : constant := 16#010000fe#;
        Key_Bluetooth            : constant := 16#010000ff#;
        Key_WLAN                 : constant := 16#01000100#;
        Key_UWB                  : constant := 16#01000101#;
        Key_AudioForward         : constant := 16#01000102#;
        Key_AudioRepeat          : constant := 16#01000103#;
        Key_AudioRandomPlay      : constant := 16#01000104#;
        Key_Subtitle             : constant := 16#01000105#;
        Key_AudioCycleTrack      : constant := 16#01000106#;
        Key_Time                 : constant := 16#01000107#;
        Key_Hibernate            : constant := 16#01000108#;
        Key_View                 : constant := 16#01000109#;
        Key_TopMenu              : constant := 16#0100010a#;
        Key_PowerDown            : constant := 16#0100010b#;
        Key_Suspend              : constant := 16#0100010c#;
        Key_ContrastAdjust       : constant := 16#0100010d#;

        Key_LaunchG              : constant := 16#0100010e#;
        Key_LaunchH              : constant := 16#0100010f#;

        Key_TouchpadToggle       : constant := 16#01000110#;
        Key_TouchpadOn           : constant := 16#01000111#;
        Key_TouchpadOff          : constant := 16#01000112#;

        Key_MediaLast            : constant := 16#0100ffff#;

        -- Keypad navigation keys
        Key_Select               : constant := 16#01010000#;
        Key_Yes                  : constant := 16#01010001#;
        Key_No                   : constant := 16#01010002#;

        -- Newer misc keys
        Key_Cancel               : constant := 16#01020001#;
        Key_Printer              : constant := 16#01020002#;
        Key_Execute              : constant := 16#01020003#;
        Key_Sleep                : constant := 16#01020004#;
        Key_Play                 : constant := 16#01020005#; -- Not the same as Key_MediaPlay
        Key_Zoom                 : constant := 16#01020006#;

        --Key_Jisho   : constant := 16#01020007#; -- IME: Dictionary key
        --Key_Oyayubi_Left : constant := 16#01020008#; -- IME: Left Oyayubi key
        --Key_Oyayubi_Right : constant := 16#01020009#; -- IME: Right Oyayubi key

        -- Device keys
        Key_Context1             : constant := 16#01100000#;
        Key_Context2             : constant := 16#01100001#;
        Key_Context3             : constant := 16#01100002#;
        Key_Context4             : constant := 16#01100003#;
        Key_Call                 : constant := 16#01100004#;  -- set absolute state to in a call (do not toggle state)
        Key_Hangup               : constant := 16#01100005#;  -- set absolute state to hang up (do not toggle state)
        Key_Flip                 : constant := 16#01100006#;
        Key_ToggleCallHangup     : constant := 16#01100007#; -- a toggle key for answering#; or hanging up#; based on current call state
        Key_VoiceDial            : constant := 16#01100008#;
        Key_LastNumberRedial     : constant := 16#01100009#;

        Key_Camera               : constant := 16#01100020#;
        Key_CameraFocus          : constant := 16#01100021#;

        Key_unknown              : constant := 16#01ffffff#;

  -- ArrowType 
        NoArrow    : constant := 0;
        UpArrow    : constant := 1;
        DownArrow  : constant := 2;
        LeftArrow  : constant := 3;
        RightArrow : constant := 4;

  -- PenStyle  -- pen style
        NoPen          : constant := 0;
        SolidLine      : constant := 1;
        DashLine       : constant := 2;
        DotLine        : constant := 3;
        DashDotLine    : constant := 4;
        DashDotDotLine : constant := 5;
        CustomDashLine : constant := 6;

  -- PenCapStyle  -- line endcap style
        FlatCap      : constant := 16#00#;
        SquareCap    : constant := 16#10#;
        RoundCap     : constant := 16#20#;
        MPenCapStyle : constant := 16#30#;

  -- PenJoinStyle  -- line join style
        MiterJoin     : constant := 16#00#;
        BevelJoin     : constant := 16#40#;
        RoundJoin     : constant := 16#80#;
        SvgMiterJoin  : constant := 16#100#;
        MPenJoinStyle : constant := 16#1c0#;

  -- BrushStyle  -- brush style
        NoBrush                : constant := 0;
        SolidPattern           : constant := 1;
        Dense1Pattern          : constant := 2;
        Dense2Pattern          : constant := 3;
        Dense3Pattern          : constant := 4;
        Dense4Pattern          : constant := 5;
        Dense5Pattern          : constant := 6;
        Dense6Pattern          : constant := 7;
        Dense7Pattern          : constant := 8;
        HorPattern             : constant := 9;
        VerPattern             : constant := 10;
        CrossPattern           : constant := 11;
        BDiagPattern           : constant := 12;
        FDiagPattern           : constant := 13;
        DiagCrossPattern       : constant := 14;
        LinearGradientPattern  : constant := 15;
        RadialGradientPattern  : constant := 16;
        ConicalGradientPattern : constant := 17;
        TexturePattern         : constant := 24;

  -- SizeMode 
        AbsoluteSize : constant := 0;
        RelativeSize : constant := 1;

  -- UIEffect 
        UI_General        : constant := 0;
        UI_AnimateMenu    : constant := 1;
        UI_FadeMenu       : constant := 2;
        UI_AnimateCombo   : constant := 3;
        UI_AnimateTooltip : constant := 4;
        UI_FadeTooltip    : constant := 5;
        UI_AnimateToolBox : constant := 6;

  -- CursorShape 
        ArrowCursor        : constant := 0;
        UpArrowCursor      : constant := 1;
        CrossCursor        : constant := 2;
        WaitCursor         : constant := 3;
        IBeamCursor        : constant := 4;
        SizeVerCursor      : constant := 5;
        SizeHorCursor      : constant := 6;
        SizeBDiagCursor    : constant := 7;
        SizeFDiagCursor    : constant := 8;
        SizeAllCursor      : constant := 9;
        BlankCursor        : constant := 10;
        SplitVCursor       : constant := 11;
        SplitHCursor       : constant := 12;
        PointingHandCursor : constant := 13;
        ForbiddenCursor    : constant := 14;
        WhatsThisCursor    : constant := 15;
        BusyCursor         : constant := 16;
        OpenHandCursor     : constant := 17;
        ClosedHandCursor   : constant := 18;
        DragCopyCursor     : constant := 19;
        DragMoveCursor     : constant := 20;
        DragLinkCursor     : constant := 21;
        LastCursor         : constant := DragLinkCursor;
        BitmapCursor       : constant := 24;
        CustomCursor       : constant := 25;

  -- TextFormat 
        PlainText : constant := 0;
        RichText  : constant := 1;
        AutoText  : constant := 2;

  -- AspectRatioMode 
        IgnoreAspectRatio          : constant := 0;
        KeepAspectRatio            : constant := 1;
        KeepAspectRatioByExpanding : constant := 2;

  -- DockWidgetArea 
        LeftDockWidgetArea   : constant := 16#1#;
        RightDockWidgetArea  : constant := 16#2#;
        TopDockWidgetArea    : constant := 16#4#;
        BottomDockWidgetArea : constant := 16#8#;

        DockWidgetArea_Mask  : constant := 16#f#;
        AllDockWidgetAreas   : constant := DockWidgetArea_Mask;
        NoDockWidgetArea     : constant := 0;
    
  -- DockWidgetAreaSizes 
        NDockWidgetAreas : constant := 4;

  -- ToolBarArea 
        LeftToolBarArea   : constant := 16#1#;
        RightToolBarArea  : constant := 16#2#;
        TopToolBarArea    : constant := 16#4#;
        BottomToolBarArea : constant := 16#8#;

        ToolBarArea_Mask  : constant := 16#f#;
        AllToolBarAreas   : constant := ToolBarArea_Mask;
        NoToolBarArea     : constant := 0;

  -- ToolBarAreaSizes 
        NToolBarAreas : constant := 4;

  -- DateFormat 
        TextDate               : constant := 0; -- default Qt
        ISODate                : constant := 1; -- ISO 8601
        SystemLocaleDate       : constant := 2; -- deprecated
        LocalDate              : constant := SystemLocaleDate; -- deprecated
        LocaleDate             : constant := 4; -- deprecated
        SystemLocaleShortDate  : constant := 5;
        SystemLocaleLongDate   : constant := 6;
        DefaultLocaleShortDate : constant := 7;
        DefaultLocaleLongDate  : constant := 8;

  -- TimeSpec 
        LocalTime     : constant := 0;
        UTC           : constant := 1;
        OffsetFromUTC : constant := 2;

  -- DayOfWeek 
        Monday    : constant := 1;
        Tuesday   : constant := 2;
        Wednesday : constant := 3;
        Thursday  : constant := 4;
        Friday    : constant := 5;
        Saturday  : constant := 6;
        Sunday    : constant := 7;

  -- ScrollBarPolicy 
        ScrollBarAsNeeded  : constant := 0;
        ScrollBarAlwaysOff : constant := 1;
        ScrollBarAlwaysOn  : constant := 2;

  -- CaseSensitivity 
        CaseInsensitive : constant := 0;
        CaseSensitive   : constant := 1;

  -- Corner 
        TopLeftCorner     : constant := 16#00000#;
        TopRightCorner    : constant := 16#00001#;
        BottomLeftCorner  : constant := 16#00002#;
        BottomRightCorner : constant := 16#00003#;

  -- ConnectionType 
        AutoConnection           : constant := 0;
        DirectConnection         : constant := 1;
        QueuedConnection         : constant := 2;
        BlockingQueuedConnection : constant := 3; 
        UniqueConnection         : constant :=  16#80#;

  -- ShortcutContext               
        WidgetShortcut             : constant := 0;              
        WindowShortcut             : constant := 1;              
        ApplicationShortcut        : constant := 2;              
        WidgetWithChildrenShortcut : constant := 3;

  -- FillRule 
        OddEvenFill      : constant := 0;       
        WindingFill      : constant := 1;       

  -- MaskMode 
        MaskInColor      : constant := 0;       
        MaskOutColor     : constant := 1;       

  -- ClipOperation 
        NoClip           : constant := 0;       
        ReplaceClip      : constant := 1;       
        IntersectClip    : constant := 2;       

    -- Shape : constant := 16#1#; BoundingRect : constant := 16#2#;

  -- ItemSelectionMode 
        ContainsItemShape          : constant := 16#0#;
        IntersectsItemShape        : constant := 16#1#;
        ContainsItemBoundingRect   : constant := 16#2#;
        IntersectsItemBoundingRect : constant := 16#3#;

  -- TransformationMode 
        FastTransformation   : constant := 0;      
        SmoothTransformation : constant := 1;      

  -- Axis 
        XAxis   : constant := 0;
        YAxis   : constant := 1;
        ZAxis   : constant := 2;

  -- FocusReason 
        MouseFocusReason          : constant := 0;        
        TabFocusReason            : constant := 1;        
        BacktabFocusReason        : constant := 2;        
        ActiveWindowFocusReason   : constant := 3;        
        PopupFocusReason          : constant := 4;        
        ShortcutFocusReason       : constant := 5;        
        MenuBarFocusReason        : constant := 6;        
        OtherFocusReason          : constant := 7;        
        NoFocusReason             : constant := 8;        

  -- ContextMenuPolicy 
        NoContextMenu             : constant := 0;
        DefaultContextMenu        : constant := 1;
        ActionsContextMenu        : constant := 2;
        CustomContextMenu         : constant := 3;
        PreventContextMenu        : constant := 4;

  -- InputMethodQuery 
        ImEnabled : constant := 16#1#;
        ImCursorRectangle   : constant := 16#2#;
        ImMicroFocus        : constant := 16#2#; -- deprecated
        ImFont              : constant := 16#4#;
        ImCursorPosition    : constant := 16#8#;
        ImSurroundingText   : constant := 16#10#;
        ImCurrentSelection  : constant := 16#20#;
        ImMaximumTextLength : constant := 16#40#;
        ImAnchorPosition    : constant := 16#80#;
        ImHints             : constant := 16#100#;
        ImPreferredLanguage : constant := 16#200#;

        ImPlatformData      : constant := 16#80000000#;
        ImQueryInput        : constant := ImCursorRectangle + ImCursorPosition + ImSurroundingText +
                       ImCurrentSelection + ImAnchorPosition;
        ImQueryAll          : constant := 16#ffffffff#;

  -- InputMethodHint 
        ImhNone                   : constant := 16#0#;
        ImhHiddenText             : constant := 16#1#;
        ImhSensitiveData          : constant := 16#2#;
        ImhNoAutoUppercase        : constant := 16#4#;
        ImhPreferNumbers          : constant := 16#8#;
        ImhPreferUppercase        : constant := 16#10#;
        ImhPreferLowercase        : constant := 16#20#;
        ImhNoPredictiveText       : constant := 16#40#;
        ImhDate                   : constant := 16#80#;
        ImhTime                   : constant := 16#100#;
        ImhPreferLatin            : constant := 16#200#;
        ImhDigitsOnly             : constant := 16#10000#;
        ImhFormattedNumbersOnly   : constant := 16#20000#;
        ImhUppercaseOnly          : constant := 16#40000#;
        ImhLowercaseOnly          : constant := 16#80000#;
        ImhDialableCharactersOnly : constant := 16#100000#;
        ImhEmailCharactersOnly    : constant := 16#200000#;
        ImhUrlCharactersOnly      : constant := 16#400000#;
        ImhLatinOnly              : constant := 16#800000#;
        ImhExclusiveInputMask     : constant := 16#ffff0000#;

  -- ToolButtonStyle 
        ToolButtonIconOnly         : constant := 0;
        ToolButtonTextOnly         : constant := 1;
        ToolButtonTextBesideIcon   : constant := 2;
        ToolButtonTextUnderIcon    : constant := 3;
        ToolButtonFollowStyle      : constant := 4;

  -- LayoutDirection 
        LeftToRight          : constant := 0;
        RightToLeft          : constant := 1;
        LayoutDirectionAuto  : constant := 2;

  -- AnchorPoint 
        AnchorLeft                   : constant := 0;   
        AnchorHorizontalCenter       : constant := 1;   
        AnchorRight                  : constant := 2;   
        AnchorTop                    : constant := 3;   
        AnchorVerticalCenter         : constant := 4;   
        AnchorBottom                 : constant := 5;    

  -- FindChildOption 
        FindDirectChildrenOnly  : constant := 16#0#;
        FindChildrenRecursively : constant := 16#1#;

  -- DropAction 
        CopyAction       : constant := 16#1#;
        MoveAction       : constant := 16#2#;
        LinkAction       : constant := 16#4#;
        ActionMask       : constant := 16#ff#;
        TargetMoveAction : constant := 16#8002#;
        IgnoreAction     : constant := 16#0#;

  -- CheckState 
        Unchecked           : constant := 0;
        PartiallyChecked    : constant := 1;
        Checked             : constant := 2;

  -- ItemDataRole 
        DisplayRole    : constant := 0;
        DecorationRole : constant := 1;
        EditRole       : constant := 2;
        ToolTipRole    : constant := 3;
        StatusTipRole  : constant := 4;
        WhatsThisRole  : constant := 5;

        -- Metadata
        FontRole            : constant := 6;
        TextAlignmentRole   : constant := 7;
        BackgroundColorRole : constant := 8;
        BackgroundRole      : constant := 8;
        TextColorRole       : constant := 9;
        ForegroundRole      : constant := 9;
        CheckStateRole      : constant := 10;

        -- Accessibility
        AccessibleTextRole        : constant := 11;
        AccessibleDescriptionRole : constant := 12;

        -- More general purpose
        SizeHintRole           : constant := 13;
        InitialSortOrderRole   : constant := 14;

        -- Internal UiLib roles. Start worrying when public roles go that high.
        DisplayPropertyRole    : constant := 27;
        DecorationPropertyRole : constant := 28;
        ToolTipPropertyRole    : constant := 29;
        StatusTipPropertyRole  : constant := 30;
        WhatsThisPropertyRole  : constant := 31;

        -- Reserved
        UserRole : constant := 16#0100#;

  -- ItemFlag 
        NoItemFlags         : constant := 0;
        ItemIsSelectable    : constant := 1;
        ItemIsEditable      : constant := 2;
        ItemIsDragEnabled   : constant := 4;
        ItemIsDropEnabled   : constant := 8;
        ItemIsUserCheckable : constant := 16;
        ItemIsEnabled       : constant := 32;
        ItemIsTristate      : constant := 64;

  -- MatchFlag 
        MatchExactly       : constant := 0;
        MatchContains      : constant := 1;
        MatchStartsWith    : constant := 2;
        MatchEndsWith      : constant := 3;
        MatchRegExp        : constant := 4;
        MatchWildcard      : constant := 5;
        MatchFixedString   : constant := 8;
        MatchCaseSensitive : constant := 16;
        MatchWrap          : constant := 32;
        MatchRecursive     : constant := 64;

  -- WindowModality 
        NonModal         : constant := 0; 
        WindowModal      : constant := 1; 
        ApplicationModal : constant := 2; 

  -- TextInteractionFlag 
        NoTextInteraction         : constant := 0;
        TextSelectableByMouse     : constant := 1;
        TextSelectableByKeyboard  : constant := 2;
        LinksAccessibleByMouse    : constant := 4;
        LinksAccessibleByKeyboard : constant := 8;
        TextEditable              : constant := 16;

        TextEditorInteraction     : constant := TextSelectableByMouse + TextSelectableByKeyboard + TextEditable;
        TextBrowserInteraction    : constant := TextSelectableByMouse + LinksAccessibleByMouse + LinksAccessibleByKeyboard;

  -- EventPriority 
        HighEventPriority   : constant := 1;
        NormalEventPriority : constant := 0;
        LowEventPriority    : constant := -1;

  -- SizeHint 
        MinimumSize         : constant := 0;
        PreferredSize       : constant := 1;
        MaximumSize         : constant := 2;
        MinimumDescent      : constant := 3;
        NSizeHints          : constant := 4;

  -- WindowFrameSection 
        NoSection          : constant := 0;
        LeftSection        : constant := 1;   -- For resize
        TopLeftSection     : constant := 2;
        TopSection         : constant := 3;
        TopRightSection    : constant := 4;
        RightSection       : constant := 5;
        BottomRightSection : constant := 6;
        BottomSection      : constant := 7;
        BottomLeftSection  : constant := 8;
        TitleBarArea       : constant := 9;  -- For move

  -- Initialization 
        Uninitialized      : constant := 0;

  -- CoordinateSystem 
        DeviceCoordinates  : constant := 0;
        LogicalCoordinates : constant := 1;

  -- TouchPointState 
        TouchPointPressed    : constant := 16#01#;
        TouchPointMoved      : constant := 16#02#;
        TouchPointStationary : constant := 16#04#;
        TouchPointReleased   : constant := 16#08#;

  -- NavigationMode
    
        NavigationModeNone                : constant := 0;
        NavigationModeKeypadTabOrder      : constant := 1;
        NavigationModeKeypadDirectional   : constant := 2;
        NavigationModeCursorAuto          : constant := 3;
        NavigationModeCursorForceVisible  : constant := 4;

  -- CursorMoveStyle 
        LogicalMoveStyle  : constant := 0;
        VisualMoveStyle   : constant := 1;

  -- TimerType 
        PreciseTimer    : constant := 0;
        CoarseTimer     : constant := 1;
        VeryCoarseTimer : constant := 2;

  -- PaintDeviceFlags 
        UnknownDeviceF    : constant := 16#00#;
        WidgetF           : constant := 16#01#;
        PixmapF           : constant := 16#02#;
        ImageF            : constant := 16#03#;
        PrinterF          : constant := 16#04#;
        PictureF          : constant := 16#05#;
        PbufferF          : constant := 16#06#; -- GL pbuffer
        FramebufferObjectF: constant := 16#07#; -- GL framebuffer object
        CustomRasterF     : constant := 16#08#;
        MacQuartzF        : constant := 16#09#;
        PaintBufferF      : constant := 16#0a#;
        OpenGLF           : constant := 16#0b#;
    
  -- RelayoutType 
        RelayoutNormal    : constant := 0;
        RelayoutDragging  : constant := 1;
        RelayoutDropped   : constant := 2;

  -- DockPosition 
        LeftDock         : constant := 0;
        RightDock        : constant := 1;
        TopDock          : constant := 2;
        BottomDock       : constant := 1;
        DockCount        : constant := 2;

  -- Callback 
        EventNotifyCallback  : constant := 0;
        LastCallback         : constant := 1;

  --       SQL             ------------
  --   Location
      BeforeFirstRow : constant := -1;
      AfterLastRow   : constant := -2; 

  --   ParamTypeFlag
    PTF_In     : constant := 1;
    PTF_Out    : constant := 2;
    PTF_InOut  : constant := 3;
    PTF_Binary : constant := 4; 

  -- TableType
    Tables       : constant := 1;
    SystemTables : constant := 2;
    Views        : constant := 4;
    AllTables    : constant := 16#f#;

 -- NumericalPrecisionPolicy
    HighPrecision      : constant := 0;
    LowPrecisionInt32  : constant := 1;
    LowPrecisionInt64  : constant := 2;
    LowPrecisionDouble : constant := 4;
 --   Security 
    NoSecurity         : constant := 0;
    Authorization      : constant := 1;
    Authentication     : constant := 2;
    Encryption         : constant := 4;
    Secure             : constant := 8;
 
 -- Multimedia
 type SupportEstimate is (NotSupported,MaybeSupported,ProbablySupported,PreferredService);
 pragma convention(C,SupportEstimate);

 type EncodingQuality is (VeryLowQuality,LowQuality,NormalQuality,HighQuality,VeryHighQuality);
 pragma convention(C,EncodingQuality);

 type EncodingMode  is (ConstantQualityEncoding,ConstantBitRateEncoding,AverageBitRateEncoding,TwoPassEncoding);
 pragma convention(C,EncodingMode);

 type AvailabilityStatus is (Available,ServiceMissing,Busy,ResourceError);
 pragma convention(C,AvailabilityStatus);

 type QtMsgType is (QtDebugMsg, QtWarningMsg, QtCriticalMsg, QtFatalMsg, QtInfoMsg, QtSystemMsg);
 pragma convention(C,QtMsgType);
 
 --      2017 -----------------------------------
 type QtApplicationAttribute is new integer;
    
        AA_ImmediateWidgetCreation                 : constant QtApplicationAttribute  := 0;
        AA_MSWindowsUseDirect3DByDefault           : constant QtApplicationAttribute  := 1; -- Win only
        AA_DontShowIconsInMenus                    : constant QtApplicationAttribute  := 2;
        AA_NativeWindows                           : constant QtApplicationAttribute  := 3;
        AA_DontCreateNativeWidgetSiblings          : constant QtApplicationAttribute  := 4;
        AA_PluginApplication                       : constant QtApplicationAttribute  := 5;
        AA_MacPluginApplication                    : constant QtApplicationAttribute  := AA_PluginApplication;  
        AA_DontUseNativeMenuBar                    : constant QtApplicationAttribute  := 6;
        AA_MacDontSwapCtrlAndMeta                  : constant QtApplicationAttribute  := 7;
        AA_Use96Dpi                                : constant QtApplicationAttribute  := 8;
        AA_X11InitThreads                          : constant QtApplicationAttribute  := 10;
        AA_SynthesizeTouchForUnhandledMouseEvents  : constant QtApplicationAttribute  := 11;
        AA_SynthesizeMouseForUnhandledTouchEvents  : constant QtApplicationAttribute  := 12;
        AA_UseHighDpiPixmaps                       : constant QtApplicationAttribute  := 13;
        AA_ForceRasterWidgets                      : constant QtApplicationAttribute  := 14;
        AA_UseDesktopOpenGL                        : constant QtApplicationAttribute  := 15;
        AA_UseOpenGLES                             : constant QtApplicationAttribute  := 16;
        AA_UseSoftwareOpenGL                       : constant QtApplicationAttribute  := 17;
        AA_ShareOpenGLContexts                     : constant QtApplicationAttribute  := 18;
        AA_SetPalette                              : constant QtApplicationAttribute  := 19;
        AA_EnableHighDpiScaling                    : constant QtApplicationAttribute  := 20;
        AA_DisableHighDpiScaling                   : constant QtApplicationAttribute  := 21;
        AA_UseStyleSheetPropagationInWidgetStyles  : constant QtApplicationAttribute  := 22; 
        AA_DontUseNativeDialogs                    : constant QtApplicationAttribute  := 23;
        AA_SynthesizeMouseForUnhandledTabletEvents : constant QtApplicationAttribute  := 24;
        AA_CompressHighFrequencyEvents             : constant QtApplicationAttribute  := 25;
        AA_DontCheckOpenGLContextThreadAffinity    : constant QtApplicationAttribute  := 26;
        AA_DisableShaderDiskCache                  : constant QtApplicationAttribute  := 27;
        AA_DontShowShortcutsInContextMenus         : constant QtApplicationAttribute  := 28;
        AA_CompressTabletEvents                    : constant QtApplicationAttribute  := 29;
        AA_DisableWindowContextHelpButton          : constant QtApplicationAttribute  := 30;  

        -- Add new attributes before this line
        AA_AttributeCount                          : constant QtApplicationAttribute  := 99;

-----------------------   2018 ------------------------------
 type CheckIndexOption is (NoOption, IndexIsValid, DoNotUseParent, ParentIsInvalid);
 pragma convention(C,CheckIndexOption);

 type DnsEligibilityStatus is (DnsEligibilityUnknown, DnsIneligible, DnsEligible);
 pragma convention(C,DnsEligibilityStatus);

 type StringFormat is (WithBraces, WithoutBraces, Id128);
 pragma convention(C,StringFormat);
    
    
end Qt.QNamespace;
