--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPalette;    use  Qt.QPalette;
with Qt.QIcon;       use  Qt.QIcon;
with Qt.QSizepolicy; use  Qt.QSizepolicy;
with Qt.QTabBar;     use  Qt.QTabBar;
with Qt.QSlider;     use  Qt.QSlider;
with Qt.QSpinbox;    use  Qt.QSpinbox;

with Qt.QPalette;
package Qt.QStyle               is

subtype QStyleStateFlag is cardinal;
subtype QStyleState     is cardinal;

QStyleState_None                : constant QStyleStateFlag  := 16#00000000#;
QStyleState_Enabled             : constant QStyleStateFlag  := 16#00000001#;
QStyleState_Raised              : constant QStyleStateFlag  := 16#00000002#;
QStyleState_Sunken              : constant QStyleStateFlag  := 16#00000004#;
QStyleState_Off                 : constant QStyleStateFlag  := 16#00000008#;
QStyleState_NoChange            : constant QStyleStateFlag  := 16#00000010#;
QStyleState_On                  : constant QStyleStateFlag  := 16#00000020#;
QStyleState_DownArrow           : constant QStyleStateFlag  := 16#00000040#;
QStyleState_Horizontal          : constant QStyleStateFlag  := 16#00000080#;
QStyleState_HasFocus            : constant QStyleStateFlag  := 16#00000100#;
QStyleState_Top                 : constant QStyleStateFlag  := 16#00000200#;
QStyleState_Bottom              : constant QStyleStateFlag  := 16#00000400#;
QStyleState_FocusAtBorder       : constant QStyleStateFlag  := 16#00000800#;
QStyleState_AutoRaise           : constant QStyleStateFlag  := 16#00001000#;
QStyleState_MouseOver           : constant QStyleStateFlag  := 16#00002000#;
QStyleState_UpArrow             : constant QStyleStateFlag  := 16#00004000#;
QStyleState_Selected            : constant QStyleStateFlag  := 16#00008000#;
QStyleState_Active              : constant QStyleStateFlag  := 16#00010000#;
QStyleState_Window              : constant QStyleStateFlag  := 16#00020000#;
QStyleState_Open                : constant QStyleStateFlag  := 16#00040000#;
QStyleState_Children            : constant QStyleStateFlag  := 16#00080000#;
QStyleState_Item                : constant QStyleStateFlag  := 16#00100000#;
QStyleState_Sibling             : constant QStyleStateFlag  := 16#00200000#;
QStyleState_Editing             : constant QStyleStateFlag  := 16#00400000#;
QStyleState_KeyboardFocusChange : constant QStyleStateFlag  := 16#00800000#;
QStyleState_ReadOnly            : constant QStyleStateFlag  := 16#02000000#;
QStyleState_Small               : constant QStyleStateFlag  := 16#04000000#;
QStyleState_Mini                : constant QStyleStateFlag  := 16#08000000#;

type QStylePrimitiveElement is (
    QStylePE_Q3CheckListController,
    QStylePE_Q3CheckListExclusiveIndicator,
    QStylePE_Q3CheckListIndicator,
    QStylePE_Q3DockWindowSeparator,
    QStylePE_Q3Separator,
    QStylePE_Frame,
    QStylePE_FrameDefaultButton,
    QStylePE_FrameDockWidget,
    QStylePE_FrameFocusRect,
    QStylePE_FrameGroupBox,
    QStylePE_FrameLineEdit,
    QStylePE_FrameMenu,
    QStylePE_FrameStatusBar,
    QStylePE_FrameTabWidget,
    QStylePE_FrameWindow,
    QStylePE_FrameButtonBevel,
    QStylePE_FrameButtonTool,
    QStylePE_FrameTabBarBase,
    QStylePE_PanelButtonCommand,
    QStylePE_PanelButtonBevel,
    QStylePE_PanelButtonTool,
    QStylePE_PanelMenuBar,
    QStylePE_PanelToolBar,
    QStylePE_PanelLineEdit,
    QStylePE_IndicatorArrowDown,
    QStylePE_IndicatorArrowLeft,
    QStylePE_IndicatorArrowRight,
    QStylePE_IndicatorArrowUp,
    QStylePE_IndicatorBranch,
    QStylePE_IndicatorButtonDropDown,
    QStylePE_IndicatorViewItemCheck,
    QStylePE_IndicatorCheckBox,
    QStylePE_IndicatorDockWidgetResizeHandle,
    QStylePE_IndicatorHeaderArrow,
    QStylePE_IndicatorMenuCheckMark,
    QStylePE_IndicatorProgressChunk,
    QStylePE_IndicatorRadioButton,
    QStylePE_IndicatorSpinDown,
    QStylePE_IndicatorSpinMinus,
    QStylePE_IndicatorSpinPlus,
    QStylePE_IndicatorSpinUp,
    QStylePE_IndicatorToolBarHandle,
    QStylePE_IndicatorToolBarSeparator,
    QStylePE_PanelTipLabel,
    QStylePE_IndicatorTabTear,
    QStylePE_PanelScrollAreaCorner,
    QStylePE_Widget,
    QStylePE_IndicatorColumnViewArrow,
    QStylePE_CustomBase);
pragma Convention(C,QStylePrimitiveElement);

for  QStylePrimitiveElement use (
    QStylePE_Q3CheckListController => 0,
    QStylePE_Q3CheckListExclusiveIndicator => 1,
    QStylePE_Q3CheckListIndicator => 3,
    QStylePE_Q3DockWindowSeparator => 4,
    QStylePE_Q3Separator => 5,
    QStylePE_Frame => 6,
    QStylePE_FrameDefaultButton => 7,
    QStylePE_FrameDockWidget => 8,
    QStylePE_FrameFocusRect => 9,
    QStylePE_FrameGroupBox => 10,
    QStylePE_FrameLineEdit => 11,
    QStylePE_FrameMenu => 12,
    QStylePE_FrameStatusBar => 13,
    QStylePE_FrameTabWidget => 14,
    QStylePE_FrameWindow => 15,
    QStylePE_FrameButtonBevel => 16,
    QStylePE_FrameButtonTool => 17,
    QStylePE_FrameTabBarBase => 18,
    QStylePE_PanelButtonCommand => 19,
    QStylePE_PanelButtonBevel => 20,
    QStylePE_PanelButtonTool => 21,
    QStylePE_PanelMenuBar => 22,
    QStylePE_PanelToolBar => 23,
    QStylePE_PanelLineEdit => 24,
    QStylePE_IndicatorArrowDown => 25,
    QStylePE_IndicatorArrowLeft => 26,
    QStylePE_IndicatorArrowRight => 27,
    QStylePE_IndicatorArrowUp => 28,
    QStylePE_IndicatorBranch => 29,
    QStylePE_IndicatorButtonDropDown => 30,
    QStylePE_IndicatorViewItemCheck => 31,
    QStylePE_IndicatorCheckBox => 32,
    QStylePE_IndicatorDockWidgetResizeHandle => 33,
    QStylePE_IndicatorHeaderArrow => 34,
    QStylePE_IndicatorMenuCheckMark => 35,
    QStylePE_IndicatorProgressChunk => 36,
    QStylePE_IndicatorRadioButton => 37,
    QStylePE_IndicatorSpinDown => 38,
    QStylePE_IndicatorSpinMinus => 39,
    QStylePE_IndicatorSpinPlus  => 40,
    QStylePE_IndicatorSpinUp  => 41,
    QStylePE_IndicatorToolBarHandle => 42,
    QStylePE_IndicatorToolBarSeparator => 43,
    QStylePE_PanelTipLabel => 44,
    QStylePE_IndicatorTabTear => 45,
    QStylePE_PanelScrollAreaCorner => 46,
    QStylePE_Widget => 47,
    QStylePE_IndicatorColumnViewArrow => 48,
    QStylePE_CustomBase => 16#f000000#);

type QStyleControlElement is (
    QStyleCE_PushButton,
    QStyleCE_PushButtonBevel,
    QStyleCE_PushButtonLabel,
    QStyleCE_CheckBox,
    QStyleCE_CheckBoxLabel,
    QStyleCE_RadioButton,
    QStyleCE_RadioButtonLabel,
    QStyleCE_TabBarTab,
    QStyleCE_TabBarTabShape,
    QStyleCE_TabBarTabLabel,
    QStyleCE_ProgressBar,
    QStyleCE_ProgressBarGroove,
    QStyleCE_ProgressBarContents,
    QStyleCE_ProgressBarLabel,
    QStyleCE_MenuItem,
    QStyleCE_MenuScroller,
    QStyleCE_MenuVMargin,
    QStyleCE_MenuHMargin,
    QStyleCE_MenuTearoff,
    QStyleCE_MenuEmptyArea,
    QStyleCE_MenuBarItem,
    QStyleCE_MenuBarEmptyArea,
    QStyleCE_ToolButtonLabel,
    QStyleCE_Header,
    QStyleCE_HeaderSection,
    QStyleCE_HeaderLabel,
    QStyleCE_Q3DockWindowEmptyArea,
    QStyleCE_ToolBoxTab,
    QStyleCE_SizeGrip,
    QStyleCE_Splitter,
    QStyleCE_RubberBand,
    QStyleCE_DockWidgetTitle,
    QStyleCE_ScrollBarAddLine,
    QStyleCE_ScrollBarSubLine,
    QStyleCE_ScrollBarAddPage,
    QStyleCE_ScrollBarSubPage,
    QStyleCE_ScrollBarSlider,
    QStyleCE_ScrollBarFirst,
    QStyleCE_ScrollBarLast,
    QStyleCE_FocusFrame,
    QStyleCE_ComboBoxLabel,
    QStyleCE_ToolBar,
    QStyleCE_ToolBoxTabShape,
    QStyleCE_ToolBoxTabLabel,
    QStyleCE_HeaderEmptyArea,
    QStyleCE_ColumnViewGrip,
    QStyleCE_CustomBase);
pragma Convention(C,QStyleControlElement);

for QStyleControlElement use (
    QStyleCE_PushButton => 0,
    QStyleCE_PushButtonBevel => 1,
    QStyleCE_PushButtonLabel => 2,
    QStyleCE_CheckBox => 3,
    QStyleCE_CheckBoxLabel => 4,
    QStyleCE_RadioButton => 5,
    QStyleCE_RadioButtonLabel => 6,
    QStyleCE_TabBarTab => 7,
    QStyleCE_TabBarTabShape => 8,
    QStyleCE_TabBarTabLabel => 9,
    QStyleCE_ProgressBar => 10 ,
    QStyleCE_ProgressBarGroove => 11,
    QStyleCE_ProgressBarContents => 12,
    QStyleCE_ProgressBarLabel => 13,
    QStyleCE_MenuItem => 14,
    QStyleCE_MenuScroller => 15,
    QStyleCE_MenuVMargin => 16,
    QStyleCE_MenuHMargin => 17,
    QStyleCE_MenuTearoff => 18,
    QStyleCE_MenuEmptyArea => 19,
    QStyleCE_MenuBarItem => 20,
    QStyleCE_MenuBarEmptyArea => 21,
    QStyleCE_ToolButtonLabel => 22,
    QStyleCE_Header => 23,
    QStyleCE_HeaderSection => 24,
    QStyleCE_HeaderLabel => 25,
    QStyleCE_Q3DockWindowEmptyArea => 26,
    QStyleCE_ToolBoxTab => 27,
    QStyleCE_SizeGrip => 28,
    QStyleCE_Splitter => 29,
    QStyleCE_RubberBand => 30,
    QStyleCE_DockWidgetTitle => 31,
    QStyleCE_ScrollBarAddLine => 32,
    QStyleCE_ScrollBarSubLine => 33,
    QStyleCE_ScrollBarAddPage => 34,
    QStyleCE_ScrollBarSubPage => 35,
    QStyleCE_ScrollBarSlider => 36,
    QStyleCE_ScrollBarFirst => 37,
    QStyleCE_ScrollBarLast => 38,
    QStyleCE_FocusFrame => 39,
    QStyleCE_ComboBoxLabel => 40,
    QStyleCE_ToolBar => 41,
    QStyleCE_ToolBoxTabShape => 42,
    QStyleCE_ToolBoxTabLabel => 43,
    QStyleCE_HeaderEmptyArea => 44,
    QStyleCE_ColumnViewGrip => 45,
    QStyleCE_CustomBase => 16#f0000000#);

type QStyleSubElement is (
    QStyleSE_PushButtonContents,
    QStyleSE_PushButtonFocusRect,
    QStyleSE_CheckBoxIndicator,
    QStyleSE_CheckBoxContents,
    QStyleSE_CheckBoxFocusRect,
    QStyleSE_CheckBoxClickRect,
    QStyleSE_RadioButtonIndicator,
    QStyleSE_RadioButtonContents,
    QStyleSE_RadioButtonFocusRect,
    QStyleSE_RadioButtonClickRect,
    QStyleSE_ComboBoxFocusRect,
    QStyleSE_SliderFocusRect,
    QStyleSE_Q3DockWindowHandleRect,
    QStyleSE_ProgressBarGroove,
    QStyleSE_ProgressBarContents,
    QStyleSE_ProgressBarLabel,
    QStyleSE_DialogButtonAccept,
    QStyleSE_DialogButtonReject,
    QStyleSE_DialogButtonApply,
    QStyleSE_DialogButtonHelp,
    QStyleSE_DialogButtonAll,
    QStyleSE_DialogButtonAbort,
    QStyleSE_DialogButtonIgnore,
    QStyleSE_DialogButtonRetry,
    QStyleSE_DialogButtonCustom,
    QStyleSE_ToolBoxTabContents,
    QStyleSE_HeaderLabel,
    QStyleSE_HeaderArrow,
    QStyleSE_TabWidgetTabBar,
    QStyleSE_TabWidgetTabPane,
    QStyleSE_TabWidgetTabContents,
    QStyleSE_TabWidgetLeftCorner,
    QStyleSE_TabWidgetRightCorner,
    QStyleSE_ViewItemCheckIndicator,
    QStyleSE_TabBarTearIndicator,
    QStyleSE_TreeViewDisclosureItem,
    QStyleSE_LineEditContents,
    QStyleSE_FrameContents,
    QStyleSE_DockWidgetCloseButton,
    QStyleSE_DockWidgetFloatButton,
    QStyleSE_DockWidgetTitleBarText,
    QStyleSE_DockWidgetIcon,
    QStyleSE_CheckBoxLayoutItem,
    QStyleSE_ComboBoxLayoutItem,
    QStyleSE_DateTimeEditLayoutItem,
    QStyleSE_DialogButtonBoxLayoutItem,
    QStyleSE_LabelLayoutItem,
    QStyleSE_ProgressBarLayoutItem,
    QStyleSE_PushButtonLayoutItem,
    QStyleSE_RadioButtonLayoutItem,
    QStyleSE_SliderLayoutItem,
    QStyleSE_SpinBoxLayoutItem,
    QStyleSE_ToolButtonLayoutItem,
    QStyleSE_FrameLayoutItem,
    QStyleSE_GroupBoxLayoutItem,
    QStyleSE_TabWidgetLayoutItem,
    QStyleSE_CustomBase);
pragma Convention(C,QStyleSubElement);

for QStyleSubElement use (
    QStyleSE_PushButtonContents => 0,
    QStyleSE_PushButtonFocusRect => 1,
    QStyleSE_CheckBoxIndicator => 2,
    QStyleSE_CheckBoxContents => 3,
    QStyleSE_CheckBoxFocusRect => 4,
    QStyleSE_CheckBoxClickRect => 5,
    QStyleSE_RadioButtonIndicator => 6,
    QStyleSE_RadioButtonContents => 7,
    QStyleSE_RadioButtonFocusRect => 8,
    QStyleSE_RadioButtonClickRect => 9,
    QStyleSE_ComboBoxFocusRect => 10,
    QStyleSE_SliderFocusRect => 11,
    QStyleSE_Q3DockWindowHandleRect => 12,
    QStyleSE_ProgressBarGroove => 13,
    QStyleSE_ProgressBarContents => 14,
    QStyleSE_ProgressBarLabel => 15,
    QStyleSE_DialogButtonAccept => 16,
    QStyleSE_DialogButtonReject => 17,
    QStyleSE_DialogButtonApply => 18,
    QStyleSE_DialogButtonHelp => 19,
    QStyleSE_DialogButtonAll => 20,
    QStyleSE_DialogButtonAbort => 21,
    QStyleSE_DialogButtonIgnore => 22,
    QStyleSE_DialogButtonRetry => 23,
    QStyleSE_DialogButtonCustom => 24,
    QStyleSE_ToolBoxTabContents => 25,
    QStyleSE_HeaderLabel => 26,
    QStyleSE_HeaderArrow => 27,
    QStyleSE_TabWidgetTabBar => 28,
    QStyleSE_TabWidgetTabPane => 29,
    QStyleSE_TabWidgetTabContents => 30,
    QStyleSE_TabWidgetLeftCorner => 31,
    QStyleSE_TabWidgetRightCorner => 32,
    QStyleSE_ViewItemCheckIndicator => 33,
    QStyleSE_TabBarTearIndicator => 34,
    QStyleSE_TreeViewDisclosureItem => 35,
    QStyleSE_LineEditContents => 36,
    QStyleSE_FrameContents => 37,
    QStyleSE_DockWidgetCloseButton => 38,
    QStyleSE_DockWidgetFloatButton => 39,
    QStyleSE_DockWidgetTitleBarText => 40,
    QStyleSE_DockWidgetIcon => 41,
    QStyleSE_CheckBoxLayoutItem => 42,
    QStyleSE_ComboBoxLayoutItem => 43,
    QStyleSE_DateTimeEditLayoutItem => 44,
    QStyleSE_DialogButtonBoxLayoutItem => 45,
    QStyleSE_LabelLayoutItem => 46,
    QStyleSE_ProgressBarLayoutItem => 47,
    QStyleSE_PushButtonLayoutItem => 48,
    QStyleSE_RadioButtonLayoutItem => 49,
    QStyleSE_SliderLayoutItem => 50,
    QStyleSE_SpinBoxLayoutItem => 51,
    QStyleSE_ToolButtonLayoutItem => 52,
    QStyleSE_FrameLayoutItem => 53,
    QStyleSE_GroupBoxLayoutItem => 54,
    QStyleSE_TabWidgetLayoutItem => 55,
    QStyleSE_CustomBase => 16#f0000000#);

type  QStyleComplexControl is (
    QStyleCC_SpinBox,
    QStyleCC_ComboBox,
    QStyleCC_ScrollBar,
    QStyleCC_Slider,
    QStyleCC_ToolButton,
    QStyleCC_TitleBar,
    QStyleCC_Q3ListView,
    QStyleCC_Dial,
    QStyleCC_GroupBox,
    QStyleCC_MdiControls,
    QStyleCC_CustomBase);
pragma Convention(C,QStyleComplexControl);

for QStyleComplexControl use (
    QStyleCC_SpinBox => 0,
    QStyleCC_ComboBox => 1,
    QStyleCC_ScrollBar => 2,
    QStyleCC_Slider => 3,
    QStyleCC_ToolButton => 4,
    QStyleCC_TitleBar => 5,
    QStyleCC_Q3ListView => 6,
    QStyleCC_Dial => 7,
    QStyleCC_GroupBox => 8,
    QStyleCC_MdiControls => 9,
    QStyleCC_CustomBase => 16#f0000000#);

subtype  QStyleSubControl  is cardinal;
subtype  QStyleSubControls is cardinal;

QStyleSC_None                      : constant QStyleSubControl := 16#00000000#;
QStyleSC_ScrollBarAddLine          : constant QStyleSubControl := 16#00000001#;
QStyleSC_ScrollBarSubLine          : constant QStyleSubControl := 16#00000002#;
QStyleSC_ScrollBarAddPage          : constant QStyleSubControl := 16#00000004#;
QStyleSC_ScrollBarSubPage          : constant QStyleSubControl := 16#00000008#;
QStyleSC_ScrollBarFirst            : constant QStyleSubControl := 16#00000010#;
QStyleSC_ScrollBarLast             : constant QStyleSubControl := 16#00000020#;
QStyleSC_ScrollBarSlider           : constant QStyleSubControl := 16#00000040#;
QStyleSC_ScrollBarGroove           : constant QStyleSubControl := 16#00000080#;
QStyleSC_SpinBoxUp                 : constant QStyleSubControl := 16#00000001#;
QStyleSC_SpinBoxDown               : constant QStyleSubControl := 16#00000002#;
QStyleSC_SpinBoxFrame              : constant QStyleSubControl := 16#00000004#;
QStyleSC_SpinBoxEditField          : constant QStyleSubControl := 16#00000008#;
QStyleSC_ComboBoxFrame             : constant QStyleSubControl := 16#00000001#;
QStyleSC_ComboBoxEditField         : constant QStyleSubControl := 16#00000002#;
QStyleSC_ComboBoxArrow             : constant QStyleSubControl := 16#00000004#;
QStyleSC_ComboBoxListBoxPopup      : constant QStyleSubControl := 16#00000008#;
QStyleSC_SliderGroove              : constant QStyleSubControl := 16#00000001#;
QStyleSC_SliderHandle              : constant QStyleSubControl := 16#00000002#;
QStyleSC_SliderTickmarks           : constant QStyleSubControl := 16#00000004#;
QStyleSC_ToolButton                : constant QStyleSubControl := 16#00000001#;
QStyleSC_ToolButtonMenu            : constant QStyleSubControl := 16#00000002#;
QStyleSC_TitleBarSysMenu           : constant QStyleSubControl := 16#00000001#;
QStyleSC_TitleBarMinButton         : constant QStyleSubControl := 16#00000002#;
QStyleSC_TitleBarMaxButton         : constant QStyleSubControl := 16#00000004#;
QStyleSC_TitleBarCloseButton       : constant QStyleSubControl := 16#00000008#;
QStyleSC_TitleBarNormalButton      : constant QStyleSubControl := 16#00000010#;
QStyleSC_TitleBarShadeButton       : constant QStyleSubControl := 16#00000020#;
QStyleSC_TitleBarUnshadeButton     : constant QStyleSubControl := 16#00000040#;
QStyleSC_TitleBarContextHelpButton : constant QStyleSubControl := 16#00000080#;
QStyleSC_TitleBarLabel             : constant QStyleSubControl := 16#00000100#;
QStyleSC_Q3ListView                : constant QStyleSubControl := 16#00000001#;
QStyleSC_Q3ListViewBranch          : constant QStyleSubControl := 16#00000002#;
QStyleSC_Q3ListViewExpand          : constant QStyleSubControl := 16#00000004#;
QStyleSC_DialGroove                : constant QStyleSubControl := 16#00000001#;
QStyleSC_DialHandle                : constant QStyleSubControl := 16#00000002#;
QStyleSC_DialTickmarks             : constant QStyleSubControl := 16#00000004#;
QStyleSC_GroupBoxCheckBox          : constant QStyleSubControl := 16#00000001#;
QStyleSC_GroupBoxLabel             : constant QStyleSubControl := 16#00000002#;
QStyleSC_GroupBoxContents          : constant QStyleSubControl := 16#00000004#;
QStyleSC_GroupBoxFrame             : constant QStyleSubControl := 16#00000008#;
QStyleSC_MdiMinButton              : constant QStyleSubControl := 16#00000001#;
QStyleSC_MdiNormalButton           : constant QStyleSubControl := 16#00000002#;
QStyleSC_MdiCloseButton            : constant QStyleSubControl := 16#00000004#;
QStyleSC_All                       : constant QStyleSubControl := 16#ffffffff#;

type QStyleContentsType is (
    QStyleCT_PushButton,
    QStyleCT_CheckBox,
    QStyleCT_RadioButton,
    QStyleCT_ToolButton,
    QStyleCT_ComboBox,
    QStyleCT_Splitter,
    QStyleCT_Q3DockWindow,
    QStyleCT_ProgressBar,
    QStyleCT_MenuItem,
    QStyleCT_MenuBarItem,
    QStyleCT_MenuBar,
    QStyleCT_Menu,
    QStyleCT_TabBarTab,
    QStyleCT_Slider,
    QStyleCT_ScrollBar,
    QStyleCT_Q3Header,
    QStyleCT_LineEdit,
    QStyleCT_SpinBox,
    QStyleCT_SizeGrip,
    QStyleCT_TabWidget,
    QStyleCT_DialogButtons,
    QStyleCT_HeaderSection,
    QStyleCT_GroupBox,
    QStyleCT_MdiControls,
    QStyleCT_CustomBase);
pragma Convention(C,QStyleContentsType);

for QStyleContentsType use (
    QStyleCT_PushButton => 0,
    QStyleCT_CheckBox => 1,
    QStyleCT_RadioButton => 2,
    QStyleCT_ToolButton => 3,
    QStyleCT_ComboBox => 4,
    QStyleCT_Splitter => 5,
    QStyleCT_Q3DockWindow => 6,
    QStyleCT_ProgressBar => 7,
    QStyleCT_MenuItem => 8,
    QStyleCT_MenuBarItem => 9,
    QStyleCT_MenuBar => 10,
    QStyleCT_Menu => 11,
    QStyleCT_TabBarTab => 12,
    QStyleCT_Slider => 13,
    QStyleCT_ScrollBar => 14,
    QStyleCT_Q3Header => 15,
    QStyleCT_LineEdit => 16,
    QStyleCT_SpinBox => 17,
    QStyleCT_SizeGrip => 18,
    QStyleCT_TabWidget => 19,
    QStyleCT_DialogButtons => 20,
    QStyleCT_HeaderSection => 21,
    QStyleCT_GroupBox => 22,
    QStyleCT_MdiControls => 23,
    QStyleCT_CustomBase => 16#f0000000#);

type QStyleStandardPixmap is (
    QStyleSP_TitleBarMenuButton,
    QStyleSP_TitleBarMinButton,
    QStyleSP_TitleBarMaxButton,
    QStyleSP_TitleBarCloseButton,
    QStyleSP_TitleBarNormalButton,
    QStyleSP_TitleBarShadeButton,
    QStyleSP_TitleBarUnshadeButton,
    QStyleSP_TitleBarContextHelpButton,
    QStyleSP_DockWidgetCloseButton,
    QStyleSP_MessageBoxInformation,
    QStyleSP_MessageBoxWarning,
    QStyleSP_MessageBoxCritical,
    QStyleSP_MessageBoxQuestion,
    QStyleSP_DesktopIcon,
    QStyleSP_TrashIcon,
    QStyleSP_ComputerIcon,
    QStyleSP_DriveFDIcon,
    QStyleSP_DriveHDIcon,
    QStyleSP_DriveCDIcon,
    QStyleSP_DriveDVDIcon,
    QStyleSP_DriveNetIcon,
    QStyleSP_DirOpenIcon,
    QStyleSP_DirClosedIcon,
    QStyleSP_DirLinkIcon,
    QStyleSP_DirLinkOpenIcon,
    QStyleSP_FileIcon,
    QStyleSP_FileLinkIcon,
    QStyleSP_ToolBarHorizontalExtensionButton,
    QStyleSP_ToolBarVerticalExtensionButton,
    QStyleSP_FileDialogStart,
    QStyleSP_FileDialogEnd,
    QStyleSP_FileDialogToParent,
    QStyleSP_FileDialogNewFolder,
    QStyleSP_FileDialogDetailedView,
    QStyleSP_FileDialogInfoView,
    QStyleSP_FileDialogContentsView,
    QStyleSP_FileDialogListView,
    QStyleSP_FileDialogBack,
    QStyleSP_DirIcon,
    QStyleSP_DialogOkButton,
    QStyleSP_DialogCancelButton,
    QStyleSP_DialogHelpButton,
    QStyleSP_DialogOpenButton,
    QStyleSP_DialogSaveButton,
    QStyleSP_DialogCloseButton,
    QStyleSP_DialogApplyButton,
    QStyleSP_DialogResetButton,
    QStyleSP_DialogDiscardButton,
    QStyleSP_DialogYesButton,
    QStyleSP_DialogNoButton,
    QStyleSP_ArrowUp,
    QStyleSP_ArrowDown,
    QStyleSP_ArrowLeft,
    QStyleSP_ArrowRight,
    QStyleSP_ArrowBack,
    QStyleSP_ArrowForward,
    QStyleSP_DirHomeIcon,
    QStyleSP_CommandLink,
    QStyleSP_VistaShield,
    QStyleSP_BrowserReload,
    QStyleSP_BrowserStop,
    QStyleSP_MediaPlay,
    QStyleSP_MediaStop,
    QStyleSP_MediaPause,
    QStyleSP_MediaSkipForward,
    QStyleSP_MediaSkipBackward,
    QStyleSP_MediaSeekForward,
    QStyleSP_MediaSeekBackward,
    QStyleSP_MediaVolume,
    QStyleSP_MediaVolumeMuted,
    QStyleSP_CustomBase);
pragma Convention(C,QStyleStandardPixmap);

for QStyleStandardPixmap use (
    QStyleSP_TitleBarMenuButton => 0,
    QStyleSP_TitleBarMinButton => 1,
    QStyleSP_TitleBarMaxButton => 2,
    QStyleSP_TitleBarCloseButton => 3,
    QStyleSP_TitleBarNormalButton => 4,
    QStyleSP_TitleBarShadeButton => 5,
    QStyleSP_TitleBarUnshadeButton => 6,
    QStyleSP_TitleBarContextHelpButton => 7,
    QStyleSP_DockWidgetCloseButton => 8,
    QStyleSP_MessageBoxInformation => 9,
    QStyleSP_MessageBoxWarning => 10,
    QStyleSP_MessageBoxCritical => 11,
    QStyleSP_MessageBoxQuestion => 12,
    QStyleSP_DesktopIcon => 13,
    QStyleSP_TrashIcon => 14,
    QStyleSP_ComputerIcon => 15,
    QStyleSP_DriveFDIcon => 16,
    QStyleSP_DriveHDIcon => 17,
    QStyleSP_DriveCDIcon => 18,
    QStyleSP_DriveDVDIcon => 19,
    QStyleSP_DriveNetIcon => 20,
    QStyleSP_DirOpenIcon => 21,
    QStyleSP_DirClosedIcon => 22,
    QStyleSP_DirLinkIcon => 23,
    QStyleSP_DirLinkOpenIcon => 24,
    QStyleSP_FileIcon => 25,
    QStyleSP_FileLinkIcon => 26,
    QStyleSP_ToolBarHorizontalExtensionButton => 27,
    QStyleSP_ToolBarVerticalExtensionButton => 28,
    QStyleSP_FileDialogStart => 29,
    QStyleSP_FileDialogEnd => 30,
    QStyleSP_FileDialogToParent => 31,
    QStyleSP_FileDialogNewFolder => 32,
    QStyleSP_FileDialogDetailedView => 33,
    QStyleSP_FileDialogInfoView => 34,
    QStyleSP_FileDialogContentsView => 35,
    QStyleSP_FileDialogListView => 36,
    QStyleSP_FileDialogBack => 37,
    QStyleSP_DirIcon => 38,
    QStyleSP_DialogOkButton => 39,
    QStyleSP_DialogCancelButton => 40,
    QStyleSP_DialogHelpButton => 41,
    QStyleSP_DialogOpenButton => 42,
    QStyleSP_DialogSaveButton => 43,
    QStyleSP_DialogCloseButton => 44,
    QStyleSP_DialogApplyButton => 45,
    QStyleSP_DialogResetButton => 46,
    QStyleSP_DialogDiscardButton => 47,
    QStyleSP_DialogYesButton => 48,
    QStyleSP_DialogNoButton => 49,
    QStyleSP_ArrowUp => 50,
    QStyleSP_ArrowDown => 51,
    QStyleSP_ArrowLeft => 52,
    QStyleSP_ArrowRight => 53,
    QStyleSP_ArrowBack => 54,
    QStyleSP_ArrowForward => 55,
    QStyleSP_DirHomeIcon => 56,
    QStyleSP_CommandLink => 57,
    QStyleSP_VistaShield => 58,
    QStyleSP_BrowserReload => 59,
    QStyleSP_BrowserStop   => 60,
    QStyleSP_MediaPlay => 61   ,
    QStyleSP_MediaStop => 62  ,
    QStyleSP_MediaPause => 63   ,
    QStyleSP_MediaSkipForward => 64,
    QStyleSP_MediaSkipBackward => 65,
    QStyleSP_MediaSeekForward  => 66,
    QStyleSP_MediaSeekBackward => 67,
    QStyleSP_MediaVolume       => 68,
    QStyleSP_MediaVolumeMuted  => 69,
    QStyleSP_CustomBase => 16#f0000000#);

subtype QStylePixelMetric is cardinal;

QStylePM_ButtonMargin                   : constant QStylePixelMetric := 0;
QStylePM_ButtonDefaultIndicator         : constant QStylePixelMetric := 1;
QStylePM_MenuButtonIndicator            : constant QStylePixelMetric := 2;
QStylePM_ButtonShiftHorizontal          : constant QStylePixelMetric := 3;
QStylePM_ButtonShiftVertical            : constant QStylePixelMetric := 4;
QStylePM_DefaultFrameWidth              : constant QStylePixelMetric := 5;
QStylePM_SpinBoxFrameWidth              : constant QStylePixelMetric := 6;
QStylePM_ComboBoxFrameWidth             : constant QStylePixelMetric := 7;
QStylePM_MaximumDragDistance            : constant QStylePixelMetric := 8;
QStylePM_ScrollBarExtent                : constant QStylePixelMetric := 9;
QStylePM_ScrollBarSliderMin             : constant QStylePixelMetric := 10;
QStylePM_SliderThickness                : constant QStylePixelMetric := 11;
QStylePM_SliderControlThickness         : constant QStylePixelMetric := 12;
QStylePM_SliderLength                   : constant QStylePixelMetric := 13;
QStylePM_SliderTickmarkOffset           : constant QStylePixelMetric := 14;
QStylePM_SliderSpaceAvailable           : constant QStylePixelMetric := 15;
QStylePM_DockWidgetSeparatorExtent      : constant QStylePixelMetric := 16;
QStylePM_DockWidgetHandleExtent         : constant QStylePixelMetric := 17;
QStylePM_DockWidgetFrameWidth           : constant QStylePixelMetric := 18;
QStylePM_TabBarTabOverlap               : constant QStylePixelMetric := 19;
QStylePM_TabBarTabHSpace                : constant QStylePixelMetric := 20;
QStylePM_TabBarTabVSpace                : constant QStylePixelMetric := 21;
QStylePM_TabBarBaseHeight               : constant QStylePixelMetric := 22;
QStylePM_TabBarBaseOverlap              : constant QStylePixelMetric := 23;
QStylePM_ProgressBarChunkWidth          : constant QStylePixelMetric := 24;
QStylePM_SplitterWidth                  : constant QStylePixelMetric := 25;
QStylePM_TitleBarHeight                 : constant QStylePixelMetric := 26;
QStylePM_MenuScrollerHeight             : constant QStylePixelMetric := 27;
QStylePM_MenuHMargin                    : constant QStylePixelMetric := 28;
QStylePM_MenuVMargin                    : constant QStylePixelMetric := 29;
QStylePM_MenuPanelWidth                 : constant QStylePixelMetric := 30;
QStylePM_MenuTearoffHeight              : constant QStylePixelMetric := 31;
QStylePM_MenuDesktopFrameWidth          : constant QStylePixelMetric := 32;
QStylePM_MenuBarPanelWidth              : constant QStylePixelMetric := 33;
QStylePM_MenuBarItemSpacing             : constant QStylePixelMetric := 34;
QStylePM_MenuBarVMargin                 : constant QStylePixelMetric := 35;
QStylePM_MenuBarHMargin                 : constant QStylePixelMetric := 36;
QStylePM_IndicatorWidth                 : constant QStylePixelMetric := 37;
QStylePM_IndicatorHeight                : constant QStylePixelMetric := 38;
QStylePM_ExclusiveIndicatorWidth        : constant QStylePixelMetric := 39;
QStylePM_ExclusiveIndicatorHeight       : constant QStylePixelMetric := 40;
QStylePM_CheckListButtonSize            : constant QStylePixelMetric := 41;
QStylePM_CheckListControllerSize        : constant QStylePixelMetric := 42;
QStylePM_DialogButtonsSeparator         : constant QStylePixelMetric := 43;
QStylePM_DialogButtonsButtonWidth       : constant QStylePixelMetric := 44;
QStylePM_DialogButtonsButtonHeight      : constant QStylePixelMetric := 45;
QStylePM_MdiSubWindowFrameWidth         : constant QStylePixelMetric := 46;
QStylePM_MDIFrameWidth                  : constant QStylePixelMetric := 46;
QStylePM_MdiSubWindowMinimizedWidth     : constant QStylePixelMetric := 47;
QStylePM_MDIMinimizedWidth              : constant QStylePixelMetric := 47;
QStylePM_HeaderMargin                   : constant QStylePixelMetric := 48;
QStylePM_HeaderMarkSize                 : constant QStylePixelMetric := 49;
QStylePM_HeaderGripMargin               : constant QStylePixelMetric := 50;
QStylePM_TabBarTabShiftHorizontal       : constant QStylePixelMetric := 51;
QStylePM_TabBarTabShiftVertical         : constant QStylePixelMetric := 52;
QStylePM_TabBarScrollButtonWidth        : constant QStylePixelMetric := 53;
QStylePM_ToolBarFrameWidth              : constant QStylePixelMetric := 54;
QStylePM_ToolBarHandleExtent            : constant QStylePixelMetric := 55;
QStylePM_ToolBarItemSpacing             : constant QStylePixelMetric := 56;
QStylePM_ToolBarItemMargin              : constant QStylePixelMetric := 57;
QStylePM_ToolBarSeparatorExtent         : constant QStylePixelMetric := 58;
QStylePM_ToolBarExtensionExtent         : constant QStylePixelMetric := 59;
QStylePM_SpinBoxSliderHeight            : constant QStylePixelMetric := 60;
QStylePM_DefaultTopLevelMargin          : constant QStylePixelMetric := 61;
QStylePM_DefaultChildMargin             : constant QStylePixelMetric := 62;
QStylePM_DefaultLayoutSpacing           : constant QStylePixelMetric := 63;
QStylePM_ToolBarIconSize                : constant QStylePixelMetric := 64;
QStylePM_ListViewIconSize               : constant QStylePixelMetric := 65;
QStylePM_IconViewIconSize               : constant QStylePixelMetric := 66;
QStylePM_SmallIconSize                  : constant QStylePixelMetric := 67;
QStylePM_LargeIconSize                  : constant QStylePixelMetric := 68;
QStylePM_FocusFrameVMargin              : constant QStylePixelMetric := 69;
QStylePM_FocusFrameHMargin              : constant QStylePixelMetric := 70;
QStylePM_ToolTipLabelFrameWidth         : constant QStylePixelMetric := 71;
QStylePM_CheckBoxLabelSpacing           : constant QStylePixelMetric := 72;
QStylePM_TabBarIconSize                 : constant QStylePixelMetric := 73;
QStylePM_SizeGripSize                   : constant QStylePixelMetric := 74;
QStylePM_DockWidgetTitleMargin          : constant QStylePixelMetric := 75;
QStylePM_MessageBoxIconSize             : constant QStylePixelMetric := 76;
QStylePM_ButtonIconSize                 : constant QStylePixelMetric := 77;
QStylePM_DockWidgetTitleBarButtonMargin : constant QStylePixelMetric := 78;
QStylePM_RadioButtonLabelSpacing        : constant QStylePixelMetric := 79;
QStylePM_LayoutLeftMargin               : constant QStylePixelMetric := 80;
QStylePM_LayoutTopMargin                : constant QStylePixelMetric := 81;
QStylePM_LayoutRightMargin              : constant QStylePixelMetric := 82;
QStylePM_LayoutBottomMargin             : constant QStylePixelMetric := 83;
QStylePM_LayoutHorizontalSpacing        : constant QStylePixelMetric := 84;
QStylePM_LayoutVerticalSpacing          : constant QStylePixelMetric := 85;
QStylePM_CustomBase                     : constant QStylePixelMetric := 16#f0000000#;

subtype  QStyleStyleHint is cardinal; 

QStyleSH_EtchDisabledText                           : constant QStyleStyleHint := 0;
QStyleSH_DitherDisabledText                         : constant QStyleStyleHint := 1;
QStyleSH_ScrollBar_MiddleClickAbsolutePosition      : constant QStyleStyleHint := 2;
QStyleSH_ScrollBar_ScrollWhenvoid_StarLeavesControl : constant QStyleStyleHint := 3;
QStyleSH_TabBar_SelectMouseType                     : constant QStyleStyleHint := 4;
QStyleSH_TabBar_Alignment                           : constant QStyleStyleHint := 5;
QStyleSH_Header_ArrowAlignment                      : constant QStyleStyleHint := 6;
QStyleSH_Slider_SnapToValue                         : constant QStyleStyleHint := 7;
QStyleSH_Slider_SloppyKeyEvents                     : constant QStyleStyleHint := 8;
QStyleSH_ProgressDialog_CenterCancelButton          : constant QStyleStyleHint := 9;
QStyleSH_ProgressDialog_TextLabelAlignment          : constant QStyleStyleHint := 10;
QStyleSH_PrintDialog_RightAlignButtons              : constant QStyleStyleHint := 11;
QStyleSH_MainWindow_SpaceBelowMenuBar               : constant QStyleStyleHint := 12;
QStyleSH_FontDialog_SelectAssociatedText            : constant QStyleStyleHint := 13;
QStyleSH_Menu_AllowActiveAndDisabled                : constant QStyleStyleHint := 14;
QStyleSH_Menu_SpaceActivatesItem                    : constant QStyleStyleHint := 15;
QStyleSH_Menu_SubMenuPopupDelay                     : constant QStyleStyleHint := 16;
QStyleSH_ScrollView_FrameOnlyAroundContents         : constant QStyleStyleHint := 17;
QStyleSH_MenuBar_AltKeyNavigation                   : constant QStyleStyleHint := 18;
QStyleSH_ComboBox_ListMouseTracking                 : constant QStyleStyleHint := 19;
QStyleSH_Menu_MouseTracking                         : constant QStyleStyleHint := 20;
QStyleSH_MenuBar_MouseTracking                      : constant QStyleStyleHint := 21;
QStyleSH_ItemView_ChangeHighlightOnFocus            : constant QStyleStyleHint := 22;
QStyleSH_Widget_ShareActivation                     : constant QStyleStyleHint := 23;
QStyleSH_Workspace_FillSpaceOnMaximize              : constant QStyleStyleHint := 24;
QStyleSH_ComboBox_Popup                             : constant QStyleStyleHint := 25;
QStyleSH_TitleBar_NoBorder                          : constant QStyleStyleHint := 26;
QStyleSH_Slider_StopMouseOverSlider                 : constant QStyleStyleHint := 27;
QStyleSH_ScrollBar_StopMouseOverSlider              : constant QStyleStyleHint := 27;
QStyleSH_BlinkCursorWhenTextSelected                : constant QStyleStyleHint := 28;
QStyleSH_RichText_FullWidthSelection                : constant QStyleStyleHint := 29;
QStyleSH_Menu_Scrollable                            : constant QStyleStyleHint := 30;
QStyleSH_GroupBox_TextLabelVerticalAlignment        : constant QStyleStyleHint := 31;
QStyleSH_GroupBox_TextLabelColor                    : constant QStyleStyleHint := 32;
QStyleSH_Menu_SloppySubMenus                        : constant QStyleStyleHint := 33;
QStyleSH_Table_GridLineColor                        : constant QStyleStyleHint := 34;
QStyleSH_LineEdit_PasswordCharacter                 : constant QStyleStyleHint := 35;
QStyleSH_DialogButtons_DefaultButton                : constant QStyleStyleHint := 36;
QStyleSH_ToolBox_SelectedPageTitleBold              : constant QStyleStyleHint := 37;
QStyleSH_TabBar_PreferNoArrows                      : constant QStyleStyleHint := 38;
QStyleSH_ScrollBar_LeftClickAbsolutePosition        : constant QStyleStyleHint := 39;
QStyleSH_Q3ListViewExpand_SelectMouseType           : constant QStyleStyleHint := 40;
QStyleSH_UnderlineShortcut                          : constant QStyleStyleHint := 41;
QStyleSH_SpinBox_AnimateButton                      : constant QStyleStyleHint := 42;
QStyleSH_SpinBox_KeyPressAutoRepeatRate             : constant QStyleStyleHint := 43;
QStyleSH_SpinBox_ClickAutoRepeatRate                : constant QStyleStyleHint := 44;
QStyleSH_Menu_FillScreenWithScroll                  : constant QStyleStyleHint := 45;
QStyleSH_ToolTipLabel_Opacity                       : constant QStyleStyleHint := 46;
QStyleSH_DrawMenuBarSeparator                       : constant QStyleStyleHint := 47;
QStyleSH_TitleBar_ModifyNotification                : constant QStyleStyleHint := 48;
QStyleSH_Button_FocusPolicy                         : constant QStyleStyleHint := 49;
QStyleSH_MenuBar_DismissOnSecondClick               : constant QStyleStyleHint := 50;
QStyleSH_MessageBox_UseBorderForButtonSpacing       : constant QStyleStyleHint := 51;
QStyleSH_TitleBar_AutoRaise                         : constant QStyleStyleHint := 52;
QStyleSH_ToolButton_PopupDelay                      : constant QStyleStyleHint := 53;
QStyleSH_FocusFrame_Mask                            : constant QStyleStyleHint := 54;
QStyleSH_RubberBand_Mask                            : constant QStyleStyleHint := 55;
QStyleSH_WindowFrame_Mask                           : constant QStyleStyleHint := 56;
QStyleSH_SpinControls_DisableOnBounds               : constant QStyleStyleHint := 57;
QStyleSH_Dial_BackgroundRole                        : constant QStyleStyleHint := 58;
QStyleSH_ComboBox_LayoutDirection                   : constant QStyleStyleHint := 59;
QStyleSH_ItemView_EllipsisLocation                  : constant QStyleStyleHint := 60;
QStyleSH_ItemView_ShowDecorationSelected            : constant QStyleStyleHint := 61;
QStyleSH_ItemView_ActivateItemOnSingleClick         : constant QStyleStyleHint := 62;
QStyleSH_ScrollBar_ContextMenu                      : constant QStyleStyleHint := 63;
QStyleSH_ScrollBar_RollBetweenButtons               : constant QStyleStyleHint := 64;
QStyleSH_Slider_AbsoluteSetButtons                  : constant QStyleStyleHint := 65;
QStyleSH_Slider_PageSetButtons                      : constant QStyleStyleHint := 66;
QStyleSH_Menu_KeyboardSearch                        : constant QStyleStyleHint := 67;
QStyleSH_TabBar_ElideMode                           : constant QStyleStyleHint := 68;
QStyleSH_DialogButtonLayout                         : constant QStyleStyleHint := 69;
QStyleSH_ComboBox_PopupFrameStyle                   : constant QStyleStyleHint := 70;
QStyleSH_MessageBox_TextInteractionFlags            : constant QStyleStyleHint := 71;
QStyleSH_DialogButtonBox_ButtonsHaveIcons           : constant QStyleStyleHint := 72;
QStyleSH_SpellCheckUnderlineStyle                   : constant QStyleStyleHint := 73;
QStyleSH_MessageBox_CenterButtons                   : constant QStyleStyleHint := 74;
QStyleSH_Menu_SelectionWrap                         : constant QStyleStyleHint := 75;
QStyleSH_ItemView_MovementWithoutUpdatingSelection  : constant QStyleStyleHint := 76;
QStyleSH_ToolTip_Mask                               : constant QStyleStyleHint := 77;
QStyleSH_FocusFrame_AboveWidget                     : constant QStyleStyleHint := 78;
QStyleSH_TextControl_FocusIndicatorTextCharFormat   : constant QStyleStyleHint := 79;
QStyleSH_WizardStyle                                : constant QStyleStyleHint := 80;
QStyleSH_ItemView_ArrowKeysNavigateIntoChildren     : constant QStyleStyleHint := 81;
QStyleSH_CustomBase                                 : constant QStyleStyleHint := 16#f0000000#;

procedure QStyle_polish(handle: not null  QStyleH; p1: QWidgetH);    
pragma Import(C,QStyle_polish,"QStyle_polish");

procedure QStyle_unpolish(handle: not null  QStyleH; p1: QWidgetH);    
pragma Import(C,QStyle_unpolish,"QStyle_unpolish");

procedure QStyle_polish2(handle: not null  QStyleH; p1: QApplicationH);
pragma Import(C,QStyle_polish2,"QStyle_polish2");

procedure QStyle_unpolish2(handle: not null  QStyleH; p1: QApplicationH);
pragma Import(C,QStyle_unpolish2,"QStyle_unpolish2");

procedure QStyle_polish3(handle: not null  QStyleH; p1: QPaletteH);
pragma Import(C,QStyle_polish3,"QStyle_polish3");

function  QStyle_itemTextRect(handle: not null  QStyleH; fm: QFontMetricsH; r: QRectH; flags: Integer; enabled: Boolean; text: QStringH) return QRectH;
pragma Import(C,QStyle_itemTextRect,"QStyle_itemTextRect");

function  QStyle_itemPixmapRect(handle: not null  QStyleH; r: QRectH; flags: Integer; pixmap: QPixmapH) return QRectH;
pragma Import(C,QStyle_itemPixmapRect,"QStyle_itemPixmapRect");

procedure QStyle_drawItemText(handle: not null  QStyleH; painter: QPainterH; rect: QRectH; flags: Integer; pal: QPaletteH; enabled: Boolean; text: QStringH; textRole: QPaletteColorRole := QPaletteNoRole);
pragma Import(C,QStyle_drawItemText,"QStyle_drawItemText");

procedure QStyle_drawItemPixmap(handle: not null  QStyleH; painter: QPainterH; rect: QRectH; alignment: Integer; pixmap: QPixmapH);   
pragma Import(C,QStyle_drawItemPixmap,"QStyle_drawItemPixmap");

function  QStyle_standardPalette(handle: not null  QStyleH) return QPaletteH;
pragma Import(C,QStyle_standardPalette,"QStyle_standardPalette");

procedure QStyle_drawPrimitive(handle: not null  QStyleH; pe: QStylePrimitiveElement; opt: QStyleOptionH; p: QPainterH; w: QWidgetH := null);   
pragma Import(C,QStyle_drawPrimitive,"QStyle_drawPrimitive");

procedure QStyle_drawControl(handle: not null  QStyleH; element: QStyleControlElement; opt: QStyleOptionH; p: QPainterH; w: QWidgetH := null);   
pragma Import(C,QStyle_drawControl,"QStyle_drawControl");

function  QStyle_subElementRect(handle: not null  QStyleH; subElement: QStyleSubElement; option: QStyleOptionH; widget: QWidgetH := null) return QRectH;
pragma Import(C,QStyle_subElementRect,"QStyle_subElementRect");

procedure QStyle_drawComplexControl(handle: not null  QStyleH; cc: QStyleComplexControl; opt: QStyleOptionComplexH; p: QPainterH; widget: QWidgetH := null);   
pragma Import(C,QStyle_drawComplexControl,"QStyle_drawComplexControl");

function QStyle_hitTestComplexControl(handle: not null  QStyleH; cc: QStyleComplexControl; opt: QStyleOptionComplexH; pt: QPointH; widget: QWidgetH := null) return QStyleSubControl;   
pragma Import(C,QStyle_hitTestComplexControl,"QStyle_hitTestComplexControl");

function  QStyle_subControlRect(handle: not null  QStyleH; cc: QStyleComplexControl; opt: QStyleOptionComplexH; sc: QStyleSubControl; widget: QWidgetH := null) return  QRectH;
pragma Import(C,QStyle_subControlRect,"QStyle_subControlRect");

function QStyle_pixelMetric(handle: not null  QStyleH; metric: QStylePixelMetric; option: QStyleOptionH := null; widget: QWidgetH := null) return Integer;   
pragma Import(C,QStyle_pixelMetric,"QStyle_pixelMetric");

function  QStyle_sizeFromContents(handle: not null  QStyleH; ct: QStyleContentsType; opt: QStyleOptionH; contentsSize: QSizeH; w: QWidgetH := null) return QSizeH;
pragma Import(C,QStyle_sizeFromContents,"QStyle_sizeFromContents");

function QStyle_styleHint(handle: not null  QStyleH; stylehint: QStyleStyleHint; opt: QStyleOptionH := null; widget: QWidgetH := null; returnData: QStyleHintReturnH := null) return Integer;   
pragma Import(C,QStyle_styleHint,"QStyle_styleHint");

function  QStyle_standardPixmap(handle: not null  QStyleH; standardPixmap: QStyleStandardPixmap; opt: QStyleOptionH := null; widget: QWidgetH := null) return QPixmapH;
pragma Import(C,QStyle_standardPixmap,"QStyle_standardPixmap");

function  QStyle_standardIcon(handle: not null  QStyleH; standardIcon: QStyleStandardPixmap; option: QStyleOptionH := null; widget: QWidgetH := null) return  QIconH;
pragma Import(C,QStyle_standardIcon,"QStyle_standardIcon");

function  QStyle_generatedIconPixmap(handle: not null  QStyleH; iconMode: QIconMode; pixmap: QPixmapH; opt: QStyleOptionH) return QPixmapH;
pragma Import(C,QStyle_generatedIconPixmap,"QStyle_generatedIconPixmap");

function  QStyle_visualRect(direction: QtLayoutDirection; boundingRect: QRectH; logicalRect: QRectH) return QRectH;
pragma Import(C,QStyle_visualRect,"QStyle_visualRect");

function  QStyle_visualPos(direction: QtLayoutDirection; boundingRect: QRectH; logicalPos: QPointH) return QPointH;
pragma Import(C,QStyle_visualPos,"QStyle_visualPos");

function QStyle_sliderPositionFromValue(min: Integer; max: Integer; val: Integer; space: Integer; upsideDown: Boolean := False) return Integer;   
pragma Import(C,QStyle_sliderPositionFromValue,"QStyle_sliderPositionFromValue");

function QStyle_sliderValueFromPosition(min: Integer; max: Integer; pos: Integer; space: Integer; upsideDown: Boolean := False) return Integer;   
pragma Import(C,QStyle_sliderValueFromPosition,"QStyle_sliderValueFromPosition");

function QStyle_visualAlignment(direction: QtLayoutDirection; alignment: QtAlignment) return  QtAlignment;   
pragma Import(C,QStyle_visualAlignment,"QStyle_visualAlignment");

function  QStyle_alignedRect(direction: QtLayoutDirection; alignment: QtAlignment; size: QSizeH; rectangle: QRectH) return QRectH;
pragma Import(C,QStyle_alignedRect,"QStyle_alignedRect");

function QStyle_layoutSpacing(handle: not null  QStyleH; control1, control2: integer; orientation: QtOrientation; option: QStyleOptionH := null; widget: QWidgetH := null) return Integer;
pragma Import(C,QStyle_layoutSpacing,"QStyle_layoutSpacing");
 
function QStyle_combinedLayoutSpacing(handle: not null  QStyleH; controls1, controls2: integer; orientation: QtOrientation; option: QStyleOptionH := null; widget: QWidgetH := null) return Integer;
pragma Import(C,QStyle_combinedLayoutSpacing,"QStyle_combinedLayoutSpacing");

type  QStyleOptionOptionType is (
    QStyleOptionSO_Default,
    QStyleOptionSO_FocusRect,
    QStyleOptionSO_Button,
    QStyleOptionSO_Tab,
    QStyleOptionSO_MenuItem,
    QStyleOptionSO_Frame,
    QStyleOptionSO_ProgressBar,
    QStyleOptionSO_ToolBox,
    QStyleOptionSO_Header,
    QStyleOptionSO_Q3DockWindow,
    QStyleOptionSO_DockWidget,
    QStyleOptionSO_Q3ListViewItem,
    QStyleOptionSO_ViewItem,
    QStyleOptionSO_TabWidgetFrame,
    QStyleOptionSO_TabBarBase,
    QStyleOptionSO_RubberBand,
    QStyleOptionSO_ToolBar,
    QStyleOptionSO_GraphicsItem,
    QStyleOptionSO_Slider,
    QStyleOptionSO_SpinBox,
    QStyleOptionSO_ToolButton,
    QStyleOptionSO_ComboBox,
    QStyleOptionSO_Q3ListView,
    QStyleOptionSO_TitleBar,
    QStyleOptionSO_GroupBox,
    QStyleOptionSO_SizeGrip,
    QStyleOptionSO_CustomBase,
    QStyleOptionSO_Complex,
    QStyleOptionSO_ComplexCustomBase);

for QStyleOptionOptionType use (
    QStyleOptionSO_Default => 0,
    QStyleOptionSO_FocusRect => 1,
    QStyleOptionSO_Button => 2,
    QStyleOptionSO_Tab => 3,
    QStyleOptionSO_MenuItem => 4,
    QStyleOptionSO_Frame => 5,
    QStyleOptionSO_ProgressBar => 6,
    QStyleOptionSO_ToolBox => 7,
    QStyleOptionSO_Header => 8,
    QStyleOptionSO_Q3DockWindow => 9,
    QStyleOptionSO_DockWidget => 10,
    QStyleOptionSO_Q3ListViewItem => 11,
    QStyleOptionSO_ViewItem => 12,
    QStyleOptionSO_TabWidgetFrame => 13,
    QStyleOptionSO_TabBarBase => 14,
    QStyleOptionSO_RubberBand => 15,
    QStyleOptionSO_ToolBar => 16,
    QStyleOptionSO_GraphicsItem => 17,
    QStyleOptionSO_Slider => 18,
    QStyleOptionSO_SpinBox => 19,
    QStyleOptionSO_ToolButton => 20,
    QStyleOptionSO_ComboBox => 21,
    QStyleOptionSO_Q3ListView => 22,
    QStyleOptionSO_TitleBar => 23,
    QStyleOptionSO_GroupBox => 24,
    QStyleOptionSO_SizeGrip => 25,
    QStyleOptionSO_CustomBase => 16#f00#,
    QStyleOptionSO_Complex => 16#f0000#,
    QStyleOptionSO_ComplexCustomBase => 16#f000000#);

QStyleOptionVersion          : constant cardinal := 1;
QStyleOptionFocusRectVersion : constant cardinal := 1;
QStyleOptionFrameVersion     : constant cardinal := 1;
QStyleOptionFrameV2Version   : constant cardinal := 2;

subtype  QStyleOptionFrameV2FrameFeature is cardinal;
subtype  QStyleOptionFrameV2FrameFeatures is cardinal;

QStyleOptionFrameV2None : constant QStyleOptionFrameV2FrameFeature := 0;
QStyleOptionFrameV2Flat : constant QStyleOptionFrameV2FrameFeature := 1;

QStyleOptionTabWidgetFrameVersion : constant cardinal := 1;
QStyleOptionTabBarBaseVersion     : constant cardinal := 1;

type QStyleOptionHeaderSectionPosition is (QStyleOptionHeaderBeginning, QStyleOptionHeaderMiddle, QStyleOptionHeaderEnd, QStyleOptionHeaderOnlyOneSection );

type QStyleOptionHeaderSelectedPosition is (QStyleOptionHeaderNotAdjacent, QStyleOptionHeaderNextIsSelected, QStyleOptionHeaderPreviousIsSelected, QStyleOptionHeaderNextAndPreviousAreSelected );

type QStyleOptionHeaderSortIndicator is (QStyleOptionHeaderNone, QStyleOptionHeaderSortUp, QStyleOptionHeaderSortDown );

QStyleOptionHeaderVersion : constant cardinal := 1;
QStyleOptionButtonVersion : constant cardinal := 1;

subtype QStyleOptionButtonButtonFeature  is cardinal;
subtype QStyleOptionButtonButtonFeatures is cardinal;

QStyleOptionButtonNone              : constant QStyleOptionButtonButtonFeature := 16#00#;
QStyleOptionButtonFlat              : constant QStyleOptionButtonButtonFeature := 16#01#;
QStyleOptionButtonHasMenu           : constant QStyleOptionButtonButtonFeature := 16#02#;
QStyleOptionButtonDefaultButton     : constant QStyleOptionButtonButtonFeature := 16#04#;
QStyleOptionButtonAutoDefaultButton : constant QStyleOptionButtonButtonFeature := 16#08#;
QStyleOptionButtonCommandLinkButton : constant QStyleOptionButtonButtonFeature := 16#10#;

type QStyleOptionTabTabPosition is (QStyleOptionTabBeginning, QStyleOptionTabMiddle, QStyleOptionTabEnd, QStyleOptionTabOnlyOneTab );

type QStyleOptionTabSelectedPosition is (QStyleOptionTabNotAdjacent, QStyleOptionTabNextIsSelected, QStyleOptionTabPreviousIsSelected );

QStyleOptionTabVersion : constant cardinal :=  1;

subtype QStyleOptionTabCornerWidget  is cardinal;
subtype QStyleOptionTabCornerWidgets is cardinal;

QStyleOptionTabNoCornerWidgets   : constant QStyleOptionTabCornerWidget := 0;
QStyleOptionTabLeftCornerWidget  : constant QStyleOptionTabCornerWidget := 1;
QStyleOptionTabRightCornerWidget : constant QStyleOptionTabCornerWidget := 2;

QStyleOptionTabV2Version : constant cardinal := 2;

type QStyleOptionToolBarToolBarPosition is (QStyleOptionToolBarBeginning, QStyleOptionToolBarMiddle, QStyleOptionToolBarEnd, QStyleOptionToolBarOnlyOne );

QStyleOptionToolBarVersion : constant cardinal := 1;

subtype QStyleOptionToolBarToolBarFeature is cardinal;
subtype QStyleOptionToolBarToolBarFeatures is cardinal;
 
QStyleOptionToolBarNone    : constant QStyleOptionToolBarToolBarFeature := 0;
QStyleOptionToolBarMovable : constant QStyleOptionToolBarToolBarFeature := 1;

QStyleOptionProgressBarVersion : constant cardinal := 1;
QStyleOptionProgressBarV2Version : constant cardinal :=  2;

type QStyleOptionMenuItemMenuItemType is (QStyleOptionMenuItemNormal, QStyleOptionMenuItemDefaultItem, QStyleOptionMenuItemSeparator, QStyleOptionMenuItemSubMenu, QStyleOptionMenuItemScroller, QStyleOptionMenuItemTearOff, QStyleOptionMenuItemMargin, 
                                          QStyleOptionMenuItemEmptyArea );

type QStyleOptionMenuItemCheckType is (QStyleOptionMenuItemNotCheckable, QStyleOptionMenuItemExclusive, QStyleOptionMenuItemNonExclusive );

QStyleOptionMenuItemVersion : constant cardinal := 1;
QStyleOptionQ3ListViewItemVersion : constant cardinal :=  1;

subtype  QStyleOptionQ3ListViewItemQ3ListViewItemFeature  is cardinal;
subtype  QStyleOptionQ3ListViewItemQ3ListViewItemFeatures is cardinal;

QStyleOptionQ3ListViewItemNone          : constant QStyleOptionQ3ListViewItemQ3ListViewItemFeature := 16#00#;
QStyleOptionQ3ListViewItemExpandable    : constant QStyleOptionQ3ListViewItemQ3ListViewItemFeature := 16#01#;
QStyleOptionQ3ListViewItemMultiLine     : constant QStyleOptionQ3ListViewItemQ3ListViewItemFeature := 16#02#;
QStyleOptionQ3ListViewItemVisible       : constant QStyleOptionQ3ListViewItemQ3ListViewItemFeature := 16#04#;
QStyleOptionQ3ListViewItemParentControl : constant QStyleOptionQ3ListViewItemQ3ListViewItemFeature := 16#08#;

QStyleOptionQ3DockWindowVersion : constant cardinal := 1;
QStyleOptionDockWidgetVersion   : constant cardinal := 1;
QStyleOptionDockWidgetV2Version : constant cardinal := 2;

type QStyleOptionViewItemPosition is (QStyleOptionViewItemLeft, QStyleOptionViewItemRight, QStyleOptionViewItemTop, QStyleOptionViewItemBottom );

QStyleOptionViewItemVersion   : constant cardinal := 1;
QStyleOptionViewItemV2Version : constant cardinal := 2;

subtype QStyleOptionViewItemV2ViewItemFeature is cardinal; -- QStyleOptionViewItemV2::ViewItemFeature
subtype QStyleOptionViewItemV2ViewItemFeatures is cardinal; -- QStyleOptionViewItemV2::ViewItemFeature

QStyleOptionViewItemV2None      : constant QStyleOptionViewItemV2ViewItemFeature := 16#00#;
QStyleOptionViewItemV2WrapText  : constant QStyleOptionViewItemV2ViewItemFeature := 16#01#;
QStyleOptionViewItemV2Alternate : constant QStyleOptionViewItemV2ViewItemFeature := 16#02#;

QStyleOptionViewItemV3Version : constant cardinal := 3;
QStyleOptionToolBoxVersion    : constant cardinal := 1;

type QStyleOptionToolBoxV2TabPosition is (QStyleOptionToolBoxV2Beginning, QStyleOptionToolBoxV2Middle, QStyleOptionToolBoxV2End, QStyleOptionToolBoxV2OnlyOneTab );

type QStyleOptionToolBoxV2SelectedPosition is (QStyleOptionToolBoxV2NotAdjacent, QStyleOptionToolBoxV2NextIsSelected, QStyleOptionToolBoxV2PreviousIsSelected );

QStyleOptionToolBoxV2Version    : constant cardinal := 2;
QStyleOptionRubberBandVersion   : constant cardinal := 1;
QStyleOptionComplexVersion      : constant cardinal := 1;
QStyleOptionSliderVersion       : constant cardinal := 1;
QStyleOptionSpinBoxVersion      : constant cardinal := 1;
QStyleOptionQ3ListViewVersion   : constant cardinal := 1;
QStyleOptionToolButtonVersion   : constant cardinal := 1;
QStyleOptionComboBoxVersion     : constant cardinal := 1;
QStyleOptionTitleBarVersion     : constant cardinal := 1;
QStyleOptionGroupBoxVersion     : constant cardinal := 1;
QStyleOptionSizeGripVersion     : constant cardinal := 1;
QStyleOptionGraphicsItemVersion : constant cardinal := 1;

type QStyleHintReturnHintReturnType is (
    QStyleHintReturnSH_Mask,
    QStyleHintReturnSH_Variant,
    QStyleHintReturnSH_Default);

for  QStyleHintReturnHintReturnType use (
    QStyleHintReturnSH_Mask    => 0,
    QStyleHintReturnSH_Variant => 1,
    QStyleHintReturnSH_Default => 16#f000#);

QStyleHintReturnVersion        : constant cardinal := 1;
QStyleHintReturnMaskVersion    : constant cardinal := 1;
QStyleHintReturnVariantVersion : constant cardinal := 1;

subtype QStyleOptionStyleOptionType is cardinal;
QStyleOptionType : constant QStyleOptionStyleOptionType := 0;

subtype QStyleOptionFocusRectStyleOptionType is cardinal;
QStyleOptionFocusRectType : constant QStyleOptionFocusRectStyleOptionType := 1;

subtype QStyleOptionFrameStyleOptionType is cardinal;
QStyleOptionFrameType : constant QStyleOptionFrameStyleOptionType := 5;

subtype QStyleOptionTabWidgetFrameStyleOptionType is cardinal;
QStyleOptionTabWidgetFrameType : constant QStyleOptionTabWidgetFrameStyleOptionType := 16#d#;

subtype QStyleOptionTabBarBaseStyleOptionType is cardinal;
QStyleOptionTabBarBaseType : constant QStyleOptionTabBarBaseStyleOptionType := 16#e#;

subtype QStyleOptionHeaderStyleOptionType is cardinal;
QStyleOptionHeaderType : constant QStyleOptionHeaderStyleOptionType := 8;

subtype QStyleOptionButtonStyleOptionType is cardinal;
QStyleOptionButtonType : constant QStyleOptionButtonStyleOptionType := 2;

subtype QStyleOptionTabStyleOptionType is cardinal;
QStyleOptionTabType : constant QStyleOptionTabStyleOptionType := 3;

subtype QStyleOptionToolBarStyleOptionType is cardinal;
QStyleOptionToolBarType : constant QStyleOptionToolBarStyleOptionType := 16#10#;

subtype QStyleOptionProgressBarStyleOptionType is cardinal;
QStyleOptionProgressBarType : constant QStyleOptionProgressBarStyleOptionType := 6;

subtype QStyleOptionProgressBarV2StyleOptionType is cardinal;
QStyleOptionProgressBarV2Type : constant QStyleOptionProgressBarV2StyleOptionType := 6;

subtype QStyleOptionMenuItemStyleOptionType is cardinal;
QStyleOptionMenuItemType : constant QStyleOptionMenuItemStyleOptionType := 4;

subtype QStyleOptionQ3ListViewItemStyleOptionType is cardinal;
QStyleOptionQ3ListViewItemType : constant QStyleOptionQ3ListViewItemStyleOptionType := 16#b#;

subtype  QStyleOptionQ3DockWindowStyleOptionType is cardinal;
QStyleOptionQ3DockWindowType : constant QStyleOptionQ3DockWindowStyleOptionType := 9;

subtype QStyleOptionDockWidgetStyleOptionType is cardinal;
QStyleOptionDockWidgetType : constant QStyleOptionDockWidgetStyleOptionType := 16#a#;

subtype QStyleOptionViewItemStyleOptionType is cardinal;
QStyleOptionViewItemType : constant QStyleOptionViewItemStyleOptionType := 16#c#;

subtype QStyleOptionToolBoxStyleOptionType is cardinal;
QStyleOptionToolBoxType : constant QStyleOptionToolBoxStyleOptionType := 7;

subtype QStyleOptionRubberBandStyleOptionType is cardinal;
QStyleOptionRubberBandType : constant QStyleOptionRubberBandStyleOptionType  := 16#f#;

subtype QStyleOptionComplexStyleOptionType is cardinal;
QStyleOptionComplexType : constant QStyleOptionComplexStyleOptionType := 16#f0000#;

subtype QStyleOptionSliderStyleOptionType is cardinal;
QStyleOptionSliderType : constant QStyleOptionSliderStyleOptionType := 16#f0001#;

subtype QStyleOptionSpinBoxStyleOptionType is cardinal;
QStyleOptionSpinBoxType : constant QStyleOptionSpinBoxStyleOptionType := 16#f0002#;

subtype QStyleOptionQ3ListViewStyleOptionType is cardinal;
QStyleOptionQ3ListViewType : constant QStyleOptionQ3ListViewStyleOptionType := 16#f0005#;

subtype QStyleOptionToolButtonStyleOptionType is cardinal;
QStyleOptionToolButtonType : constant QStyleOptionToolButtonStyleOptionType := 16#f0003#;

subtype QStyleOptionToolButtonToolButtonFeature is cardinal;
subtype QStyleOptionToolButtonToolButtonFeatures is cardinal;

QStyleOptionToolButtonNone            : constant QStyleOptionToolButtonToolButtonFeature := 0;
QStyleOptionToolButtonArrow           : constant QStyleOptionToolButtonToolButtonFeature := 1;
QStyleOptionToolButtonMenu            : constant QStyleOptionToolButtonToolButtonFeature := 4;
QStyleOptionToolButtonMenuButtonPopup : constant QStyleOptionToolButtonToolButtonFeature := 4;
QStyleOptionToolButtonPopupDelay      : constant QStyleOptionToolButtonToolButtonFeature := 8;
QStyleOptionToolButtonHasMenu         : constant QStyleOptionToolButtonToolButtonFeature := 16;

subtype QStyleOptionComboBoxStyleOptionType is cardinal;
QStyleOptionComboBoxType : constant QStyleOptionComboBoxStyleOptionType := 16#f0004#;

subtype QStyleOptionTitleBarStyleOptionType is cardinal;
QStyleOptionTitleBarType : constant QStyleOptionTitleBarStyleOptionType := 16#f0006#;

subtype QStyleOptionGroupBoxStyleOptionType is cardinal;
QStyleOptionGroupBoxType : constant QStyleOptionGroupBoxStyleOptionType := 16#f0007#;

subtype QStyleOptionSizeGripStyleOptionType is cardinal;
QStyleOptionSizeGripType : constant QStyleOptionSizeGripStyleOptionType := 16#f0008#;

subtype QStyleOptionGraphicsItemStyleOptionType is cardinal;
QStyleOptionGraphicsItemType : constant QStyleOptionGraphicsItemStyleOptionType := 16#11#;

subtype QStyleHintReturnStyleOptionType is cardinal;
QStyleHintReturnType : constant QStyleHintReturnStyleOptionType := 16#f000#;

subtype  QStyleHintReturnMaskStyleOptionType is cardinal;
QStyleHintReturnMaskType : constant QStyleHintReturnMaskStyleOptionType := 16#f001#;

subtype  QStyleHintReturnVariantStyleOptionType is cardinal;
QStyleHintReturnVariantType : constant QStyleHintReturnVariantStyleOptionType := 16#f002#;

function QStyleOption_create(version: cardinal := QStyleOptionVersion; qtype: QStyleOptionOptionType := QStyleOptionSO_Default) return QStyleOptionH;
pragma Import(C,QStyleOption_create,"QStyleOption_create");

procedure QStyleOption_destroy(handle: not null  QStyleOptionH);   
pragma Import(C,QStyleOption_destroy,"QStyleOption_destroy");

function QStyleOption_create2(other: QStyleOptionH) return  QStyleOptionH;
pragma Import(C,QStyleOption_create2,"QStyleOption_create2");

procedure QStyleOption_init(handle: not null  QStyleOptionH; w: QWidgetH);   
pragma Import(C,QStyleOption_init,"QStyleOption_init");

procedure QStyleOption_initFrom(handle: not null  QStyleOptionH; w: QWidgetH);   
pragma Import(C,QStyleOption_initFrom,"QStyleOption_initFrom");

 function  QStyleOption_styleObject(handle:not null QStyleOptionH) return QObjectH;
 pragma Import(C,QStyleOption_styleObject, "QStyleOption_styleObject");
 
--------------------------------------------------------------------
function QStyleOptionFocusRect_create return  QStyleOptionFocusRectH;    
pragma Import(C,QStyleOptionFocusRect_create,"QStyleOptionFocusRect_create");

procedure QStyleOptionFocusRect_destroy(handle: not null  QStyleOptionFocusRectH);   
pragma Import(C,QStyleOptionFocusRect_destroy,"QStyleOptionFocusRect_destroy");

function QStyleOptionFocusRect_create2(other: QStyleOptionFocusRectH) return  QStyleOptionFocusRectH;
pragma Import(C,QStyleOptionFocusRect_create2,"QStyleOptionFocusRect_create2");

function QStyleOptionFrame_create return  QStyleOptionFrameH;    
pragma Import(C,QStyleOptionFrame_create,"QStyleOptionFrame_create");

procedure QStyleOptionFrame_destroy(handle: not null  QStyleOptionFrameH);   
pragma Import(C,QStyleOptionFrame_destroy,"QStyleOptionFrame_destroy");

function QStyleOptionFrame_create2(other: QStyleOptionFrameH) return  QStyleOptionFrameH;
pragma Import(C,QStyleOptionFrame_create2,"QStyleOptionFrame_create2");

function QStyleOptionFrameV2_create return  QStyleOptionFrameV2H;    
pragma Import(C,QStyleOptionFrameV2_create,"QStyleOptionFrameV2_create");

procedure QStyleOptionFrameV2_destroy(handle: not null  QStyleOptionFrameV2H);   
pragma Import(C,QStyleOptionFrameV2_destroy,"QStyleOptionFrameV2_destroy");

function QStyleOptionFrameV2_create2(other: QStyleOptionFrameV2H) return  QStyleOptionFrameV2H;
pragma Import(C,QStyleOptionFrameV2_create2,"QStyleOptionFrameV2_create2");

function QStyleOptionFrameV2_create3(other: QStyleOptionFrameH) return  QStyleOptionFrameV2H;
pragma Import(C,QStyleOptionFrameV2_create3,"QStyleOptionFrameV2_create3");

function QStyleOptionTabWidgetFrame_create return  QStyleOptionTabWidgetFrameH;    
pragma Import(C,QStyleOptionTabWidgetFrame_create,"QStyleOptionTabWidgetFrame_create");

procedure QStyleOptionTabWidgetFrame_destroy(handle: not null  QStyleOptionTabWidgetFrameH);   
pragma Import(C,QStyleOptionTabWidgetFrame_destroy,"QStyleOptionTabWidgetFrame_destroy");

function QStyleOptionTabWidgetFrame_create2(other: QStyleOptionTabWidgetFrameH) return  QStyleOptionTabWidgetFrameH;
pragma Import(C,QStyleOptionTabWidgetFrame_create2,"QStyleOptionTabWidgetFrame_create2");

function QStyleOptionTabBarBase_create return  QStyleOptionTabBarBaseH;    
pragma Import(C,QStyleOptionTabBarBase_create,"QStyleOptionTabBarBase_create");

procedure QStyleOptionTabBarBase_destroy(handle: not null  QStyleOptionTabBarBaseH);   
pragma Import(C,QStyleOptionTabBarBase_destroy,"QStyleOptionTabBarBase_destroy");

function QStyleOptionTabBarBase_create2(other: QStyleOptionTabBarBaseH) return  QStyleOptionTabBarBaseH;
pragma Import(C,QStyleOptionTabBarBase_create2,"QStyleOptionTabBarBase_create2");

function QStyleOptionHeader_create return  QStyleOptionHeaderH;    
pragma Import(C,QStyleOptionHeader_create,"QStyleOptionHeader_create");

procedure QStyleOptionHeader_destroy(handle: not null  QStyleOptionHeaderH);   
pragma Import(C,QStyleOptionHeader_destroy,"QStyleOptionHeader_destroy");

function QStyleOptionHeader_create2(other: QStyleOptionHeaderH) return  QStyleOptionHeaderH;
pragma Import(C,QStyleOptionHeader_create2,"QStyleOptionHeader_create2");

function QStyleOptionButton_create return  QStyleOptionButtonH;    
pragma Import(C,QStyleOptionButton_create,"QStyleOptionButton_create");

procedure QStyleOptionButton_destroy(handle: not null  QStyleOptionButtonH);   
pragma Import(C,QStyleOptionButton_destroy,"QStyleOptionButton_destroy");

function QStyleOptionButton_create2(other: QStyleOptionButtonH) return  QStyleOptionButtonH;
pragma Import(C,QStyleOptionButton_create2,"QStyleOptionButton_create2");

function QStyleOptionTab_create return  QStyleOptionTabH;    
pragma Import(C,QStyleOptionTab_create,"QStyleOptionTab_create");

procedure QStyleOptionTab_destroy(handle: not null  QStyleOptionTabH);   
pragma Import(C,QStyleOptionTab_destroy,"QStyleOptionTab_destroy");

function QStyleOptionTab_create2(other: QStyleOptionTabH) return  QStyleOptionTabH;
pragma Import(C,QStyleOptionTab_create2,"QStyleOptionTab_create2");

function QStyleOptionTabV2_create return  QStyleOptionTabV2H;    
pragma Import(C,QStyleOptionTabV2_create,"QStyleOptionTabV2_create");

procedure QStyleOptionTabV2_destroy(handle: not null  QStyleOptionTabV2H);   
pragma Import(C,QStyleOptionTabV2_destroy,"QStyleOptionTabV2_destroy");

function QStyleOptionTabV2_create2(other: QStyleOptionTabV2H) return  QStyleOptionTabV2H;
pragma Import(C,QStyleOptionTabV2_create2,"QStyleOptionTabV2_create2");

function QStyleOptionTabV2_create3(other: QStyleOptionTabH) return  QStyleOptionTabV2H;
pragma Import(C,QStyleOptionTabV2_create3,"QStyleOptionTabV2_create3");

function QStyleOptionToolBar_create return  QStyleOptionToolBarH;    
pragma Import(C,QStyleOptionToolBar_create,"QStyleOptionToolBar_create");

procedure QStyleOptionToolBar_destroy(handle: not null  QStyleOptionToolBarH);   
pragma Import(C,QStyleOptionToolBar_destroy,"QStyleOptionToolBar_destroy");

function QStyleOptionToolBar_create2(other: QStyleOptionToolBarH) return  QStyleOptionToolBarH;
pragma Import(C,QStyleOptionToolBar_create2,"QStyleOptionToolBar_create2");

function QStyleOptionProgressBar_create return  QStyleOptionProgressBarH;    
pragma Import(C,QStyleOptionProgressBar_create,"QStyleOptionProgressBar_create");

procedure QStyleOptionProgressBar_destroy(handle: not null  QStyleOptionProgressBarH);   
pragma Import(C,QStyleOptionProgressBar_destroy,"QStyleOptionProgressBar_destroy");

function QStyleOptionProgressBar_create2(other: QStyleOptionProgressBarH) return  QStyleOptionProgressBarH;
pragma Import(C,QStyleOptionProgressBar_create2,"QStyleOptionProgressBar_create2");

function QStyleOptionProgressBarV2_create return  QStyleOptionProgressBarV2H;    
pragma Import(C,QStyleOptionProgressBarV2_create,"QStyleOptionProgressBarV2_create");

procedure QStyleOptionProgressBarV2_destroy(handle: not null  QStyleOptionProgressBarV2H);   
pragma Import(C,QStyleOptionProgressBarV2_destroy,"QStyleOptionProgressBarV2_destroy");

function QStyleOptionProgressBarV2_create2(other: QStyleOptionProgressBarH) return  QStyleOptionProgressBarV2H;
pragma Import(C,QStyleOptionProgressBarV2_create2,"QStyleOptionProgressBarV2_create2");

function QStyleOptionProgressBarV2_create3(other: QStyleOptionProgressBarV2H) return  QStyleOptionProgressBarV2H;
pragma Import(C,QStyleOptionProgressBarV2_create3,"QStyleOptionProgressBarV2_create3");

function QStyleOptionMenuItem_create return  QStyleOptionMenuItemH;    
pragma Import(C,QStyleOptionMenuItem_create,"QStyleOptionMenuItem_create");

procedure QStyleOptionMenuItem_destroy(handle: not null  QStyleOptionMenuItemH);   
pragma Import(C,QStyleOptionMenuItem_destroy,"QStyleOptionMenuItem_destroy");

function QStyleOptionMenuItem_create2(other: QStyleOptionMenuItemH) return  QStyleOptionMenuItemH;
pragma Import(C,QStyleOptionMenuItem_create2,"QStyleOptionMenuItem_create2");

--function QStyleOptionQ3ListViewItem_create return  QStyleOptionQ3ListViewItemH;    
--pragma Import(C,QStyleOptionQ3ListViewItem_create,"QStyleOptionQ3ListViewItem_create");
--procedure QStyleOptionQ3ListViewItem_destroy(handle: not null  QStyleOptionQ3ListViewItemH);   
--pragma Import(C,QStyleOptionQ3ListViewItem_destroy,"QStyleOptionQ3ListViewItem_destroy");
--function QStyleOptionQ3ListViewItem_create2(other: QStyleOptionQ3ListViewItemH) return  QStyleOptionQ3ListViewItemH;
--pragma Import(C,QStyleOptionQ3ListViewItem_create2,"QStyleOptionQ3ListViewItem_create2");

--function QStyleOptionQ3DockWindow_create return  QStyleOptionQ3DockWindowH;    
--pragma Import(C,QStyleOptionQ3DockWindow_create,"QStyleOptionQ3DockWindow_create");
--procedure QStyleOptionQ3DockWindow_destroy(handle: not null  QStyleOptionQ3DockWindowH);   
--pragma Import(C,QStyleOptionQ3DockWindow_destroy,"QStyleOptionQ3DockWindow_destroy");
--function QStyleOptionQ3DockWindow_create2(other: QStyleOptionQ3DockWindowH) return  QStyleOptionQ3DockWindowH;
--pragma Import(C,QStyleOptionQ3DockWindow_create2,"QStyleOptionQ3DockWindow_create2");

function QStyleOptionDockWidget_create return  QStyleOptionDockWidgetH;    
pragma Import(C,QStyleOptionDockWidget_create,"QStyleOptionDockWidget_create");

procedure QStyleOptionDockWidget_destroy(handle: not null  QStyleOptionDockWidgetH);   
pragma Import(C,QStyleOptionDockWidget_destroy,"QStyleOptionDockWidget_destroy");

function QStyleOptionDockWidget_create2(other: QStyleOptionDockWidgetH) return  QStyleOptionDockWidgetH;
pragma Import(C,QStyleOptionDockWidget_create2,"QStyleOptionDockWidget_create2");

function QStyleOptionDockWidgetV2_create return  QStyleOptionDockWidgetV2H;    
pragma Import(C,QStyleOptionDockWidgetV2_create,"QStyleOptionDockWidgetV2_create");

procedure QStyleOptionDockWidgetV2_destroy(handle: not null  QStyleOptionDockWidgetV2H);   
pragma Import(C,QStyleOptionDockWidgetV2_destroy,"QStyleOptionDockWidgetV2_destroy");

function QStyleOptionDockWidgetV2_create2(other: QStyleOptionDockWidgetV2H) return  QStyleOptionDockWidgetV2H;
pragma Import(C,QStyleOptionDockWidgetV2_create2,"QStyleOptionDockWidgetV2_create2");

function QStyleOptionDockWidgetV2_create3(other: QStyleOptionDockWidgetH) return  QStyleOptionDockWidgetV2H;
pragma Import(C,QStyleOptionDockWidgetV2_create3,"QStyleOptionDockWidgetV2_create3");

function QStyleOptionViewItem_create return  QStyleOptionViewItemH;    
pragma Import(C,QStyleOptionViewItem_create,"QStyleOptionViewItem_create");

procedure QStyleOptionViewItem_destroy(handle: not null  QStyleOptionViewItemH);   
pragma Import(C,QStyleOptionViewItem_destroy,"QStyleOptionViewItem_destroy");

function QStyleOptionViewItem_create2(other: QStyleOptionViewItemH) return  QStyleOptionViewItemH;
pragma Import(C,QStyleOptionViewItem_create2,"QStyleOptionViewItem_create2");

function QStyleOptionViewItemV2_create return  QStyleOptionViewItemV2H;    
pragma Import(C,QStyleOptionViewItemV2_create,"QStyleOptionViewItemV2_create");

procedure QStyleOptionViewItemV2_destroy(handle: not null  QStyleOptionViewItemV2H);   
pragma Import(C,QStyleOptionViewItemV2_destroy,"QStyleOptionViewItemV2_destroy");

function QStyleOptionViewItemV2_create2(other: QStyleOptionViewItemV2H) return  QStyleOptionViewItemV2H;
pragma Import(C,QStyleOptionViewItemV2_create2,"QStyleOptionViewItemV2_create2");

function QStyleOptionViewItemV2_create3(other: QStyleOptionViewItemH) return  QStyleOptionViewItemV2H;
pragma Import(C,QStyleOptionViewItemV2_create3,"QStyleOptionViewItemV2_create3");

function QStyleOptionViewItemV3_create return  QStyleOptionViewItemV3H;    
pragma Import(C,QStyleOptionViewItemV3_create,"QStyleOptionViewItemV3_create");

procedure QStyleOptionViewItemV3_destroy(handle: not null  QStyleOptionViewItemV3H);   
pragma Import(C,QStyleOptionViewItemV3_destroy,"QStyleOptionViewItemV3_destroy");

function QStyleOptionViewItemV3_create2(other: QStyleOptionViewItemV3H) return  QStyleOptionViewItemV3H;
pragma Import(C,QStyleOptionViewItemV3_create2,"QStyleOptionViewItemV3_create2");

function QStyleOptionViewItemV3_create3(other: QStyleOptionViewItemH) return  QStyleOptionViewItemV3H;
pragma Import(C,QStyleOptionViewItemV3_create3,"QStyleOptionViewItemV3_create3");

function QStyleOptionToolBox_create return  QStyleOptionToolBoxH;    
pragma Import(C,QStyleOptionToolBox_create,"QStyleOptionToolBox_create");

procedure QStyleOptionToolBox_destroy(handle: not null  QStyleOptionToolBoxH);   
pragma Import(C,QStyleOptionToolBox_destroy,"QStyleOptionToolBox_destroy");

function QStyleOptionToolBox_create2(other: QStyleOptionToolBoxH) return  QStyleOptionToolBoxH;
pragma Import(C,QStyleOptionToolBox_create2,"QStyleOptionToolBox_create2");

function QStyleOptionToolBoxV2_create return  QStyleOptionToolBoxV2H;    
pragma Import(C,QStyleOptionToolBoxV2_create,"QStyleOptionToolBoxV2_create");

procedure QStyleOptionToolBoxV2_destroy(handle: not null  QStyleOptionToolBoxV2H);   
pragma Import(C,QStyleOptionToolBoxV2_destroy,"QStyleOptionToolBoxV2_destroy");

function QStyleOptionToolBoxV2_create2(other: QStyleOptionToolBoxV2H) return  QStyleOptionToolBoxV2H;
pragma Import(C,QStyleOptionToolBoxV2_create2,"QStyleOptionToolBoxV2_create2");

function QStyleOptionToolBoxV2_create3(other: QStyleOptionToolBoxH) return  QStyleOptionToolBoxV2H;
pragma Import(C,QStyleOptionToolBoxV2_create3,"QStyleOptionToolBoxV2_create3");

function QStyleOptionRubberBand_create return  QStyleOptionRubberBandH;    
pragma Import(C,QStyleOptionRubberBand_create,"QStyleOptionRubberBand_create");

procedure QStyleOptionRubberBand_destroy(handle: not null  QStyleOptionRubberBandH);   
pragma Import(C,QStyleOptionRubberBand_destroy,"QStyleOptionRubberBand_destroy");

function QStyleOptionRubberBand_create2(other: QStyleOptionRubberBandH) return  QStyleOptionRubberBandH;
pragma Import(C,QStyleOptionRubberBand_create2,"QStyleOptionRubberBand_create2");

function QStyleOptionComplex_create(version: Integer; qtype: Integer) return  QStyleOptionComplexH;    
pragma Import(C,QStyleOptionComplex_create,"QStyleOptionComplex_create");

procedure QStyleOptionComplex_destroy(handle: not null  QStyleOptionComplexH);   
pragma Import(C,QStyleOptionComplex_destroy,"QStyleOptionComplex_destroy");

function QStyleOptionComplex_create2(other: QStyleOptionComplexH) return  QStyleOptionComplexH;
pragma Import(C,QStyleOptionComplex_create2,"QStyleOptionComplex_create2");

function QStyleOptionSlider_create return  QStyleOptionSliderH;    
pragma Import(C,QStyleOptionSlider_create,"QStyleOptionSlider_create");

procedure QStyleOptionSlider_destroy(handle: not null  QStyleOptionSliderH);   
pragma Import(C,QStyleOptionSlider_destroy,"QStyleOptionSlider_destroy");

function QStyleOptionSlider_create2(other: QStyleOptionSliderH) return  QStyleOptionSliderH;
pragma Import(C,QStyleOptionSlider_create2,"QStyleOptionSlider_create2");

function QStyleOptionSpinBox_create return  QStyleOptionSpinBoxH;    
pragma Import(C,QStyleOptionSpinBox_create,"QStyleOptionSpinBox_create");

procedure QStyleOptionSpinBox_destroy(handle: not null  QStyleOptionSpinBoxH);   
pragma Import(C,QStyleOptionSpinBox_destroy,"QStyleOptionSpinBox_destroy");

function QStyleOptionSpinBox_create2(other: QStyleOptionSpinBoxH) return  QStyleOptionSpinBoxH;
pragma Import(C,QStyleOptionSpinBox_create2,"QStyleOptionSpinBox_create2");

--function QStyleOptionQ3ListView_create return  QStyleOptionQ3ListViewH;    
--pragma Import(C,QStyleOptionQ3ListView_create,"QStyleOptionQ3ListView_create");
--procedure QStyleOptionQ3ListView_destroy(handle: not null  QStyleOptionQ3ListViewH);   
--pragma Import(C,QStyleOptionQ3ListView_destroy,"QStyleOptionQ3ListView_destroy");
--function QStyleOptionQ3ListView_create2(other: QStyleOptionQ3ListViewH) return  QStyleOptionQ3ListViewH;
--pragma Import(C,QStyleOptionQ3ListView_create2,"QStyleOptionQ3ListView_create2");

function QStyleOptionToolButton_create return  QStyleOptionToolButtonH;    
pragma Import(C,QStyleOptionToolButton_create,"QStyleOptionToolButton_create");

procedure QStyleOptionToolButton_destroy(handle: not null  QStyleOptionToolButtonH);   
pragma Import(C,QStyleOptionToolButton_destroy,"QStyleOptionToolButton_destroy");

function QStyleOptionToolButton_create2(other: QStyleOptionToolButtonH) return  QStyleOptionToolButtonH;
pragma Import(C,QStyleOptionToolButton_create2,"QStyleOptionToolButton_create2");

function QStyleOptionComboBox_create return  QStyleOptionComboBoxH;    
pragma Import(C,QStyleOptionComboBox_create,"QStyleOptionComboBox_create");

procedure QStyleOptionComboBox_destroy(handle: not null  QStyleOptionComboBoxH);   
pragma Import(C,QStyleOptionComboBox_destroy,"QStyleOptionComboBox_destroy");

function QStyleOptionComboBox_create2(other: QStyleOptionComboBoxH) return  QStyleOptionComboBoxH;
pragma Import(C,QStyleOptionComboBox_create2,"QStyleOptionComboBox_create2");

function QStyleOptionTitleBar_create return  QStyleOptionTitleBarH;    
pragma Import(C,QStyleOptionTitleBar_create,"QStyleOptionTitleBar_create");

procedure QStyleOptionTitleBar_destroy(handle: not null  QStyleOptionTitleBarH);   
pragma Import(C,QStyleOptionTitleBar_destroy,"QStyleOptionTitleBar_destroy");

function QStyleOptionTitleBar_create2(other: QStyleOptionTitleBarH) return  QStyleOptionTitleBarH;
pragma Import(C,QStyleOptionTitleBar_create2,"QStyleOptionTitleBar_create2");

function QStyleOptionGroupBox_create return  QStyleOptionGroupBoxH;    
pragma Import(C,QStyleOptionGroupBox_create,"QStyleOptionGroupBox_create");

procedure QStyleOptionGroupBox_destroy(handle: not null  QStyleOptionGroupBoxH);   
pragma Import(C,QStyleOptionGroupBox_destroy,"QStyleOptionGroupBox_destroy");

function QStyleOptionGroupBox_create2(other: QStyleOptionGroupBoxH) return  QStyleOptionGroupBoxH;
pragma Import(C,QStyleOptionGroupBox_create2,"QStyleOptionGroupBox_create2");

function QStyleOptionSizeGrip_create return  QStyleOptionSizeGripH;    
pragma Import(C,QStyleOptionSizeGrip_create,"QStyleOptionSizeGrip_create");

procedure QStyleOptionSizeGrip_destroy(handle: not null  QStyleOptionSizeGripH);   
pragma Import(C,QStyleOptionSizeGrip_destroy,"QStyleOptionSizeGrip_destroy");

function QStyleOptionSizeGrip_create2(other: QStyleOptionSizeGripH) return  QStyleOptionSizeGripH;
pragma Import(C,QStyleOptionSizeGrip_create2,"QStyleOptionSizeGrip_create2");

function QStyleOptionGraphicsItem_create return  QStyleOptionGraphicsItemH;    
pragma Import(C,QStyleOptionGraphicsItem_create,"QStyleOptionGraphicsItem_create");

procedure QStyleOptionGraphicsItem_destroy(handle: not null  QStyleOptionGraphicsItemH);   
pragma Import(C,QStyleOptionGraphicsItem_destroy,"QStyleOptionGraphicsItem_destroy");

function QStyleOptionGraphicsItem_create2(other: QStyleOptionGraphicsItemH) return  QStyleOptionGraphicsItemH;
pragma Import(C,QStyleOptionGraphicsItem_create2,"QStyleOptionGraphicsItem_create2");

function QStyleHintReturn_create(version: cardinal := QStyleOptionVersion; qtype: QStyleHintReturnHintReturnType := QStyleHintReturnSH_Default) return QStyleHintReturnH;
pragma Import(C,QStyleHintReturn_create,"QStyleHintReturn_create");

procedure QStyleHintReturn_destroy(handle: not null  QStyleHintReturnH);   
pragma Import(C,QStyleHintReturn_destroy,"QStyleHintReturn_destroy");

function QStyleHintReturnMask_create return  QStyleHintReturnMaskH;   
pragma Import(C,QStyleHintReturnMask_create,"QStyleHintReturnMask_create");

procedure QStyleHintReturnMask_destroy(handle: not null  QStyleHintReturnMaskH);   
pragma Import(C,QStyleHintReturnMask_destroy,"QStyleHintReturnMask_destroy");

function QStyleHintReturnVariant_create return  QStyleHintReturnVariantH;   
pragma Import(C,QStyleHintReturnVariant_create,"QStyleHintReturnVariant_create");

procedure QStyleHintReturnVariant_destroy(handle: not null  QStyleHintReturnVariantH);   
pragma Import(C,QStyleHintReturnVariant_destroy,"QStyleHintReturnVariant_destroy");

--------------------------------------------------------------------
procedure QStyle_polish(handle: not null  QStyleH; p1: QApplicationH);
procedure QStyle_unpolish(handle: not null  QStyleH; p1: QApplicationH);
procedure QStyle_polish(handle: not null  QStyleH; p1: QPaletteH);
function QStyleOption_create(other: QStyleOptionH) return  QStyleOptionH;
function QStyleOptionFocusRect_create(other: QStyleOptionFocusRectH) return  QStyleOptionFocusRectH;
function QStyleOptionFrame_create(other: QStyleOptionFrameH) return  QStyleOptionFrameH;
function QStyleOptionFrameV2_create(other: QStyleOptionFrameV2H) return  QStyleOptionFrameV2H;
function QStyleOptionFrameV2_create(other: QStyleOptionFrameH) return  QStyleOptionFrameV2H;
function QStyleOptionTabWidgetFrame_create(other: QStyleOptionTabWidgetFrameH) return  QStyleOptionTabWidgetFrameH;
function QStyleOptionTabBarBase_create(other: QStyleOptionTabBarBaseH) return  QStyleOptionTabBarBaseH;
function QStyleOptionHeader_create(other: QStyleOptionHeaderH) return  QStyleOptionHeaderH;
function QStyleOptionButton_create(other: QStyleOptionButtonH) return  QStyleOptionButtonH;
function QStyleOptionTab_create(other: QStyleOptionTabH) return  QStyleOptionTabH;
function QStyleOptionTabV2_create(other: QStyleOptionTabV2H) return  QStyleOptionTabV2H;
function QStyleOptionTabV2_create(other: QStyleOptionTabH) return  QStyleOptionTabV2H;
function QStyleOptionToolBar_create(other: QStyleOptionToolBarH) return  QStyleOptionToolBarH;
function QStyleOptionProgressBar_create(other: QStyleOptionProgressBarH) return  QStyleOptionProgressBarH;
function QStyleOptionProgressBarV2_create(other: QStyleOptionProgressBarH) return  QStyleOptionProgressBarV2H;
function QStyleOptionProgressBarV2_create(other: QStyleOptionProgressBarV2H) return  QStyleOptionProgressBarV2H;
function QStyleOptionMenuItem_create(other: QStyleOptionMenuItemH) return  QStyleOptionMenuItemH;
--function QStyleOptionQ3ListViewItem_create(other: QStyleOptionQ3ListViewItemH) return  QStyleOptionQ3ListViewItemH;
--function QStyleOptionQ3DockWindow_create(other: QStyleOptionQ3DockWindowH) return  QStyleOptionQ3DockWindowH;
function QStyleOptionDockWidget_create(other: QStyleOptionDockWidgetH) return  QStyleOptionDockWidgetH;
function QStyleOptionDockWidgetV2_create(other: QStyleOptionDockWidgetV2H) return  QStyleOptionDockWidgetV2H;
function QStyleOptionDockWidgetV2_create(other: QStyleOptionDockWidgetH) return  QStyleOptionDockWidgetV2H;
function QStyleOptionViewItem_create(other: QStyleOptionViewItemH) return  QStyleOptionViewItemH;
function QStyleOptionViewItemV2_create(other: QStyleOptionViewItemV2H) return  QStyleOptionViewItemV2H;
function QStyleOptionViewItemV2_create(other: QStyleOptionViewItemH) return  QStyleOptionViewItemV2H;
function QStyleOptionViewItemV3_create(other: QStyleOptionViewItemV3H) return  QStyleOptionViewItemV3H;
function QStyleOptionViewItemV3_create(other: QStyleOptionViewItemH) return  QStyleOptionViewItemV3H;
function QStyleOptionToolBox_create(other: QStyleOptionToolBoxH) return  QStyleOptionToolBoxH;
function QStyleOptionToolBoxV2_create(other: QStyleOptionToolBoxV2H) return  QStyleOptionToolBoxV2H;
function QStyleOptionToolBoxV2_create(other: QStyleOptionToolBoxH) return  QStyleOptionToolBoxV2H;
function QStyleOptionRubberBand_create(other: QStyleOptionRubberBandH) return  QStyleOptionRubberBandH;
function QStyleOptionComplex_create(other: QStyleOptionComplexH) return  QStyleOptionComplexH;
function QStyleOptionSlider_create(other: QStyleOptionSliderH) return  QStyleOptionSliderH;
function QStyleOptionSpinBox_create(other: QStyleOptionSpinBoxH) return  QStyleOptionSpinBoxH;
--function QStyleOptionQ3ListView_create(other: QStyleOptionQ3ListViewH) return  QStyleOptionQ3ListViewH;
function QStyleOptionToolButton_create(other: QStyleOptionToolButtonH) return  QStyleOptionToolButtonH;
function QStyleOptionComboBox_create(other: QStyleOptionComboBoxH) return  QStyleOptionComboBoxH;
function QStyleOptionTitleBar_create(other: QStyleOptionTitleBarH) return  QStyleOptionTitleBarH;
function QStyleOptionGroupBox_create(other: QStyleOptionGroupBoxH) return  QStyleOptionGroupBoxH;
function QStyleOptionSizeGrip_create(other: QStyleOptionSizeGripH) return  QStyleOptionSizeGripH;
function QStyleOptionGraphicsItem_create(other: QStyleOptionGraphicsItemH) return  QStyleOptionGraphicsItemH;

--------------------------------------------------------------------
function QStyleOption_version(handle : QStyleOptionH) return Integer;
pragma Import(C,QStyleOption_version,"QStyleOption_version");

procedure QStyleOption_setVersion(handle : QStyleOptionH; version : Integer);  
pragma Import(C,QStyleOption_setVersion,"QStyleOption_setVersion");

function QStyleOption_type(handle : QStyleOptionH) return Integer;
pragma Import(C,QStyleOption_type,"QStyleOption__type");

procedure QStyleOption_setType(handle : QStyleOptionH; qtype : Integer);
pragma Import(C,QStyleOption_setType,"QStyleOption_setType");

function QStyleOption_state(handle : QStyleOptionH) return QStyleState;
pragma Import(C,QStyleOption_state,"QStyleOption_state");

procedure QStyleOption_setState(handle : QStyleOptionH; state : QStyleState);  
pragma Import(C,QStyleOption_setState,"QStyleOption_setState");

function QStyleOption_direction(handle : QStyleOptionH) return QtLayoutDirection;
pragma Import(C,QStyleOption_direction,"QStyleOption_direction");

procedure QStyleOption_setDirection(handle : QStyleOptionH; direction : QtLayoutDirection);  
pragma Import(C,QStyleOption_setDirection,"QStyleOption_setDirection");

function  QStyleOption_rect(handle : QStyleOptionH) return QRectH;
pragma Import(C,QStyleOption_rect,"QStyleOption_rect");

procedure QStyleOption_setRect(handle : QStyleOptionH; rect :  QRectH);  
pragma Import(C,QStyleOption_setRect,"QStyleOption_setRect");

function  QStyleOption_fontMetrics(handle : QStyleOptionH) return QFontMetricsH;
pragma Import(C,QStyleOption_fontMetrics,"QStyleOption_fontMetrics");

procedure QStyleOption_setFontMetrics(handle : QStyleOptionH; fontMetrics :  QFontMetricsH);  
pragma Import(C,QStyleOption_setFontMetrics,"QStyleOption_setFontMetrics");

function  QStyleOption_palette(handle : QStyleOptionH) return QPaletteH;
pragma Import(C,QStyleOption_palette,"QStyleOption_palette");

procedure QStyleOption_setPalette(handle : QStyleOptionH; palette :  QPaletteH);  
pragma Import(C,QStyleOption_setPalette,"QStyleOption_setPalette");

function  QStyleOptionFocusRect_backgroundColor(handle : QStyleOptionFocusRectH) return QColorH;
pragma Import(C,QStyleOptionFocusRect_backgroundColor,"QStyleOptionFocusRect_backgroundColor");

procedure QStyleOptionFocusRect_setBackgroundColor(handle : QStyleOptionFocusRectH; backgroundColor :  QColorH);  
pragma Import(C,QStyleOptionFocusRect_setBackgroundColor,"QStyleOptionFocusRect_setBackgroundColor");

function QStyleOptionFrame_lineWidth(handle : QStyleOptionFrameH) return Integer;
pragma Import(C,QStyleOptionFrame_lineWidth,"QStyleOptionFrame_lineWidth");

procedure QStyleOptionFrame_setLineWidth(handle : QStyleOptionFrameH; lineWidth : Integer);  
pragma Import(C,QStyleOptionFrame_setLineWidth,"QStyleOptionFrame_setLineWidth");

function QStyleOptionFrame_midLineWidth(handle : QStyleOptionFrameH) return Integer;
pragma Import(C,QStyleOptionFrame_midLineWidth,"QStyleOptionFrame_midLineWidth");

procedure QStyleOptionFrame_setMidLineWidth(handle : QStyleOptionFrameH; midLineWidth : Integer);  
pragma Import(C,QStyleOptionFrame_setMidLineWidth,"QStyleOptionFrame_setMidLineWidth");

function QStyleOptionTabWidgetFrame_lineWidth(handle : QStyleOptionTabWidgetFrameH) return Integer;
pragma Import(C,QStyleOptionTabWidgetFrame_lineWidth,"QStyleOptionTabWidgetFrame_lineWidth");

procedure QStyleOptionTabWidgetFrame_setLineWidth(handle : QStyleOptionTabWidgetFrameH; lineWidth : Integer);  
pragma Import(C,QStyleOptionTabWidgetFrame_setLineWidth,"QStyleOptionTabWidgetFrame_setLineWidth");

function QStyleOptionTabWidgetFrame_midLineWidth(handle : QStyleOptionTabWidgetFrameH) return Integer;
pragma Import(C,QStyleOptionTabWidgetFrame_midLineWidth,"QStyleOptionTabWidgetFrame_midLineWidth");

procedure QStyleOptionTabWidgetFrame_setMidLineWidth(handle : QStyleOptionTabWidgetFrameH; midLineWidth : Integer);  
pragma Import(C,QStyleOptionTabWidgetFrame_setMidLineWidth,"QStyleOptionTabWidgetFrame_setMidLineWidth");

function QStyleOptionTabWidgetFrame_shape(handle : QStyleOptionTabWidgetFrameH) return QTabBarShape;
pragma Import(C,QStyleOptionTabWidgetFrame_shape,"QStyleOptionTabWidgetFrame_shape");

procedure QStyleOptionTabWidgetFrame_setShape(handle : QStyleOptionTabWidgetFrameH; shape : QTabBarShape);  
pragma Import(C,QStyleOptionTabWidgetFrame_setShape,"QStyleOptionTabWidgetFrame_setShape");

function  QStyleOptionTabWidgetFrame_tabBarSize(handle : QStyleOptionTabWidgetFrameH) return QSizeH;
pragma Import(C,QStyleOptionTabWidgetFrame_tabBarSize,"QStyleOptionTabWidgetFrame_tabBarSize");

procedure QStyleOptionTabWidgetFrame_setTabBarSize(handle : QStyleOptionTabWidgetFrameH; tabBarSize :  QSizeH);  
pragma Import(C,QStyleOptionTabWidgetFrame_setTabBarSize,"QStyleOptionTabWidgetFrame_setTabBarSize");

function  QStyleOptionTabWidgetFrame_rightCornerWidgetSize(handle : QStyleOptionTabWidgetFrameH) return QSizeH;
pragma Import(C,QStyleOptionTabWidgetFrame_rightCornerWidgetSize,"QStyleOptionTabWidgetFrame_rightCornerWidgetSize");

procedure QStyleOptionTabWidgetFrame_setRightCornerWidgetSize(handle : QStyleOptionTabWidgetFrameH; rightCornerWidgetSize :  QSizeH);  
pragma Import(C,QStyleOptionTabWidgetFrame_setRightCornerWidgetSize,"QStyleOptionTabWidgetFrame_setRightCornerWidgetSize");

function  QStyleOptionTabWidgetFrame_leftCornerWidgetSize(handle : QStyleOptionTabWidgetFrameH) return QSizeH;
pragma Import(C,QStyleOptionTabWidgetFrame_leftCornerWidgetSize,"QStyleOptionTabWidgetFrame_leftCornerWidgetSize");

procedure QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize(handle : QStyleOptionTabWidgetFrameH; leftCornerWidgetSize :  QSizeH);  
pragma Import(C,QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize,"QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize");

function QStyleOptionTabBarBase_shape(handle : QStyleOptionTabBarBaseH) return QTabBarShape;
pragma Import(C,QStyleOptionTabBarBase_shape,"QStyleOptionTabBarBase_shape");

procedure QStyleOptionTabBarBase_setShape(handle : QStyleOptionTabBarBaseH; shape : QTabBarShape);  
pragma Import(C,QStyleOptionTabBarBase_setShape,"QStyleOptionTabBarBase_setShape");

function  QStyleOptionTabBarBase_tabBarRect(handle : QStyleOptionTabBarBaseH) return QRectH;
pragma Import(C,QStyleOptionTabBarBase_tabBarRect,"QStyleOptionTabBarBase_tabBarRect");

procedure QStyleOptionTabBarBase_setTabBarRect(handle : QStyleOptionTabBarBaseH; tabBarRect :  QRectH);  
pragma Import(C,QStyleOptionTabBarBase_setTabBarRect,"QStyleOptionTabBarBase_setTabBarRect");

function  QStyleOptionTabBarBase_selectedTabRect(handle : QStyleOptionTabBarBaseH) return QRectH;
pragma Import(C,QStyleOptionTabBarBase_selectedTabRect,"QStyleOptionTabBarBase_selectedTabRect");

procedure QStyleOptionTabBarBase_setSelectedTabRect(handle : QStyleOptionTabBarBaseH; selectedTabRect :  QRectH);  
pragma Import(C,QStyleOptionTabBarBase_setSelectedTabRect,"QStyleOptionTabBarBase_setSelectedTabRect");

function QStyleOptionHeader_section(handle : QStyleOptionHeaderH) return Integer;
pragma Import(C,QStyleOptionHeader_section,"QStyleOptionHeader_section");

procedure QStyleOptionHeader_setSection(handle : QStyleOptionHeaderH; section : Integer);  
pragma Import(C,QStyleOptionHeader_setSection,"QStyleOptionHeader_setSection");

function  QStyleOptionHeader_text(handle : QStyleOptionHeaderH) return QStringH;
pragma Import(C,QStyleOptionHeader_text,"QStyleOptionHeader_text");

procedure QStyleOptionHeader_setText(handle : QStyleOptionHeaderH; text :  QStringH);  
pragma Import(C,QStyleOptionHeader_setText,"QStyleOptionHeader_setText");

function QStyleOptionHeader_textAlignment(handle : QStyleOptionHeaderH) return QtAlignment;
pragma Import(C,QStyleOptionHeader_textAlignment,"QStyleOptionHeader_textAlignment");

procedure QStyleOptionHeader_setTextAlignment(handle : QStyleOptionHeaderH; textAlignment : QtAlignment);  
pragma Import(C,QStyleOptionHeader_setTextAlignment,"QStyleOptionHeader_setTextAlignment");

function  QStyleOptionHeader_icon(handle : QStyleOptionHeaderH) return QIconH;
pragma Import(C,QStyleOptionHeader_icon,"QStyleOptionHeader_icon");

procedure QStyleOptionHeader_setIcon(handle : QStyleOptionHeaderH; icon :  QIconH);  
pragma Import(C,QStyleOptionHeader_setIcon,"QStyleOptionHeader_setIcon");

function QStyleOptionHeader_iconAlignment(handle : QStyleOptionHeaderH) return QtAlignment;
pragma Import(C,QStyleOptionHeader_iconAlignment,"QStyleOptionHeader_iconAlignment");

procedure QStyleOptionHeader_setIconAlignment(handle : QStyleOptionHeaderH; iconAlignment : QtAlignment);  
pragma Import(C,QStyleOptionHeader_setIconAlignment,"QStyleOptionHeader_setIconAlignment");

function QStyleOptionHeader_position(handle : QStyleOptionHeaderH) return QStyleOptionHeaderSectionPosition;
pragma Import(C,QStyleOptionHeader_position,"QStyleOptionHeader_position");

procedure QStyleOptionHeader_setPosition(handle : QStyleOptionHeaderH; position : QStyleOptionHeaderSectionPosition);  
pragma Import(C,QStyleOptionHeader_setPosition,"QStyleOptionHeader_setPosition");

function QStyleOptionHeader_selectedPosition(handle : QStyleOptionHeaderH) return QStyleOptionHeaderSelectedPosition;
pragma Import(C,QStyleOptionHeader_selectedPosition,"QStyleOptionHeader_selectedPosition");

procedure QStyleOptionHeader_setSelectedPosition(handle : QStyleOptionHeaderH; selectedPosition : QStyleOptionHeaderSelectedPosition);  
pragma Import(C,QStyleOptionHeader_setSelectedPosition,"QStyleOptionHeader_setSelectedPosition");

function QStyleOptionHeader_sortIndicator(handle : QStyleOptionHeaderH) return QStyleOptionHeaderSortIndicator;
pragma Import(C,QStyleOptionHeader_sortIndicator,"QStyleOptionHeader_sortIndicator");

procedure QStyleOptionHeader_setSortIndicator(handle : QStyleOptionHeaderH; sortIndicator : QStyleOptionHeaderSortIndicator);  
pragma Import(C,QStyleOptionHeader_setSortIndicator,"QStyleOptionHeader_setSortIndicator");

function QStyleOptionHeader_orientation(handle : QStyleOptionHeaderH) return QtOrientation;
pragma Import(C,QStyleOptionHeader_orientation,"QStyleOptionHeader_orientation");

procedure QStyleOptionHeader_setOrientation(handle : QStyleOptionHeaderH; orientation : QtOrientation);  
pragma Import(C,QStyleOptionHeader_setOrientation,"QStyleOptionHeader_setOrientation");

function QStyleOptionButton_features(handle : QStyleOptionButtonH) return QStyleOptionButtonButtonFeatures;
pragma Import(C,QStyleOptionButton_features,"QStyleOptionButton_features");

procedure QStyleOptionButton_setFeatures(handle : QStyleOptionButtonH; features : QStyleOptionButtonButtonFeatures);  
pragma Import(C,QStyleOptionButton_setFeatures,"QStyleOptionButton_setFeatures");

function  QStyleOptionButton_text(handle : QStyleOptionButtonH) return QStringH;
pragma Import(C,QStyleOptionButton_text,"QStyleOptionButton_text");

procedure QStyleOptionButton_setText(handle : QStyleOptionButtonH; text :  QStringH);  
pragma Import(C,QStyleOptionButton_setText,"QStyleOptionButton_setText");

function  QStyleOptionButton_icon(handle : QStyleOptionButtonH) return QIconH;
pragma Import(C,QStyleOptionButton_icon,"QStyleOptionButton_icon");

procedure QStyleOptionButton_setIcon(handle : QStyleOptionButtonH; icon :  QIconH);  
pragma Import(C,QStyleOptionButton_setIcon,"QStyleOptionButton_setIcon");

function  QStyleOptionButton_iconSize(handle : QStyleOptionButtonH) return QSizeH;
pragma Import(C,QStyleOptionButton_iconSize,"QStyleOptionButton_iconSize");

procedure QStyleOptionButton_setIconSize(handle : QStyleOptionButtonH; iconSize :  QSizeH);  
pragma Import(C,QStyleOptionButton_setIconSize,"QStyleOptionButton_setIconSize");

function QStyleOptionTab_shape(handle : QStyleOptionTabH) return QTabBarShape;
pragma Import(C,QStyleOptionTab_shape,"QStyleOptionTab_shape");

procedure QStyleOptionTab_setShape(handle : QStyleOptionTabH; shape : QTabBarShape);  
pragma Import(C,QStyleOptionTab_setShape,"QStyleOptionTab_setShape");

function  QStyleOptionTab_text(handle : QStyleOptionTabH) return QStringH;
pragma Import(C,QStyleOptionTab_text,"QStyleOptionTab_text");

procedure QStyleOptionTab_setText(handle : QStyleOptionTabH; text :  QStringH);  
pragma Import(C,QStyleOptionTab_setText,"QStyleOptionTab_setText");

function  QStyleOptionTab_icon(handle : QStyleOptionTabH) return QIconH;
pragma Import(C,QStyleOptionTab_icon,"QStyleOptionTab_icon");

procedure QStyleOptionTab_setIcon(handle : QStyleOptionTabH; icon :  QIconH);  
pragma Import(C,QStyleOptionTab_setIcon,"QStyleOptionTab_setIcon");

function QStyleOptionTab_row(handle : QStyleOptionTabH) return Integer;
pragma Import(C,QStyleOptionTab_row,"QStyleOptionTab_row");

procedure QStyleOptionTab_setRow(handle : QStyleOptionTabH; row : Integer);  
pragma Import(C,QStyleOptionTab_setRow,"QStyleOptionTab_setRow");

function QStyleOptionTab_position(handle : QStyleOptionTabH) return QStyleOptionTabTabPosition;
pragma Import(C,QStyleOptionTab_position,"QStyleOptionTab_position");

procedure QStyleOptionTab_setPosition(handle : QStyleOptionTabH; position : QStyleOptionTabTabPosition);  
pragma Import(C,QStyleOptionTab_setPosition,"QStyleOptionTab_setPosition");

function QStyleOptionTab_selectedPosition(handle : QStyleOptionTabH) return QStyleOptionTabSelectedPosition;
pragma Import(C,QStyleOptionTab_selectedPosition,"QStyleOptionTab_selectedPosition");

procedure QStyleOptionTab_setSelectedPosition(handle : QStyleOptionTabH; selectedPosition : QStyleOptionTabSelectedPosition);  
pragma Import(C,QStyleOptionTab_setSelectedPosition,"QStyleOptionTab_setSelectedPosition");

function QStyleOptionTab_cornerWidgets(handle : QStyleOptionTabH) return QStyleOptionTabCornerWidgets;
pragma Import(C,QStyleOptionTab_cornerWidgets,"QStyleOptionTab_cornerWidgets");

procedure QStyleOptionTab_setCornerWidgets(handle : QStyleOptionTabH; cornerWidgets : QStyleOptionTabCornerWidgets);  
pragma Import(C,QStyleOptionTab_setCornerWidgets,"QStyleOptionTab_setCornerWidgets");

function  QStyleOptionTabV2_iconSize(handle : QStyleOptionTabV2H) return QSizeH;
pragma Import(C,QStyleOptionTabV2_iconSize,"QStyleOptionTabV2_iconSize");

procedure QStyleOptionTabV2_setIconSize(handle : QStyleOptionTabV2H; iconSize :  QSizeH);  
pragma Import(C,QStyleOptionTabV2_setIconSize,"QStyleOptionTabV2_setIconSize");

function QStyleOptionToolBar_positionOfLine(handle : QStyleOptionToolBarH) return QStyleOptionToolBarToolBarPosition;
pragma Import(C,QStyleOptionToolBar_positionOfLine,"QStyleOptionToolBar_positionOfLine");

procedure QStyleOptionToolBar_setPositionOfLine(handle : QStyleOptionToolBarH; positionOfLine : QStyleOptionToolBarToolBarPosition);  
pragma Import(C,QStyleOptionToolBar_setPositionOfLine,"QStyleOptionToolBar_setPositionOfLine");

function QStyleOptionToolBar_positionWithinLine(handle : QStyleOptionToolBarH) return QStyleOptionToolBarToolBarPosition;
pragma Import(C,QStyleOptionToolBar_positionWithinLine,"QStyleOptionToolBar_positionWithinLine");

procedure QStyleOptionToolBar_setPositionWithinLine(handle : QStyleOptionToolBarH; positionWithinLine : QStyleOptionToolBarToolBarPosition);  
pragma Import(C,QStyleOptionToolBar_setPositionWithinLine,"QStyleOptionToolBar_setPositionWithinLine");

function QStyleOptionToolBar_toolBarArea(handle : QStyleOptionToolBarH) return QtToolBarArea;
pragma Import(C,QStyleOptionToolBar_toolBarArea,"QStyleOptionToolBar_toolBarArea");

procedure QStyleOptionToolBar_setToolBarArea(handle : QStyleOptionToolBarH; toolBarArea : QtToolBarArea);  
pragma Import(C,QStyleOptionToolBar_setToolBarArea,"QStyleOptionToolBar_setToolBarArea");

function QStyleOptionToolBar_features(handle : QStyleOptionToolBarH) return QStyleOptionToolBarToolBarFeatures;
pragma Import(C,QStyleOptionToolBar_features,"QStyleOptionToolBar_features");

procedure QStyleOptionToolBar_setFeatures(handle : QStyleOptionToolBarH; features : QStyleOptionToolBarToolBarFeatures);  
pragma Import(C,QStyleOptionToolBar_setFeatures,"QStyleOptionToolBar_setFeatures");

function QStyleOptionToolBar_lineWidth(handle : QStyleOptionToolBarH) return Integer;
pragma Import(C,QStyleOptionToolBar_lineWidth,"QStyleOptionToolBar_lineWidth");

procedure QStyleOptionToolBar_setLineWidth(handle : QStyleOptionToolBarH; lineWidth : Integer);  
pragma Import(C,QStyleOptionToolBar_setLineWidth,"QStyleOptionToolBar_setLineWidth");

function QStyleOptionToolBar_midLineWidth(handle : QStyleOptionToolBarH) return Integer;
pragma Import(C,QStyleOptionToolBar_midLineWidth,"QStyleOptionToolBar_midLineWidth");

procedure QStyleOptionToolBar_setMidLineWidth(handle : QStyleOptionToolBarH; midLineWidth : Integer);  
pragma Import(C,QStyleOptionToolBar_setMidLineWidth,"QStyleOptionToolBar_setMidLineWidth");

function QStyleOptionProgressBar_minimum(handle : QStyleOptionProgressBarH) return Integer;
pragma Import(C,QStyleOptionProgressBar_minimum,"QStyleOptionProgressBar_minimum");

procedure QStyleOptionProgressBar_setMinimum(handle : QStyleOptionProgressBarH; minimum : Integer);  
pragma Import(C,QStyleOptionProgressBar_setMinimum,"QStyleOptionProgressBar_setMinimum");

function QStyleOptionProgressBar_maximum(handle : QStyleOptionProgressBarH) return Integer;
pragma Import(C,QStyleOptionProgressBar_maximum,"QStyleOptionProgressBar_maximum");

procedure QStyleOptionProgressBar_setMaximum(handle : QStyleOptionProgressBarH; maximum : Integer);  
pragma Import(C,QStyleOptionProgressBar_setMaximum,"QStyleOptionProgressBar_setMaximum");

function QStyleOptionProgressBar_progress(handle : QStyleOptionProgressBarH) return Integer;
pragma Import(C,QStyleOptionProgressBar_progress,"QStyleOptionProgressBar_progress");

procedure QStyleOptionProgressBar_setProgress(handle : QStyleOptionProgressBarH; progress : Integer);  
pragma Import(C,QStyleOptionProgressBar_setProgress,"QStyleOptionProgressBar_setProgress");

function  QStyleOptionProgressBar_text(handle : QStyleOptionProgressBarH) return QStringH;
pragma Import(C,QStyleOptionProgressBar_text,"QStyleOptionProgressBar_text");

procedure QStyleOptionProgressBar_setText(handle : QStyleOptionProgressBarH; text :  QStringH);  
pragma Import(C,QStyleOptionProgressBar_setText,"QStyleOptionProgressBar_setText");

function QStyleOptionProgressBar_textAlignment(handle : QStyleOptionProgressBarH) return QtAlignment;
pragma Import(C,QStyleOptionProgressBar_textAlignment,"QStyleOptionProgressBar_textAlignment");

procedure QStyleOptionProgressBar_setTextAlignment(handle : QStyleOptionProgressBarH; textAlignment : QtAlignment);  
pragma Import(C,QStyleOptionProgressBar_setTextAlignment,"QStyleOptionProgressBar_setTextAlignment");

function QStyleOptionProgressBar_textVisible(handle : QStyleOptionProgressBarH) return Boolean;  
pragma Import(C,QStyleOptionProgressBar_textVisible,"QStyleOptionProgressBar_textVisible");

procedure QStyleOptionProgressBar_setTextVisible(handle : QStyleOptionProgressBarH; textVisible : Boolean);  
pragma Import(C,QStyleOptionProgressBar_setTextVisible,"QStyleOptionProgressBar_setTextVisible");

function QStyleOptionProgressBarV2_orientation(handle : QStyleOptionProgressBarV2H) return QtOrientation;  
pragma Import(C,QStyleOptionProgressBarV2_orientation,"QStyleOptionProgressBarV2_orientation");

procedure QStyleOptionProgressBarV2_setOrientation(handle : QStyleOptionProgressBarV2H; orientation : QtOrientation);  
pragma Import(C,QStyleOptionProgressBarV2_setOrientation,"QStyleOptionProgressBarV2_setOrientation");

function QStyleOptionProgressBarV2_invertedAppearance(handle : QStyleOptionProgressBarV2H) return Boolean;  
pragma Import(C,QStyleOptionProgressBarV2_invertedAppearance,"QStyleOptionProgressBarV2_invertedAppearance");

procedure QStyleOptionProgressBarV2_setInvertedAppearance(handle : QStyleOptionProgressBarV2H; invertedAppearance : Boolean);  
pragma Import(C,QStyleOptionProgressBarV2_setInvertedAppearance,"QStyleOptionProgressBarV2_setInvertedAppearance");

function QStyleOptionProgressBarV2_bottomToTop(handle : QStyleOptionProgressBarV2H) return Boolean;  
pragma Import(C,QStyleOptionProgressBarV2_bottomToTop,"QStyleOptionProgressBarV2_bottomToTop");

procedure QStyleOptionProgressBarV2_setBottomToTop(handle : QStyleOptionProgressBarV2H; bottomToTop : Boolean);  
pragma Import(C,QStyleOptionProgressBarV2_setBottomToTop,"QStyleOptionProgressBarV2_setBottomToTop");

function QStyleOptionMenuItem_menuItemType(handle : QStyleOptionMenuItemH) return QStyleOptionMenuItemMenuItemType;  
pragma Import(C,QStyleOptionMenuItem_menuItemType,"QStyleOptionMenuItem_menuItemType");

procedure QStyleOptionMenuItem_setMenuItemType(handle : QStyleOptionMenuItemH; menuItemType : QStyleOptionMenuItemMenuItemType);  
pragma Import(C,QStyleOptionMenuItem_setMenuItemType,"QStyleOptionMenuItem_setMenuItemType");

function QStyleOptionMenuItem_checkType(handle : QStyleOptionMenuItemH) return QStyleOptionMenuItemCheckType;  
pragma Import(C,QStyleOptionMenuItem_checkType,"QStyleOptionMenuItem_checkType");

procedure QStyleOptionMenuItem_setCheckType(handle : QStyleOptionMenuItemH; checkType : QStyleOptionMenuItemCheckType);  
pragma Import(C,QStyleOptionMenuItem_setCheckType,"QStyleOptionMenuItem_setCheckType");

function QStyleOptionMenuItem_checked(handle : QStyleOptionMenuItemH) return Boolean;  
pragma Import(C,QStyleOptionMenuItem_checked,"QStyleOptionMenuItem_checked");

procedure QStyleOptionMenuItem_setChecked(handle : QStyleOptionMenuItemH; checked : Boolean);  
pragma Import(C,QStyleOptionMenuItem_setChecked,"QStyleOptionMenuItem_setChecked");

function QStyleOptionMenuItem_menuHasCheckableItems(handle : QStyleOptionMenuItemH) return Boolean;  
pragma Import(C,QStyleOptionMenuItem_menuHasCheckableItems,"QStyleOptionMenuItem_menuHasCheckableItems");

procedure QStyleOptionMenuItem_setMenuHasCheckableItems(handle : QStyleOptionMenuItemH; menuHasCheckableItems : Boolean);  
pragma Import(C,QStyleOptionMenuItem_setMenuHasCheckableItems,"QStyleOptionMenuItem_setMenuHasCheckableItems");

function  QStyleOptionMenuItem_menuRect(handle : QStyleOptionMenuItemH) return QRectH;
pragma Import(C,QStyleOptionMenuItem_menuRect,"QStyleOptionMenuItem_menuRect");

procedure QStyleOptionMenuItem_setMenuRect(handle : QStyleOptionMenuItemH; menuRect :  QRectH);  
pragma Import(C,QStyleOptionMenuItem_setMenuRect,"QStyleOptionMenuItem_setMenuRect");

function  QStyleOptionMenuItem_text(handle : QStyleOptionMenuItemH) return QStringH;
pragma Import(C,QStyleOptionMenuItem_text,"QStyleOptionMenuItem_text");

procedure QStyleOptionMenuItem_setText(handle : QStyleOptionMenuItemH; text :  QStringH);  
pragma Import(C,QStyleOptionMenuItem_setText,"QStyleOptionMenuItem_setText");

function  QStyleOptionMenuItem_icon(handle : QStyleOptionMenuItemH) return QIconH;
pragma Import(C,QStyleOptionMenuItem_icon,"QStyleOptionMenuItem_icon");

procedure QStyleOptionMenuItem_setIcon(handle : QStyleOptionMenuItemH; icon :  QIconH);  
pragma Import(C,QStyleOptionMenuItem_setIcon,"QStyleOptionMenuItem_setIcon");

function QStyleOptionMenuItem_maxIconWidth(handle : QStyleOptionMenuItemH) return Integer;  
pragma Import(C,QStyleOptionMenuItem_maxIconWidth,"QStyleOptionMenuItem_maxIconWidth");

procedure QStyleOptionMenuItem_setMaxIconWidth(handle : QStyleOptionMenuItemH; maxIconWidth : Integer);  
pragma Import(C,QStyleOptionMenuItem_setMaxIconWidth,"QStyleOptionMenuItem_setMaxIconWidth");

function QStyleOptionMenuItem_tabWidth(handle : QStyleOptionMenuItemH) return Integer;  
pragma Import(C,QStyleOptionMenuItem_tabWidth,"QStyleOptionMenuItem_tabWidth");

procedure QStyleOptionMenuItem_setTabWidth(handle : QStyleOptionMenuItemH; tabWidth : Integer);  
pragma Import(C,QStyleOptionMenuItem_setTabWidth,"QStyleOptionMenuItem_setTabWidth");

function  QStyleOptionMenuItem_font(handle : QStyleOptionMenuItemH) return QFontH;
pragma Import(C,QStyleOptionMenuItem_font,"QStyleOptionMenuItem_font");

procedure QStyleOptionMenuItem_setFont(handle : QStyleOptionMenuItemH; font :  QFontH);  
pragma Import(C,QStyleOptionMenuItem_setFont,"QStyleOptionMenuItem_setFont");

--function QStyleOptionQ3ListViewItem_features(handle : QStyleOptionQ3ListViewItemH) return QStyleOptionQ3ListViewItemQ3ListViewItemFeatures;  
--pragma Import(C,QStyleOptionQ3ListViewItem_features,"QStyleOptionQ3ListViewItem_features");
--procedure QStyleOptionQ3ListViewItem_setFeatures(handle : QStyleOptionQ3ListViewItemH; features : QStyleOptionQ3ListViewItemQ3ListViewItemFeatures);  
--pragma Import(C,QStyleOptionQ3ListViewItem_setFeatures,"QStyleOptionQ3ListViewItem_setFeatures");
--function QStyleOptionQ3ListViewItem_height(handle : QStyleOptionQ3ListViewItemH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListViewItem_height,"QStyleOptionQ3ListViewItem_height");
--procedure QStyleOptionQ3ListViewItem_setHeight(handle : QStyleOptionQ3ListViewItemH; height : Integer);  
--pragma Import(C,QStyleOptionQ3ListViewItem_setHeight,"QStyleOptionQ3ListViewItem_setHeight");
--function QStyleOptionQ3ListViewItem_totalHeight(handle : QStyleOptionQ3ListViewItemH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListViewItem_totalHeight,"QStyleOptionQ3ListViewItem_totalHeight");
--procedure QStyleOptionQ3ListViewItem_setTotalHeight(handle : QStyleOptionQ3ListViewItemH; totalHeight : Integer);  
--pragma Import(C,QStyleOptionQ3ListViewItem_setTotalHeight,"QStyleOptionQ3ListViewItem_setTotalHeight");
--function QStyleOptionQ3ListViewItem_itemY(handle : QStyleOptionQ3ListViewItemH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListViewItem_itemY,"QStyleOptionQ3ListViewItem_itemY");
--procedure QStyleOptionQ3ListViewItem_setItemY(handle : QStyleOptionQ3ListViewItemH; itemY : Integer);  
--pragma Import(C,QStyleOptionQ3ListViewItem_setItemY,"QStyleOptionQ3ListViewItem_setItemY");
--function QStyleOptionQ3ListViewItem_childCount(handle : QStyleOptionQ3ListViewItemH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListViewItem_childCount,"QStyleOptionQ3ListViewItem_childCount");
--procedure QStyleOptionQ3ListViewItem_setChildCount(handle : QStyleOptionQ3ListViewItemH; childCount : Integer);  
--pragma Import(C,QStyleOptionQ3ListViewItem_setChildCount,"QStyleOptionQ3ListViewItem_setChildCount");
--function QStyleOptionQ3DockWindow_docked(handle : QStyleOptionQ3DockWindowH) return Boolean;  
--pragma Import(C,QStyleOptionQ3DockWindow_docked,"QStyleOptionQ3DockWindow_docked");
--procedure QStyleOptionQ3DockWindow_setDocked(handle : QStyleOptionQ3DockWindowH; docked : Boolean);  
--pragma Import(C,QStyleOptionQ3DockWindow_setDocked,"QStyleOptionQ3DockWindow_setDocked");
--function QStyleOptionQ3DockWindow_closeEnabled(handle : QStyleOptionQ3DockWindowH) return Boolean;  
--pragma Import(C,QStyleOptionQ3DockWindow_closeEnabled,"QStyleOptionQ3DockWindow_closeEnabled");
--procedure QStyleOptionQ3DockWindow_setCloseEnabled(handle : QStyleOptionQ3DockWindowH; closeEnabled : Boolean);  
--pragma Import(C,QStyleOptionQ3DockWindow_setCloseEnabled,"QStyleOptionQ3DockWindow_setCloseEnabled");

function  QStyleOptionDockWidget_title(handle : QStyleOptionDockWidgetH) return QStringH;
pragma Import(C,QStyleOptionDockWidget_title,"QStyleOptionDockWidget_title");

procedure QStyleOptionDockWidget_setTitle(handle : QStyleOptionDockWidgetH; title :  QStringH);  
pragma Import(C,QStyleOptionDockWidget_setTitle,"QStyleOptionDockWidget_setTitle");

function QStyleOptionDockWidget_closable(handle : QStyleOptionDockWidgetH) return Boolean;  
pragma Import(C,QStyleOptionDockWidget_closable,"QStyleOptionDockWidget_closable");

procedure QStyleOptionDockWidget_setClosable(handle : QStyleOptionDockWidgetH; closable : Boolean);  
pragma Import(C,QStyleOptionDockWidget_setClosable,"QStyleOptionDockWidget_setClosable");

function QStyleOptionDockWidget_movable(handle : QStyleOptionDockWidgetH) return Boolean;  
pragma Import(C,QStyleOptionDockWidget_movable,"QStyleOptionDockWidget_movable");

procedure QStyleOptionDockWidget_setMovable(handle : QStyleOptionDockWidgetH; movable : Boolean);  
pragma Import(C,QStyleOptionDockWidget_setMovable,"QStyleOptionDockWidget_setMovable");

function QStyleOptionDockWidget_floatable(handle : QStyleOptionDockWidgetH) return Boolean;  
pragma Import(C,QStyleOptionDockWidget_floatable,"QStyleOptionDockWidget_floatable");

procedure QStyleOptionDockWidget_setFloatable(handle : QStyleOptionDockWidgetH; floatable : Boolean);  
pragma Import(C,QStyleOptionDockWidget_setFloatable,"QStyleOptionDockWidget_setFloatable");

function QStyleOptionDockWidgetV2_verticalTitleBar(handle : QStyleOptionDockWidgetV2H) return Boolean;  
pragma Import(C,QStyleOptionDockWidgetV2_verticalTitleBar,"QStyleOptionDockWidgetV2_verticalTitleBar");

procedure QStyleOptionDockWidgetV2_setVerticalTitleBar(handle : QStyleOptionDockWidgetV2H; verticalTitleBar : Boolean);  
pragma Import(C,QStyleOptionDockWidgetV2_setVerticalTitleBar,"QStyleOptionDockWidgetV2_setVerticalTitleBar");

function QStyleOptionViewItem_displayAlignment(handle : QStyleOptionViewItemH) return QtAlignment;  
pragma Import(C,QStyleOptionViewItem_displayAlignment,"QStyleOptionViewItem_displayAlignment");

procedure QStyleOptionViewItem_setDisplayAlignment(handle : QStyleOptionViewItemH; displayAlignment : QtAlignment);  
pragma Import(C,QStyleOptionViewItem_setDisplayAlignment,"QStyleOptionViewItem_setDisplayAlignment");

function QStyleOptionViewItem_decorationAlignment(handle : QStyleOptionViewItemH) return QtAlignment;  
pragma Import(C,QStyleOptionViewItem_decorationAlignment,"QStyleOptionViewItem_decorationAlignment");

procedure QStyleOptionViewItem_setDecorationAlignment(handle : QStyleOptionViewItemH; decorationAlignment : QtAlignment);  
pragma Import(C,QStyleOptionViewItem_setDecorationAlignment,"QStyleOptionViewItem_setDecorationAlignment");

function QStyleOptionViewItem_textElideMode(handle : QStyleOptionViewItemH) return QtTextElideMode;  
pragma Import(C,QStyleOptionViewItem_textElideMode,"QStyleOptionViewItem_textElideMode");

procedure QStyleOptionViewItem_setTextElideMode(handle : QStyleOptionViewItemH; textElideMode : QtTextElideMode);  
pragma Import(C,QStyleOptionViewItem_setTextElideMode,"QStyleOptionViewItem_setTextElideMode");

function QStyleOptionViewItem_decorationPosition(handle : QStyleOptionViewItemH) return QStyleOptionViewItemPosition;  
pragma Import(C,QStyleOptionViewItem_decorationPosition,"QStyleOptionViewItem_decorationPosition");

procedure QStyleOptionViewItem_setDecorationPosition(handle : QStyleOptionViewItemH; decorationPosition : QStyleOptionViewItemPosition);  
pragma Import(C,QStyleOptionViewItem_setDecorationPosition,"QStyleOptionViewItem_setDecorationPosition");

function  QStyleOptionViewItem_decorationSize(handle : QStyleOptionViewItemH) return QSizeH;
pragma Import(C,QStyleOptionViewItem_decorationSize,"QStyleOptionViewItem_decorationSize");

procedure QStyleOptionViewItem_setDecorationSize(handle : QStyleOptionViewItemH; decorationSize :  QSizeH);  
pragma Import(C,QStyleOptionViewItem_setDecorationSize,"QStyleOptionViewItem_setDecorationSize");

function  QStyleOptionViewItem_font(handle : QStyleOptionViewItemH) return QFontH;
pragma Import(C,QStyleOptionViewItem_font,"QStyleOptionViewItem_font");

function  QStyleOptionViewItem_rect(handle : QStyleOptionViewItemH) return QRectH;
pragma Import(C,QStyleOptionViewItem_rect,"QStyleOptionViewItem_rect");


procedure QStyleOptionViewItem_setFont(handle : QStyleOptionViewItemH; font :  QFontH);  
pragma Import(C,QStyleOptionViewItem_setFont,"QStyleOptionViewItem_setFont");

function QStyleOptionViewItem_showDecorationSelected(handle : QStyleOptionViewItemH) return Boolean;  
pragma Import(C,QStyleOptionViewItem_showDecorationSelected,"QStyleOptionViewItem_showDecorationSelected");

procedure QStyleOptionViewItem_setShowDecorationSelected(handle : QStyleOptionViewItemH; showDecorationSelected : Boolean);  
pragma Import(C,QStyleOptionViewItem_setShowDecorationSelected,"QStyleOptionViewItem_setShowDecorationSelected");

function QStyleOptionViewItemV2_features(handle : QStyleOptionViewItemV2H) return QStyleOptionViewItemV2ViewItemFeatures;  
pragma Import(C,QStyleOptionViewItemV2_features,"QStyleOptionViewItemV2_features");

procedure QStyleOptionViewItemV2_setFeatures(handle : QStyleOptionViewItemV2H; features : QStyleOptionViewItemV2ViewItemFeatures);  
pragma Import(C,QStyleOptionViewItemV2_setFeatures,"QStyleOptionViewItemV2_setFeatures");

function  QStyleOptionToolBox_text(handle : QStyleOptionToolBoxH) return QStringH;
pragma Import(C,QStyleOptionToolBox_text,"QStyleOptionToolBox_text");

procedure QStyleOptionToolBox_setText(handle : QStyleOptionToolBoxH; text :  QStringH);  
pragma Import(C,QStyleOptionToolBox_setText,"QStyleOptionToolBox_setText");

function  QStyleOptionToolBox_icon(handle : QStyleOptionToolBoxH) return QIconH;
pragma Import(C,QStyleOptionToolBox_icon,"QStyleOptionToolBox_icon");

procedure QStyleOptionToolBox_setIcon(handle : QStyleOptionToolBoxH; icon :  QIconH);  
pragma Import(C,QStyleOptionToolBox_setIcon,"QStyleOptionToolBox_setIcon");

function QStyleOptionToolBoxV2_position(handle : QStyleOptionToolBoxV2H) return QStyleOptionToolBoxV2TabPosition;  
pragma Import(C,QStyleOptionToolBoxV2_position,"QStyleOptionToolBoxV2_position");

procedure QStyleOptionToolBoxV2_setPosition(handle : QStyleOptionToolBoxV2H; position : QStyleOptionToolBoxV2TabPosition);  
pragma Import(C,QStyleOptionToolBoxV2_setPosition,"QStyleOptionToolBoxV2_setPosition");

function QStyleOptionToolBoxV2_selectedPosition(handle : QStyleOptionToolBoxV2H) return QStyleOptionToolBoxV2SelectedPosition;  
pragma Import(C,QStyleOptionToolBoxV2_selectedPosition,"QStyleOptionToolBoxV2_selectedPosition");

procedure QStyleOptionToolBoxV2_setSelectedPosition(handle : QStyleOptionToolBoxV2H; selectedPosition : QStyleOptionToolBoxV2SelectedPosition);  
pragma Import(C,QStyleOptionToolBoxV2_setSelectedPosition,"QStyleOptionToolBoxV2_setSelectedPosition");

function QStyleOptionComplex_subControls(handle : QStyleOptionComplexH) return QStyleSubControls;  
pragma Import(C,QStyleOptionComplex_subControls,"QStyleOptionComplex_subControls");

procedure QStyleOptionComplex_setSubControls(handle : QStyleOptionComplexH; subControls : QStyleSubControls);  
pragma Import(C,QStyleOptionComplex_setSubControls,"QStyleOptionComplex_setSubControls");

function QStyleOptionComplex_activeSubControls(handle : QStyleOptionComplexH) return QStyleSubControls;  
pragma Import(C,QStyleOptionComplex_activeSubControls,"QStyleOptionComplex_activeSubControls");

procedure QStyleOptionComplex_setActiveSubControls(handle : QStyleOptionComplexH; activeSubControls : QStyleSubControls);  
pragma Import(C,QStyleOptionComplex_setActiveSubControls,"QStyleOptionComplex_setActiveSubControls");

function QStyleOptionSlider_orientation(handle : QStyleOptionSliderH) return QtOrientation;  
pragma Import(C,QStyleOptionSlider_orientation,"QStyleOptionSlider_orientation");

procedure QStyleOptionSlider_setOrientation(handle : QStyleOptionSliderH; orientation : QtOrientation);  
pragma Import(C,QStyleOptionSlider_setOrientation,"QStyleOptionSlider_setOrientation");

function QStyleOptionSlider_minimum(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_minimum,"QStyleOptionSlider_minimum");

procedure QStyleOptionSlider_setMinimum(handle : QStyleOptionSliderH; minimum : Integer);  
pragma Import(C,QStyleOptionSlider_setMinimum,"QStyleOptionSlider_setMinimum");

function QStyleOptionSlider_maximum(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_maximum,"QStyleOptionSlider_maximum");

procedure QStyleOptionSlider_setMaximum(handle : QStyleOptionSliderH; maximum : Integer);  
pragma Import(C,QStyleOptionSlider_setMaximum,"QStyleOptionSlider_setMaximum");

function QStyleOptionSlider_tickPosition(handle : QStyleOptionSliderH) return QSliderTickPosition;  
pragma Import(C,QStyleOptionSlider_tickPosition,"QStyleOptionSlider_tickPosition");

procedure QStyleOptionSlider_setTickPosition(handle : QStyleOptionSliderH; tickPosition : QSliderTickPosition);  
pragma Import(C,QStyleOptionSlider_setTickPosition,"QStyleOptionSlider_setTickPosition");

function QStyleOptionSlider_tickInterval(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_tickInterval,"QStyleOptionSlider_tickInterval");

procedure QStyleOptionSlider_setTickInterval(handle : QStyleOptionSliderH; tickInterval : Integer);  
pragma Import(C,QStyleOptionSlider_setTickInterval,"QStyleOptionSlider_setTickInterval");

function QStyleOptionSlider_upsideDown(handle : QStyleOptionSliderH) return Boolean;  
pragma Import(C,QStyleOptionSlider_upsideDown,"QStyleOptionSlider_upsideDown");

procedure QStyleOptionSlider_setUpsideDown(handle : QStyleOptionSliderH; upsideDown : Boolean);  
pragma Import(C,QStyleOptionSlider_setUpsideDown,"QStyleOptionSlider_setUpsideDown");

function QStyleOptionSlider_sliderPosition(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_sliderPosition,"QStyleOptionSlider_sliderPosition");

procedure QStyleOptionSlider_setSliderPosition(handle : QStyleOptionSliderH; sliderPosition : Integer);  
pragma Import(C,QStyleOptionSlider_setSliderPosition,"QStyleOptionSlider_setSliderPosition");

function QStyleOptionSlider_sliderValue(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_sliderValue,"QStyleOptionSlider_sliderValue");

procedure QStyleOptionSlider_setSliderValue(handle : QStyleOptionSliderH; sliderValue : Integer);  
pragma Import(C,QStyleOptionSlider_setSliderValue,"QStyleOptionSlider_setSliderValue");

function QStyleOptionSlider_singleStep(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_singleStep,"QStyleOptionSlider_singleStep");

procedure QStyleOptionSlider_setSingleStep(handle : QStyleOptionSliderH; singleStep : Integer);  
pragma Import(C,QStyleOptionSlider_setSingleStep,"QStyleOptionSlider_setSingleStep");

function QStyleOptionSlider_pageStep(handle : QStyleOptionSliderH) return Integer;  
pragma Import(C,QStyleOptionSlider_pageStep,"QStyleOptionSlider_pageStep");

procedure QStyleOptionSlider_setPageStep(handle : QStyleOptionSliderH; pageStep : Integer);  
pragma Import(C,QStyleOptionSlider_setPageStep,"QStyleOptionSlider_setPageStep");

function QStyleOptionSlider_notchTarget(handle : QStyleOptionSliderH) return Double;  
pragma Import(C,QStyleOptionSlider_notchTarget,"QStyleOptionSlider_notchTarget");

procedure QStyleOptionSlider_setNotchTarget(handle : QStyleOptionSliderH; notchTarget : Double);  
pragma Import(C,QStyleOptionSlider_setNotchTarget,"QStyleOptionSlider_setNotchTarget");

function QStyleOptionSlider_dialWrapping(handle : QStyleOptionSliderH) return Boolean;  
pragma Import(C,QStyleOptionSlider_dialWrapping,"QStyleOptionSlider_dialWrapping");

procedure QStyleOptionSlider_setDialWrapping(handle : QStyleOptionSliderH; dialWrapping : Boolean);  
pragma Import(C,QStyleOptionSlider_setDialWrapping,"QStyleOptionSlider_setDialWrapping");

function QStyleOptionSpinBox_buttonSymbols(handle : QStyleOptionSpinBoxH) return QAbstractSpinBoxButtonSymbols;  
pragma Import(C,QStyleOptionSpinBox_buttonSymbols,"QStyleOptionSpinBox_buttonSymbols");

procedure QStyleOptionSpinBox_setButtonSymbols(handle : QStyleOptionSpinBoxH; buttonSymbols : QAbstractSpinBoxButtonSymbols);  
pragma Import(C,QStyleOptionSpinBox_setButtonSymbols,"QStyleOptionSpinBox_setButtonSymbols");

function QStyleOptionSpinBox_stepEnabled(handle : QStyleOptionSpinBoxH) return QAbstractSpinBoxStepEnabled;  
pragma Import(C,QStyleOptionSpinBox_stepEnabled,"QStyleOptionSpinBox_stepEnabled");

procedure QStyleOptionSpinBox_setStepEnabled(handle : QStyleOptionSpinBoxH; stepEnabled : QAbstractSpinBoxStepEnabled);  
pragma Import(C,QStyleOptionSpinBox_setStepEnabled,"QStyleOptionSpinBox_setStepEnabled");

function QStyleOptionSpinBox_frame(handle : QStyleOptionSpinBoxH) return Boolean;  
pragma Import(C,QStyleOptionSpinBox_frame,"QStyleOptionSpinBox_frame");

procedure QStyleOptionSpinBox_setFrame(handle : QStyleOptionSpinBoxH; frame : Boolean);  
pragma Import(C,QStyleOptionSpinBox_setFrame,"QStyleOptionSpinBox_setFrame");

--function  QStyleOptionQ3ListView_viewportPalette(handle : QStyleOptionQ3ListViewH) return QPaletteH;
--pragma Import(C,QStyleOptionQ3ListView_viewportPalette,"QStyleOptionQ3ListView_viewportPalette");
--procedure QStyleOptionQ3ListView_setViewportPalette(handle : QStyleOptionQ3ListViewH; viewportPalette :  QPaletteH);  
--pragma Import(C,QStyleOptionQ3ListView_setViewportPalette,"QStyleOptionQ3ListView_setViewportPalette");
--function QStyleOptionQ3ListView_viewportBGRole(handle : QStyleOptionQ3ListViewH) return QPaletteColorRole;  
--pragma Import(C,QStyleOptionQ3ListView_viewportBGRole,"QStyleOptionQ3ListView_viewportBGRole");
--procedure QStyleOptionQ3ListView_setViewportBGRole(handle : QStyleOptionQ3ListViewH; viewportBGRole : QPaletteColorRole);  
--pragma Import(C,QStyleOptionQ3ListView_setViewportBGRole,"QStyleOptionQ3ListView_setViewportBGRole");
--function QStyleOptionQ3ListView_sortColumn(handle : QStyleOptionQ3ListViewH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListView_sortColumn,"QStyleOptionQ3ListView_sortColumn");
--procedure QStyleOptionQ3ListView_setSortColumn(handle : QStyleOptionQ3ListViewH; sortColumn : Integer);  
--pragma Import(C,QStyleOptionQ3ListView_setSortColumn,"QStyleOptionQ3ListView_setSortColumn");
--function QStyleOptionQ3ListView_itemMargin(handle : QStyleOptionQ3ListViewH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListView_itemMargin,"QStyleOptionQ3ListView_itemMargin");
--procedure QStyleOptionQ3ListView_setItemMargin(handle : QStyleOptionQ3ListViewH; itemMargin : Integer);  
--pragma Import(C,QStyleOptionQ3ListView_setItemMargin,"QStyleOptionQ3ListView_setItemMargin");
--function QStyleOptionQ3ListView_treeStepSize(handle : QStyleOptionQ3ListViewH) return Integer;  
--pragma Import(C,QStyleOptionQ3ListView_treeStepSize,"QStyleOptionQ3ListView_treeStepSize");
--procedure QStyleOptionQ3ListView_setTreeStepSize(handle : QStyleOptionQ3ListViewH; treeStepSize : Integer);  
--pragma Import(C,QStyleOptionQ3ListView_setTreeStepSize,"QStyleOptionQ3ListView_setTreeStepSize");
--function QStyleOptionQ3ListView_rootIsDecorated(handle : QStyleOptionQ3ListViewH) return Boolean;  
--pragma Import(C,QStyleOptionQ3ListView_rootIsDecorated,"QStyleOptionQ3ListView_rootIsDecorated");
--procedure QStyleOptionQ3ListView_setRootIsDecorated(handle : QStyleOptionQ3ListViewH; rootIsDecorated : Boolean);  
--pragma Import(C,QStyleOptionQ3ListView_setRootIsDecorated,"QStyleOptionQ3ListView_setRootIsDecorated");

function QStyleOptionToolButton_features(handle : QStyleOptionToolButtonH) return QStyleOptionToolButtonToolButtonFeatures;  
pragma Import(C,QStyleOptionToolButton_features,"QStyleOptionToolButton_features");

procedure QStyleOptionToolButton_setFeatures(handle : QStyleOptionToolButtonH; features : QStyleOptionToolButtonToolButtonFeatures);  
pragma Import(C,QStyleOptionToolButton_setFeatures,"QStyleOptionToolButton_setFeatures");

function  QStyleOptionToolButton_icon(handle : QStyleOptionToolButtonH) return QIconH;
pragma Import(C,QStyleOptionToolButton_icon,"QStyleOptionToolButton_icon");

procedure QStyleOptionToolButton_setIcon(handle : QStyleOptionToolButtonH; icon :  QIconH);  
pragma Import(C,QStyleOptionToolButton_setIcon,"QStyleOptionToolButton_setIcon");

function  QStyleOptionToolButton_iconSize(handle : QStyleOptionToolButtonH) return QSizeH;
pragma Import(C,QStyleOptionToolButton_iconSize,"QStyleOptionToolButton_iconSize");

procedure QStyleOptionToolButton_setIconSize(handle : QStyleOptionToolButtonH; iconSize :  QSizeH);  
pragma Import(C,QStyleOptionToolButton_setIconSize,"QStyleOptionToolButton_setIconSize");

function  QStyleOptionToolButton_text(handle : QStyleOptionToolButtonH) return QStringH;
pragma Import(C,QStyleOptionToolButton_text,"QStyleOptionToolButton_text");

procedure QStyleOptionToolButton_setText(handle : QStyleOptionToolButtonH; text :  QStringH);  
pragma Import(C,QStyleOptionToolButton_setText,"QStyleOptionToolButton_setText");

function QStyleOptionToolButton_arrowType(handle : QStyleOptionToolButtonH) return QtArrowType;  
pragma Import(C,QStyleOptionToolButton_arrowType,"QStyleOptionToolButton_arrowType");

procedure QStyleOptionToolButton_setArrowType(handle : QStyleOptionToolButtonH; arrowType : QtArrowType);  
pragma Import(C,QStyleOptionToolButton_setArrowType,"QStyleOptionToolButton_setArrowType");

function QStyleOptionToolButton_toolButtonStyle(handle : QStyleOptionToolButtonH) return QtToolButtonStyle;  
pragma Import(C,QStyleOptionToolButton_toolButtonStyle,"QStyleOptionToolButton_toolButtonStyle");

procedure QStyleOptionToolButton_setToolButtonStyle(handle : QStyleOptionToolButtonH; toolButtonStyle : QtToolButtonStyle);  
pragma Import(C,QStyleOptionToolButton_setToolButtonStyle,"QStyleOptionToolButton_setToolButtonStyle");

function  QStyleOptionToolButton_pos(handle : QStyleOptionToolButtonH) return QPointH;
pragma Import(C,QStyleOptionToolButton_pos,"QStyleOptionToolButton_pos");

procedure QStyleOptionToolButton_setPos(handle : QStyleOptionToolButtonH; pos :  QPointH);
pragma Import(C,QStyleOptionToolButton_setPos,"QStyleOptionToolButton_setPos");

function  QStyleOptionToolButton_font(handle : QStyleOptionToolButtonH) return QFontH;
pragma Import(C,QStyleOptionToolButton_font,"QStyleOptionToolButton_font");

procedure QStyleOptionToolButton_setFont(handle : QStyleOptionToolButtonH; font :  QFontH);  
pragma Import(C,QStyleOptionToolButton_setFont,"QStyleOptionToolButton_setFont");

function QStyleOptionComboBox_editable(handle : QStyleOptionComboBoxH) return Boolean;  
pragma Import(C,QStyleOptionComboBox_editable,"QStyleOptionComboBox_editable");

procedure QStyleOptionComboBox_setEditable(handle : QStyleOptionComboBoxH; editable : Boolean);  
pragma Import(C,QStyleOptionComboBox_setEditable,"QStyleOptionComboBox_setEditable");

function  QStyleOptionComboBox_popupRect(handle : QStyleOptionComboBoxH) return QRectH;
pragma Import(C,QStyleOptionComboBox_popupRect,"QStyleOptionComboBox_popupRect");

procedure QStyleOptionComboBox_setPopupRect(handle : QStyleOptionComboBoxH; popupRect :  QRectH);  
pragma Import(C,QStyleOptionComboBox_setPopupRect,"QStyleOptionComboBox_setPopupRect");

function QStyleOptionComboBox_frame(handle : QStyleOptionComboBoxH) return Boolean;  
pragma Import(C,QStyleOptionComboBox_frame,"QStyleOptionComboBox_frame");

procedure QStyleOptionComboBox_setFrame(handle : QStyleOptionComboBoxH; frame : Boolean);  
pragma Import(C,QStyleOptionComboBox_setFrame,"QStyleOptionComboBox_setFrame");

function  QStyleOptionComboBox_currentText(handle : QStyleOptionComboBoxH) return QStringH;
pragma Import(C,QStyleOptionComboBox_currentText,"QStyleOptionComboBox_currentText");

procedure QStyleOptionComboBox_setCurrentText(handle : QStyleOptionComboBoxH; currentText :  QStringH);  
pragma Import(C,QStyleOptionComboBox_setCurrentText,"QStyleOptionComboBox_setCurrentText");

function  QStyleOptionComboBox_currentIcon(handle : QStyleOptionComboBoxH) return QIconH;
pragma Import(C,QStyleOptionComboBox_currentIcon,"QStyleOptionComboBox_currentIcon");

procedure QStyleOptionComboBox_setCurrentIcon(handle : QStyleOptionComboBoxH; currentIcon :  QIconH);  
pragma Import(C,QStyleOptionComboBox_setCurrentIcon,"QStyleOptionComboBox_setCurrentIcon");

function  QStyleOptionComboBox_iconSize(handle : QStyleOptionComboBoxH) return QSizeH;
pragma Import(C,QStyleOptionComboBox_iconSize,"QStyleOptionComboBox_iconSize");

procedure QStyleOptionComboBox_setIconSize(handle : QStyleOptionComboBoxH; iconSize :  QSizeH);  
pragma Import(C,QStyleOptionComboBox_setIconSize,"QStyleOptionComboBox_setIconSize");

function  QStyleOptionTitleBar_text(handle : QStyleOptionTitleBarH) return QStringH;
pragma Import(C,QStyleOptionTitleBar_text,"QStyleOptionTitleBar_text");

procedure QStyleOptionTitleBar_setText(handle : QStyleOptionTitleBarH; text :  QStringH);  
pragma Import(C,QStyleOptionTitleBar_setText,"QStyleOptionTitleBar_setText");

function  QStyleOptionTitleBar_icon(handle : QStyleOptionTitleBarH) return QIconH;
pragma Import(C,QStyleOptionTitleBar_icon,"QStyleOptionTitleBar_icon");

procedure QStyleOptionTitleBar_setIcon(handle : QStyleOptionTitleBarH; icon :  QIconH);  
pragma Import(C,QStyleOptionTitleBar_setIcon,"QStyleOptionTitleBar_setIcon");

function QStyleOptionTitleBar_titleBarState(handle : QStyleOptionTitleBarH) return Integer;  
pragma Import(C,QStyleOptionTitleBar_titleBarState,"QStyleOptionTitleBar_titleBarState");

procedure QStyleOptionTitleBar_setTitleBarState(handle : QStyleOptionTitleBarH; titleBarState : Integer);  
pragma Import(C,QStyleOptionTitleBar_setTitleBarState,"QStyleOptionTitleBar_setTitleBarState");

function QStyleOptionTitleBar_titleBarFlags(handle : QStyleOptionTitleBarH) return QtWindowFlags;  
pragma Import(C,QStyleOptionTitleBar_titleBarFlags,"QStyleOptionTitleBar_titleBarFlags");

procedure QStyleOptionTitleBar_setTitleBarFlags(handle : QStyleOptionTitleBarH; titleBarFlags : QtWindowFlags);  
pragma Import(C,QStyleOptionTitleBar_setTitleBarFlags,"QStyleOptionTitleBar_setTitleBarFlags");

function QStyleOptionGroupBox_features(handle : QStyleOptionGroupBoxH) return QStyleOptionFrameV2FrameFeatures;  
pragma Import(C,QStyleOptionGroupBox_features,"QStyleOptionGroupBox_features");

procedure QStyleOptionGroupBox_setFeatures(handle : QStyleOptionGroupBoxH; features : QStyleOptionFrameV2FrameFeatures);  
pragma Import(C,QStyleOptionGroupBox_setFeatures,"QStyleOptionGroupBox_setFeatures");

function  QStyleOptionGroupBox_text(handle : QStyleOptionGroupBoxH) return QStringH;
pragma Import(C,QStyleOptionGroupBox_text,"QStyleOptionGroupBox_text");

procedure QStyleOptionGroupBox_setText(handle : QStyleOptionGroupBoxH; text :  QStringH);  
pragma Import(C,QStyleOptionGroupBox_setText,"QStyleOptionGroupBox_setText");

function QStyleOptionGroupBox_textAlignment(handle : QStyleOptionGroupBoxH) return QtAlignment;  
pragma Import(C,QStyleOptionGroupBox_textAlignment,"QStyleOptionGroupBox_textAlignment");

procedure QStyleOptionGroupBox_setTextAlignment(handle : QStyleOptionGroupBoxH; textAlignment : QtAlignment);  
pragma Import(C,QStyleOptionGroupBox_setTextAlignment,"QStyleOptionGroupBox_setTextAlignment");

function  QStyleOptionGroupBox_textColor(handle : QStyleOptionGroupBoxH) return QColorH;
pragma Import(C,QStyleOptionGroupBox_textColor,"QStyleOptionGroupBox_textColor");

procedure QStyleOptionGroupBox_setTextColor(handle : QStyleOptionGroupBoxH; textColor :  QColorH);  
pragma Import(C,QStyleOptionGroupBox_setTextColor,"QStyleOptionGroupBox_setTextColor");

function QStyleOptionGroupBox_lineWidth(handle : QStyleOptionGroupBoxH) return Integer;  
pragma Import(C,QStyleOptionGroupBox_lineWidth,"QStyleOptionGroupBox_lineWidth");

procedure QStyleOptionGroupBox_setLineWidth(handle : QStyleOptionGroupBoxH; lineWidth : Integer);  
pragma Import(C,QStyleOptionGroupBox_setLineWidth,"QStyleOptionGroupBox_setLineWidth");

function QStyleOptionGroupBox_midLineWidth(handle : QStyleOptionGroupBoxH) return Integer;  
pragma Import(C,QStyleOptionGroupBox_midLineWidth,"QStyleOptionGroupBox_midLineWidth");

procedure QStyleOptionGroupBox_setMidLineWidth(handle : QStyleOptionGroupBoxH; midLineWidth : Integer);  
pragma Import(C,QStyleOptionGroupBox_setMidLineWidth,"QStyleOptionGroupBox_setMidLineWidth");

function QStyleOptionSizeGrip_corner(handle : QStyleOptionSizeGripH) return QtCorner;  
pragma Import(C,QStyleOptionSizeGrip_corner,"QStyleOptionSizeGrip_corner");

procedure QStyleOptionSizeGrip_setCorner(handle : QStyleOptionSizeGripH; corner : QtCorner);  
pragma Import(C,QStyleOptionSizeGrip_setCorner,"QStyleOptionSizeGrip_setCorner");

function  QStyleOptionGraphicsItem_exposedRect(handle : QStyleOptionGraphicsItemH) return QRectFH;
pragma Import(C,QStyleOptionGraphicsItem_exposedRect,"QStyleOptionGraphicsItem_exposedRect");

procedure QStyleOptionGraphicsItem_setExposedRect(handle : QStyleOptionGraphicsItemH; exposedRect :  QRectFH);  
pragma Import(C,QStyleOptionGraphicsItem_setExposedRect,"QStyleOptionGraphicsItem_setExposedRect");

function  QStyleOptionGraphicsItem_matrix(handle : QStyleOptionGraphicsItemH) return QMatrixH;
pragma Import(C,QStyleOptionGraphicsItem_matrix,"QStyleOptionGraphicsItem_matrix");

procedure QStyleOptionGraphicsItem_setMatrix(handle : QStyleOptionGraphicsItemH; matrix :  QMatrixH);  
pragma Import(C,QStyleOptionGraphicsItem_setMatrix,"QStyleOptionGraphicsItem_setMatrix");

function QStyleOptionGraphicsItem_levelOfDetail(handle : QStyleOptionGraphicsItemH) return Double;  
pragma Import(C,QStyleOptionGraphicsItem_levelOfDetail,"QStyleOptionGraphicsItem_levelOfDetail");

procedure QStyleOptionGraphicsItem_setLevelOfDetail(handle : QStyleOptionGraphicsItemH; levelOfDetail : Double);  
pragma Import(C,QStyleOptionGraphicsItem_setLevelOfDetail,"QStyleOptionGraphicsItem_setLevelOfDetail");

function QStyleHintReturn_version(handle : QStyleHintReturnH) return Integer;  
pragma Import(C,QStyleHintReturn_version,"QStyleHintReturn_version");

procedure QStyleHintReturn_setVersion(handle : QStyleHintReturnH; version : Integer);  
pragma Import(C,QStyleHintReturn_setVersion,"QStyleHintReturn_setVersion");

function QStyleHintReturn_type(handle : QStyleHintReturnH) return Integer;  
pragma Import(C,QStyleHintReturn_type,"QStyleHintReturn__type");

procedure QStyleHintReturn_setType(handle : QStyleHintReturnH; qtype : Integer);
pragma Import(C,QStyleHintReturn_setType,"QStyleHintReturn_setType");

function  QStyleHintReturnMask_region(handle : QStyleHintReturnMaskH) return QRegionH;
pragma Import(C,QStyleHintReturnMask_region,"QStyleHintReturnMask_region");

procedure QStyleHintReturnMask_setRegion(handle : QStyleHintReturnMaskH; region :  QRegionH);  
pragma Import(C,QStyleHintReturnMask_setRegion,"QStyleHintReturnMask_setRegion");

function  QStyleHintReturnVariant_variant(handle : QStyleHintReturnVariantH) return QVariantH;
pragma Import(C,QStyleHintReturnVariant_variant,"QStyleHintReturnVariant_variant");

procedure QStyleHintReturnVariant_setVariant(handle : QStyleHintReturnVariantH; variant :  QVariantH);  
pragma Import(C,QStyleHintReturnVariant_setVariant,"QStyleHintReturnVariant_setVariant");

function  QStyleFactory_keys return QStringListH;
pragma Import(C,QStyleFactory_keys,"QStyleFactory_keys");

function QStyleFactory_create(p1: QStringH) return  QStyleH;  
pragma Import(C,QStyleFactory_create,"QStyleFactory_create");

-----------------------------------------------------------------------------------------

-- function QTStyle_QWindowsStyle return QStyleH;
-- pragma Import(C,QTStyle_QWindowsStyle ,"QTStyle_QWindowsStyle");

-- function QTStyle_QMotifStyle return QStyleH;
-- pragma Import(C,QTStyle_QMotifStyle,"QTStyle_QMotifStyle");


-- function QTStyle_QPlastiqueStyle return QStyleH;
-- pragma Import(C,QTStyle_QPlastiqueStyle,"QTStyle_QPlastiqueStyle");
----------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
 function  QCommonStyle_create return QStyleH;
 pragma Import(C,QCommonStyle_create, "QCommonStyle_create");
 
 procedure QCommonStyle_destroy(handle: not null QStyleH);
 pragma Import(C,QCommonStyle_destroy, "QCommonStyle_destroy");
 
 function  QCommonStyle_pixelMetric(handle: not null QStyleH;metric:integer;option: QStyleOptionH := null; widget:QWidgetH := null) return integer;
 pragma Import(C,QCommonStyle_pixelMetric, "QCommonStyle_pixelMetric");
 
 procedure QCommonStyle_drawControl(handle: not null QStyleH; element: integer;option:QStyleOptionH; painter:QPainterH; widget:QWidgetH := null);
 pragma Import(C,QCommonStyle_drawControl, "QCommonStyle_drawControl");
 
 procedure QCommonStyle_drawPrimitive(handle: not null QStyleH;element: integer;option: QStyleOptionH; painter:QPainterH; widget:QWidgetH := null);
 pragma Import(C,QCommonStyle_drawPrimitive, "QCommonStyle_drawPrimitive");
 
 procedure QCommonStyle_drawComplexControl(handle: not null QStyleH; control: integer;option: QStyleOptionComplexH; painter:QPainterH; widget: QWidgetH);
 pragma Import(C,QCommonStyle_drawComplexControl, "QCommonStyle_drawComplexControl");
 
 function  QCommonStyle_standardPalette (handle: not null QStyleH) return QPaletteH;
 pragma Import(C,QCommonStyle_standardPalette, "QCommonStyle_standardPalette");
 
 function  QCommonStyle_subElementRect(handle: not null QStyleH;subElement:integer;option: QStyleOptionH; widget:QWidgetH := null) return QRectH;
 pragma Import(C,QCommonStyle_subElementRect, "QCommonStyle_subElementRect");
 
 function  QCommonStyle_sizeFromContents(handle: not null QStyleH;contantsType:integer;option: QStyleOptionH;size: QSizeH; widget:QWidgetH) return QSizeH;
 pragma Import(C,QCommonStyle_sizeFromContents, "QCommonStyle_sizeFromContents");
 
 function  QCommonStyle_hitTestComplexControl(handle: not null QStyleH;complexControl:integer; option: QStyleOptionComplexH; point: QPointH; widget:QWidgetH := null) return integer;
 pragma Import(C,QCommonStyle_hitTestComplexControl, "QCommonStyle_hitTestComplexControl");
 
 function  QCommonStyle_subControlRect(handle: not null QStyleH;complexControl:integer; option:QStyleOptionComplexH; SubControl: integer;widget:QWidgetH) return QRectH;
 pragma Import(C,QCommonStyle_subControlRect, "QCommonStyle_subControlRect");
 
 function  QCommonStyle_generatedIconPixmap(handle: not null QStyleH; iconMode:integer;pixmap: QPixmapH; option: QStyleOptionH) return QPixmapH;
 pragma Import(C,QCommonStyle_generatedIconPixmap, "QCommonStyle_generatedIconPixmap");
 
 function  QCommonStyle_styleHint(handle: not null QStyleH;styleHint:integer;option: QStyleOptionH  := null; widget:QWidgetH := null; returnData: QStyleHintReturnH := null) return integer;
 pragma Import(C,QCommonStyle_styleHint, "QCommonStyle_styleHint");
 
 function  QCommonStyle_itemPixmapRect(handle: not null QStyleH;rect:QRectH;flags:integer;pixmap: QPixmapH) return QRectH;
 pragma Import(C,QCommonStyle_itemPixmapRect, "QCommonStyle_itemPixmapRect");
 
 function  QCommonStyle_standardPixmap(handle: not null QStyleH;standardPixmap: integer;option: QStyleOptionH;widget:QWidgetH := null) return QPixmapH;
 pragma Import(C,QCommonStyle_standardPixmap, "QCommonStyle_standardPixmap");
 
 procedure QCommonStyle_drawItemPixmap(handle: not null QStyleH;painter:QPainterH;rect: QRectH; alignment: integer;pixmap:QPixmapH);
 pragma Import(C,QCommonStyle_drawItemPixmap, "QCommonStyle_drawItemPixmap");
 
 procedure QCommonStyle_drawItemText(handle: not null QStyleH;painter:QPainterH; rect:QRectH; flags: integer;palette:QPaletteH; enabled: boolean;text:QStringH; textRole: QPaletteColorRole := QPalette.QPaletteNoRole);
 pragma Import(C,QCommonStyle_drawItemText, "QCommonStyle_drawItemText");
 
 procedure QCommonStyle_polish(handle: not null QStyleH;widget:QWidgetH);
 pragma Import(C,QCommonStyle_polish, "QCommonStyle_polish");
 
 procedure QCommonStyle_polish2(handle: not null QStyleH;app:QApplicationH);
 pragma Import(C,QCommonStyle_polish2, "QCommonStyle_polish2");
 
 procedure QCommonStyle_polish3(handle: not null QStyleH;palette:QPaletteH);
 pragma Import(C,QCommonStyle_polish3, "QCommonStyle_polish3");
 
 procedure QCommonStyle_unpolish(handle: not null QStyleH;widget:QWidgetH);
 pragma Import(C,QCommonStyle_unpolish, "QCommonStyle_unpolish");
 
 procedure QCommonStyle_unpolish2(handle: not null QStyleH;app:QApplicationH);
 pragma Import(C,QCommonStyle_unpolish2, "QCommonStyle_unpolish2");

----------------------------------------------------------------------------------------------------
 procedure QCommonStyle_polish(handle: not null QStyleH;app:QApplicationH);
 procedure QCommonStyle_polish(handle: not null QStyleH;palette:QPaletteH);
 procedure QCommonStyle_unpolish(handle: not null QStyleH;app:QApplicationH);
 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
 function  QProxyStyle_create return QStyleH;
 pragma Import(C,QProxyStyle_create, "QProxyStyle_create");
 
 procedure QProxyStyle_destroy(handle: not null QStyleH);
 pragma Import(C,QProxyStyle_destroy, "QProxyStyle_destroy");
 
 function  QProxyStyle_pixelMetric(handle: not null QStyleH;metric:integer;option: QStyleOptionH := null; widget:QWidgetH := null) return integer;
 pragma Import(C,QProxyStyle_pixelMetric, "QProxyStyle_pixelMetric");
 
 procedure QProxyStyle_drawControl(handle: not null QStyleH; element: integer;option:QStyleOptionH; painter:QPainterH; widget:QWidgetH := null);
 pragma Import(C,QProxyStyle_drawControl, "QProxyStyle_drawControl");
 
 procedure QProxyStyle_drawPrimitive(handle: not null QStyleH;element: integer;option: QStyleOptionH; painter:QPainterH; widget:QWidgetH := null);
 pragma Import(C,QProxyStyle_drawPrimitive, "QProxyStyle_drawPrimitive");
 
 procedure QProxyStyle_drawComplexControl(handle: not null QStyleH; control: integer;option: QStyleOptionComplexH; painter:QPainterH; widget: QWidgetH);
 pragma Import(C,QProxyStyle_drawComplexControl, "QProxyStyle_drawComplexControl");
 
 function  QProxyStyle_standardPalette (handle: not null QStyleH) return QPaletteH;
 pragma Import(C,QProxyStyle_standardPalette, "QProxyStyle_standardPalette");
 
 function  QProxyStyle_subElementRect(handle: not null QStyleH;subElement:integer;option: QStyleOptionH; widget:QWidgetH := null) return QRectH;
 pragma Import(C,QProxyStyle_subElementRect, "QProxyStyle_subElementRect");
 
 function  QProxyStyle_sizeFromContents(handle: not null QStyleH;contantsType:integer;option: QStyleOptionH;size: QSizeH; widget:QWidgetH) return QSizeH;
 pragma Import(C,QProxyStyle_sizeFromContents, "QProxyStyle_sizeFromContents");
 
 function  QProxyStyle_hitTestComplexControl(handle: not null QStyleH;complexControl:integer; option: QStyleOptionComplexH; point: QPointH; widget:QWidgetH := null) return integer;
 pragma Import(C,QProxyStyle_hitTestComplexControl, "QProxyStyle_hitTestComplexControl");
 
 function  QProxyStyle_subControlRect(handle: not null QStyleH;complexControl:integer; option:QStyleOptionComplexH; SubControl: integer;widget:QWidgetH) return QRectH;
 pragma Import(C,QProxyStyle_subControlRect, "QProxyStyle_subControlRect");
 
 function  QProxyStyle_generatedIconPixmap(handle: not null QStyleH; iconMode:integer;pixmap: QPixmapH; option: QStyleOptionH) return QPixmapH;
 pragma Import(C,QProxyStyle_generatedIconPixmap, "QProxyStyle_generatedIconPixmap");
 
 function  QProxyStyle_styleHint(handle: not null QStyleH;styleHint:integer;option: QStyleOptionH  := null; widget:QWidgetH := null; returnData: QStyleHintReturnH := null) return integer;
 pragma Import(C,QProxyStyle_styleHint, "QProxyStyle_styleHint");
 
 function  QProxyStyle_itemPixmapRect(handle: not null QStyleH;rect:QRectH;flags:integer;pixmap: QPixmapH) return QRectH;
 pragma Import(C,QProxyStyle_itemPixmapRect, "QProxyStyle_itemPixmapRect");
 
 function  QProxyStyle_standardPixmap(handle: not null QStyleH;standardPixmap: integer;option: QStyleOptionH;widget:QWidgetH := null) return QPixmapH;
 pragma Import(C,QProxyStyle_standardPixmap, "QProxyStyle_standardPixmap");
 
 procedure QProxyStyle_drawItemPixmap(handle: not null QStyleH;painter:QPainterH;rect: QRectH; alignment: integer;pixmap:QPixmapH);
 pragma Import(C,QProxyStyle_drawItemPixmap, "QProxyStyle_drawItemPixmap");
 
 procedure QProxyStyle_drawItemText(handle: not null QStyleH;painter:QPainterH; rect:QRectH; flags: integer;palette:QPaletteH; enabled: boolean;text:QStringH; textRole: QPaletteColorRole := QPalette.QPaletteNoRole);
 pragma Import(C,QProxyStyle_drawItemText, "QProxyStyle_drawItemText");
 
 procedure QProxyStyle_polish(handle: not null QStyleH;widget:QWidgetH);
 pragma Import(C,QProxyStyle_polish, "QProxyStyle_polish");
 
 procedure QProxyStyle_polish2(handle: not null QStyleH;app:QApplicationH);
 pragma Import(C,QProxyStyle_polish2, "QProxyStyle_polish2");
 
 procedure QProxyStyle_polish3(handle: not null QStyleH;palette:QPaletteH);
 pragma Import(C,QProxyStyle_polish3, "QProxyStyle_polish3");
 
 procedure QProxyStyle_unpolish(handle: not null QStyleH;widget:QWidgetH);
 pragma Import(C,QProxyStyle_unpolish, "QProxyStyle_unpolish");
 
 procedure QProxyStyle_unpolish2(handle: not null QStyleH;app:QApplicationH);
 pragma Import(C,QProxyStyle_unpolish2, "QProxyStyle_unpolish2");
 
----------------------------------------------------------------------------------------------------
 procedure QProxyStyle_polish(handle: not null  QStyleH;app:QApplicationH);
 procedure QProxyStyle_polish(handle: not null  QStyleH;palette:QPaletteH);
 procedure QProxyStyle_unpolish(handle: not null  QStyleH;app:QApplicationH);
---------------------------------------------------------------------------------------------
 function  QStylePainter_create return QStylePainterH;
 pragma Import(C,QStylePainter_create, "QStylePainter_create");
 
 function  QStylePainter_create2(widget:QWidgetH) return QStylePainterH;
 pragma Import(C,QStylePainter_create2, "QStylePainter_create2");
 
 function  QStylePainter_create3(paintDevice:QPaintDeviceH;widget:QWidgetH) return QStylePainterH;
 pragma Import(C,QStylePainter_create3, "QStylePainter_create3");
 
 procedure QStylePainter_destroy(handle: not null QStylePainterH);
 pragma Import(C,QStylePainter_destroy, "QStylePainter_destroy");
 
 function  QStylePainter_begin(handle: not null QStylePainterH;widget:QWidgetH) return boolean;
 pragma Import(C,QStylePainter_begin, "QStylePainter_begin");
 
 function  QStylePainter_begin2(handle: not null QStylePainterH;paintDevice:QPaintDeviceH;widget:QWidgetH) return boolean;
 pragma Import(C,QStylePainter_begin2, "QStylePainter_begin2");
 
 procedure QStylePainter_drawPrimitive(handle: not null QStylePainterH;primitiveElement:integer;option: QStyleOptionH);
 pragma Import(C,QStylePainter_drawPrimitive, "QStylePainter_drawPrimitive");
 
 procedure QStylePainter_drawControl(handle: not null QStylePainterH;controlElement:integer;option: QStyleOptionH);
 pragma Import(C,QStylePainter_drawControl, "QStylePainter_drawControl");
 
 procedure QStylePainter_drawComplexControl(handle: not null QStylePainterH;complexControl:integer;option: QStyleOptionComplexH);
 pragma Import(C,QStylePainter_drawComplexControl, "QStylePainter_drawComplexControl");
 
 procedure QStylePainter_drawItemText(handle: not null QStylePainterH;rect:QRectH; flags:integer;palette: QPaletteH; isEnabled: boolean; text:QStringH; textColorRole: quint := Qt.QPalette.QPaletteNoRole);
 pragma Import(C,QStylePainter_drawItemText, "QStylePainter_drawItemText");
 
 procedure QStylePainter_drawItemPixmap(handle: not null QStylePainterH;rect:QRectH; flags:integer;pixmap: QPixmapH);
 pragma Import(C,QStylePainter_drawItemPixmap, "QStylePainter_drawItemPixmap");
 
 function  QStylePainter_style(handle: not null QStylePainterH) return QStyleH;
 pragma Import(C,QStylePainter_style, "QStylePainter_style");
-------------------------------------------------------------------
 function  QStylePainter_create(widget:QWidgetH) return QStylePainterH;
 function  QStylePainter_create(paintDevice:QPaintDeviceH;widget:QWidgetH) return QStylePainterH;

end Qt.QStyle;
