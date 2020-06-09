--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Ada; 
with System;
with Interfaces.C; 
with Interfaces.C.Pointers; 
with Interfaces.C.Strings;   
with Ada.Unchecked_Conversion;
with System.Address_To_Access_Conversions;
with builtin;
with Ada.Finalization;
with Ada.Text_io;

package Qt is

Version_QAda    : string(1..4) := "5.15";
QT_VERSION      : constant Integer :=  16#051500#;

type LongWord           is mod 16#10000000000000000#;  -- eight bytes
type Unsigned_Long      is mod 16#100000000#;  -- fore bytes
type Unsigned_Short     is mod 16#10000#;      -- two bytes
type Unsigned_Char      is mod 16#100#;        -- one byte



print : Ada.Text_io.file_type;

package C renames Interfaces.C;

subtype qint64 is long_long_integer;
subtype quint   is Interfaces.C.unsigned; 
type pquint is access all quint;
subtype quint64 is LongWord;
type quint8     is mod 16#100#;        -- one byte
subtype qint8   is short_short_integer;
subtype qint16  is short_integer;

type integer_ptr is access all integer;
subtype PInteger is integer_ptr;
type plong  is access all Long_Integer;
type short_integer_ptr is access all short_integer;

type PBoolean is access all boolean;
subtype   Double is  Interfaces.C.Double;
type     PDouble is access all Double;
type     PFloat  is access all Float;

subtype charp is  Interfaces.C.Strings.chars_ptr;
function Charp2Str(Item:Charp) return String renames Interfaces.C.Strings.Value;

type wcharp  is access all wide_character;
function WCharp2WStr(Item : Interfaces.C.wchar_array;
                     Trim_Null : Boolean := True) return Wide_String renames Interfaces.C.To_Ada;
                     
type LabelPos is (labelLeft,labelRight,labelTop,labelBottom); 
                     
-----    Constant part  -------------------------
QTLF       : aliased constant character := ASCII.LF;
QTCR       : aliased constant character := ASCII.CR;
QTHT       : aliased constant character := ASCII.HT;
QTVT       : aliased constant character := ASCII.VT;
QTFF       : aliased constant character := ASCII.FF;
QTBEL      : aliased constant character := ASCII.BEL;
QTBLANK    : aliased constant character := ' ';
QTDOT      : aliased constant character := '.';
QTQUOT     : aliased constant character := '"';
QTUNDL     : aliased constant character := '_';
QTBS       : aliased constant character := '\';
QTSL       : aliased constant character := '/';
QTTAB      : aliased constant character := character'val(41);
QTAPST     : aliased constant character := character'val(71);
QTNull_Char: aliased constant character := character'val(0);
QTLFLF     : aliased constant string(1..2) := (others => QTLF);
QTNullStr  : aliased constant string(1..1) := (others => QTNull_Char);

type QByteH      is access all Unsigned_Char;
type PWChar      is access all Wide_Character;
type PWString    is access all Wide_String;
subtype word     is quint;
subtype quint32  is word;
subtype Cardinal is quint;
subtype int64    is long_long_integer;
subtype QWord    is int64;
subtype Single   is float;
subtype Q_UINT16 is Unsigned_Short;
subtype quint16  is Unsigned_Short;
type pquint16    is access all quint16;

subtype CNatural is C.Int range 0..C.Int'last;
type PVector is array (CNatural range <>) of aliased C.Strings.Chars_Ptr;
type PVector_Access is access all PVector;
Empty_PVector : PVector := (0 => C.Strings.Null_Ptr);

-- This is a C-style "argv" vector.

subtype Void_Star is System.Address;

type Void_Star_Star is array(integer range <> ) of Void_Star;
pragma convention(C,Void_Star_Star);


subtype Q_PID     is System.Address;
type stringp      is access all string;
type Float_ptr    is access all float;

subtype char           is character;

subtype int            is Integer;
type                   Int_Access is access all int;

 package Argv_Pointer is new C.Pointers (
      Index              => CNatural,
      Element            => C.Strings.Chars_Ptr,
      Element_Array      => PVector,
      Default_Terminator => C.Strings.Null_Ptr);

 subtype PPAnsiChar is Argv_Pointer.Pointer; -- This is C char **

 Null_ZChar : constant character := character'val(0);
 Null_ZStr  : constant builtin.zstring(1..1) := (others => Null_ZChar);
 Null_WChar : constant Wide_Character := Wide_Character'val(0);
 Null_WStr  : constant Wide_String(1..1) := (others => Null_WChar);

 subtype   WFlags is unsigned_Long;
 subtype   QCOORDH is integer;

subtype QOverrideHook is void_Star;

type TSizePolicy is  record
  Data: word := 0;
end record;
pragma Convention (C,TsizePolicy);
type QSizePolicyH  is access all TSizePolicy;
  
type TQColor is  record
   ColorSpec : Long_Integer;
   Alpha : word;
   r,g,b : word; 
   Pad : word;
end record;
pragma Convention (C,TQColor);
type  QColorH  is access all TQColor;

type TQPoint is  record
    y : Long_Integer;
    x : Long_Integer;
end record;
pragma Convention (C,TQPoint);
type  QPointH  is access all TQPoint;

-- type TPointArray is  array( integer range <>) of QPointH;
-- type QPointArrayH is access all TPointArray;

type TQPointF is  record
    y : double;
    x : double;
end record;
pragma Convention (C,TQPointF);
type  QPointFH  is access all TQPointF;

subtype QrgbH     is LongWord;
subtype qreal is Interfaces.C.double;

subtype QtHandle is quint;
qrgb         : QrgbH;

type  TIntArray  is  array( integer range <>) of Long_integer;
pragma Convention(C, TIntArray);

type  AIntArray  is access all TIntArray;

type IntArray is array(integer range <>) of integer;
type PIntArray is access all IntArray;

type PIntArray_array is array(integer range <>) of PIntArray;
type PPIntArray is access all PIntArray_array;

subtype  WINHANDLE is integer;
subtype  HCURSOR   is WINHANDLE;
subtype  HPALETTE  is WINHANDLE;
subtype  HFONT     is WINHANDLE;
subtype  HDC       is WINHANDLE;
subtype  HBITMAP   is WINHANDLE;
subtype  HBRUSH    is WINHANDLE;
subtype  HPEN      is WINHANDLE;
subtype  HRGN      is WINHANDLE;

type QObjects is  tagged private;
type QObjectH is access all QObjects;
----------------------------------------------------------------
type QWidgetH                          is new QObjectH;
type QWindowH                          is new QWidgetH;
type QQuickWidgetH                     is new QWidgetH;
type QQuickViewH                       is new QWindowH;
type QQuickItemH                       is new QObjectH;
type QQuaternionH                      is new QObjectH;
type QAccessibleInterfaceH             is new QObjectH;
type QAccessibleWidgetH                is new QAccessibleInterfaceH;
type QVectorH                          is new QObjectH;
type QVector2DH                        is new QObjectH;
type QVector3DH                        is new QObjectH;
type QVector4DH                        is new QObjectH;
type QSignalH                          is new QObjectH;
type QSlotH                            is new QObjectH;
type QPathH                            is new QObjectH;
type QFtpH                             is new QObjectH;
type QWMatrixH                         is new QObjectH;
type QSoundH                           is new QObjectH;
type QLayoutItemH                      is new QObjectH;
type QTableItemH                       is new QObjectH;
type QTableSelectionH                  is new QObjectH;
type QDragObjectH                      is new QObjectH;
type QTableWidgetSelectionRangeH       is new QObjectH;
type QTableWidgetH                     is new QTableWidgetSelectionRangeH;
type QTableWidgetItemH                 is new QObjectH;
type QIODeviceH                        is new QObjectH;
type QBufferH                          is new QIODeviceH;
type QProcessH                         is new QIODeviceH;
type QFileDeviceH                      is new QIODeviceH;
type QFileH                            is new QFileDeviceH;
type QFileInfoH                        is new QObjectH;
type QStorageInfoH                     is new QObjectH;
type QFileSystemWatcherH               is new QObjectH;
type QTextStreamH                      is new QObjectH;
type QTextObjectInterfaceH             is new QObjectH;
type QTextInlineObjectH                is new QObjectH;
type QTextLayoutH                      is new QObjectH;
type QTextLineH                        is new QObjectH;
type QTextLengthH                      is new QObjectH;
type QBitArrayH                        is new QObjectH;
type QBrushH                           is new QObjectH;
type QMarginsH                         is new QObjectH;
type QMarginsFH                        is new QObjectH;
type QByteArrayH                       is new QObjectH;
type QCharH                            is new QObjectH;
type QCursorH                          is new QObjectH;
type QDataStreamH                      is new QObjectH;
type QDateH                            is new QObjectH;
type QTimeH                            is new QObjectH;
type QDateTimeH                        is new QObjectH;
type QTimerH                           is new QObjectH;
type QAbstractItemDelegateH            is new QObjectH;
type QSqlH                             is new QObjectH;
type QSqlDatabaseH                     is new QObjectH;
type QSqlDriverH                       is new QObjectH;
type QSqlCursorH                       is new QObjectH;
type QSqlIndexH                        is new QObjectH;
type QSqlFieldH                        is new QObjectH;
type QSqlErrorH                        is new QObjectH;
type QSqlFieldInfoH                    is new QObjectH;
type QSqlRecordH                       is new QObjectH;
type QSqlResultH                       is new QObjectH;
type QSqlQueryH                        is new QObjectH;
type QSqlFormH                         is new QObjectH;
type QSqlDriverPluginH                 is new QObjectH;
type QSqlDriverCreatorBaseH            is new QObjectH;
type QSqlPropertyMapH                  is new QObjectH;
type QSqlRelationH                     is new QObjectH;
type QSqlEditorFactoryH                is new QObjectH;
subtype QSqlRelationalDelegateH        is QAbstractItemDelegateH;
type QXmlH                             is new QObjectH;
type QXmlErrorH                        is new QObjectH;
type QXmlReaderH                       is new QObjectH;
type QXmlParserH                       is new QObjectH;
type QXmlCompilerH                     is new QObjectH;
type QXmlDataModelH                    is new QObjectH;
type QXmlSimpleReaderH                 is new QObjectH;
type QXmlInputSourceH                  is new QObjectH;
type QXmlAttributesH                   is new QObjectH;
type QXmlLocatorH                      is new QObjectH;
type QXmlContentHandlerH               is new QObjectH;
type QXmlLexicalHandlerH               is new QObjectH;
type QXmlDeclHandlerH                  is new QObjectH;
type QXmlDefaultHandlerH               is new QObjectH;
type QXmlDTDHandlerH                   is new QObjectH;
type QXmlErrorHandlerH                 is new QObjectH;
type QXmlParseExceptionH               is new QObjectH;
type QXmlEntityResolverH               is new QObjectH;
type QXmlNamespaceSupportH             is new QObjectH;
type QXmlStreamStringRefH              is new QObjectH;
type QXmlStreamAttributeH              is new QObjectH;
type QXmlStreamAttributesH             is new QObjectH;
type QXmlStreamNamespaceDeclarationH   is new QObjectH;
type QXmlStreamNamespaceDeclarationsH  is new QObjectH;
type QXmlStreamNotationDeclarationH    is new QObjectH;
type QXmlStreamNotationDeclarationsH   is new QObjectH;
type QXmlStreamEntityDeclarationH      is new QObjectH;
type QXmlStreamEntityDeclarationsH     is new QObjectH;
type QXmlStreamEntityResolverH         is new QObjectH;
type QXmlStreamEntityResolversH        is new QObjectH;
type QXmlStreamReaderH                 is new QObjectH;
type QXmlStreamWriterH                 is new QObjectH;
type QDomNodeH                         is new QObjectH;
type QDomDocumentH                     is new QDomNodeH;
type QDomDocumentTypeH                 is new QDomNodeH;
type QDomDocumentFragmentH             is new QDomNodeH;
type QDomCharacterDataH                is new QDomNodeH;
type QDomTextH                         is new QDomCharacterDataH;
type QDomCDATASectionH                 is new QDomTextH;
type QDomCommentH                      is new QDomCharacterDataH;
type QDomAttrH                         is new QDomNodeH;
type QDomElementH                      is new QDomNodeH;
type QDomNodeListH                     is new QObjectH;
type QDomNotationH                     is new QDomNodeH;
type QDomEntityH                       is new QDomNodeH;
type QDomEntityReferenceH              is new QDomNodeH;
type QDomProcessingInstructionH        is new QDomNodeH;
type QDomNamedNodeMapH                 is new QObjectH;
type QDomImplementationH               is new QObjectH;
type QPdfWriterH                       is new QObjectH;
type QDirH                             is new QObjectH;
type QAbstractSliderH                  is new QWidgetH;
subtype QSliderH                       is QAbstractSliderH;
type QDialH                            is new QAbstractSliderH;
type QDragH                            is new QObjectH;
type QDropH                            is new QObjectH;
type QFileIconProviderH                is new QObjectH;
type QFontH                            is new QObjectH;
type QFontDatabaseH                    is new QObjectH;
type QFontInfoH                        is new QObjectH;
type QFontMetricsH                     is new QObjectH;
type QFontMetricsFH                    is new QObjectH;
type QAbstractTextDocumentLayoutH      is new QObjectH;
type QCoreApplicationH                 is new QObjectH;
subtype QApplicationH                  is  QCoreApplicationH;
type QEventH                           is new QObjectH;
type QEventLoopH                       is new QObjectH;
      
type QActionH                          is new QObjectH;
type QAssistantH                       is new QObjectH;
type QWidgetActionH                    is new QActionH;
type QActionGroupH                     is new QObjectH;
type QButtonGroupH                     is new QObjectH;
type QClipboardH                       is new QObjectH;
type QCompleterH                       is new QObjectH;
type QGraphicsSceneH                   is new QObjectH;
type QGraphicsSceneEventH              is new QEventH;
subtype QGraphicsSceneDragDropEventH   is QEventH;
type QGraphicsEffectH                  is new QObjectH;
type QGraphicsAnchorH                  is new QObjectH;
type QGraphicsObjectH                  is new QObjectH;
type QGraphicsVideoItemH               is new QGraphicsObjectH;
type QSerialPortH                      is new  QIODeviceH;
type QSerialPortInfoH                  is new QObjectH;
type QInputContextH                    is new QObjectH;
type QDeclarativeContextH              is new QObjectH; 
type QListH                            is new QObjectH;
type QStringListH                      is new QListH;
type QObjectVectorH                    is new QVectorH;
subtype QObjectListH                   is QListH;
type QVariantListH                     is new QListH;
type QIntListH                         is new QListH;
type QUintListH                        is new QListH;
type QModelIndexListH                  is new QListH;
type QByteArrayListH                   is new QListH;
type QStrListH                         is new QListH;
subtype QFileInfoListH                 is QStringListH;
type QIteratorH                        is new QObjectH;
type QItemSelectionH                   is new QObjectListH;
type QItemSelectionModelH              is new QObjectH;
type QItemSelectionRangeH              is new QObjectH;
type QMimeDataH                        is new QObjectH;
type QMovieH                           is new QObjectH;
type QSessionManagerH                  is new QObjectH;
type QSocketNotifierH                  is new QObjectH;
type QStyleH                           is new QObjectH;
type QStyledItemDelegateH              is new QAbstractItemDelegateH;
type QSystemTrayIconH                  is new QWidgetH;
type QTextObjectH                      is new QWidgetH;
type QTextDocumentH                    is new QWidgetH;
type QTextBlockGroupH                  is new QTextObjectH;
type QSyntaxHighlighterH               is new QObjectH;
type QTextListH                        is new QTextBlockGroupH;
type QTextFrameH                       is new QTextObjectH;
type QTextTableH                       is new QTextFrameH;
type QThreadH                          is new QObjectH;
subtype QLCLThreadH                    is QThreadH;
subtype QBasicTimerH                   is QTimerH;
type QDeadlineTimerH                   is new QObjectH;
type QElapsedTimerH                    is new QObjectH;
type QTranslatorH                      is new QObjectH;
type QValidatorH                       is new QObjectH;
type QDoubleValidatorH                 is new QValidatorH;
type QIntValidatorH                    is new QValidatorH;
type QRegExpValidatorH                 is new QValidatorH;
type QTimeZoneH                        is new QObjectH;
type QSetH                             is new QObjectH;
  
---------------------------------------------------------------------------------------------------
  
type QScreenH                          is new QWidgetH;
type QPlatformWindowH                  is new QWidgetH;
type QStackedWidgetH                   is new QWidgetH;
type QGLWidgetH                        is new QWidgetH;
type QGLWidgetPrivateH                 is new QWidgetH;
type QDockWidgetH                      is new QWidgetH;
type QAbstractButtonH                  is new QWidgetH;
type QAnimationH                       is new QObjectH;
type QAnimationGroupH                  is new QObjectH;
type QTableH                           is new QWidgetH;
  
type QFrameH                           is new QWidgetH;
type QFocusFrameH                      is new QWidgetH;
type QLabelH                           is new QFrameH;
type QSplitterH                        is new QFrameH;
type QLCDNumberH                       is new QFrameH;
type QToolBoxH                         is new QFrameH;
type QAbstractScrollAreaH              is new QFrameH;
subtype QAbstractItemViewH             is QAbstractScrollAreaH;
type  QColumnViewH                     is new QAbstractItemViewH;
  
type QScrollerH                        is new QObjectH;
type QScrollerPropertiesH              is new QObjectH;
type QLayoutH                          is new QWidgetH;
subtype QFormLayoutH                   is QLayoutH;
subtype QStackedLayoutH                is QLayoutH;
subtype QGridLayoutH                   is QLayoutH;
subtype QBoxLayoutH                    is QLayoutH;
subtype QHBoxLayoutH                   is QBoxLayoutH;
subtype QVBoxLayoutH                   is QBoxLayoutH;
  
type QSpacerItemH                      is new QLayoutItemH;
type QWidgetItemH                      is new QLayoutItemH;
type TouchPointH                       is new QObjectH;
type QTouchDeviceH                     is new QObjectH;
type QTransitionH                      is new QObjectH;
  
type QPaintDeviceH                     is new QObjectH;
type QImageH                           is new QPaintDeviceH;
type QPictureH                         is new QPaintDeviceH;
type QPixmapH                          is new QPaintDeviceH;
subtype QImageDragH                    is QDragH;
  
subtype QActionEventH                  is QEventH;
subtype QChildEventH                   is QEventH;
subtype QCloseEventH                   is QEventH;
subtype QDragLeaveEventH               is QEventH;
subtype QDropEventH                    is QEventH;
subtype QDragMoveEventH                is QDropEventH;
subtype QDragEnterEventH               is QDragMoveEventH;
subtype QDynamicPropertyChangeEventH   is QEventH;
subtype QFileOpenEventH                is QEventH;
subtype QFocusEventH                   is QEventH;
subtype QHelpEventH                    is QEventH;
subtype QHideEventH                    is QEventH;
subtype QHoverEventH                   is QEventH;
subtype QIconDragEventH                is QEventH;
subtype QInputEventH                   is QEventH;
subtype QContextMenuEventH             is QInputEventH;
subtype QKeyEventH                     is QInputEventH;
subtype QMouseEventH                   is QInputEventH;
type QGraphicsSceneMouseEventH         is new QMouseEventH;
subtype QTabletEventH                  is QInputEventH;
subtype QWheelEventH                   is QInputEventH;
subtype QInputMethodEventH             is QEventH;
subtype QInputMethodQueryEventH        is QEventH;
subtype QMoveEventH                    is QEventH;
subtype QPaintEventH                   is QEventH;
subtype QResizeEventH                  is QEventH;
subtype QShortcutEventH                is QEventH;
subtype QShowEventH                    is QEventH;
subtype QStatusTipEventH               is QEventH;
subtype QTimerEventH                   is QEventH;
subtype QWhatsThisClickedEventH        is QEventH;
subtype QWindowStateChangeEventH       is QEventH;
subtype QTouchEventH                   is QEventH;
subtype QScrollPrepareEventH           is QEventH;
subtype QScrollEventH                  is QEventH;
subtype QScreenOrientationChangeEventH is QEventH;
subtype QExposeEventH                  is QEventH;
  
type QGradientH                        is new QObjectH;
type QConicalGradientH                 is new QGradientH;
type QLinearGradientH                  is new QGradientH;
type QRadialGradientH                  is new QGradientH;
type QGraphicsItemH                    is new QObjectH;
type QGraphicsItemAnimationH           is new QObjectH;
type QAbstractGraphicsShapeItemH       is new QGraphicsItemH;
type QGraphicsEllipseItemH             is new QAbstractGraphicsShapeItemH;
type QGraphicsPathItemH                is new QAbstractGraphicsShapeItemH;
type QGraphicsPolygonItemH             is new QAbstractGraphicsShapeItemH;
type QGraphicsRectItemH                is new QAbstractGraphicsShapeItemH;
type QGraphicsSimpleTextItemH          is new QAbstractGraphicsShapeItemH;
type QGraphicsItemGroupH               is new QGraphicsItemH;
type QGraphicsLineItemH                is new QGraphicsItemH;
type QGraphicsPixmapItemH              is new QGraphicsItemH;
type QGraphicsTextItemH                is new QGraphicsItemH;
type QIconH                            is new QObjectH;
type QIconSetH                         is new QObjectH;
type QIconEngineH                      is new QObjectH;
type QDeclarativeEngineH               is new QObjectH; 
type QIconEngineV2H                    is new QIconEngineH;
type QImageIOHandlerH                  is new QObjectH;
type QImageReaderH                     is new QObjectH;
type QImageWriterH                     is new QObjectH;
type QImageTextKeyLangH                is new QObjectH;
type QKeySequenceH                     is new QObjectH;
type QKeySequenceEditH                 is new QWidgetH;
type QLatin1StringH                    is new QObjectH;
type QShortcutH                        is new QObjectH;
  
type QLayoutDirectionH                 is new QObjectH;
type QPlainTextDocumentLayoutH         is new QObjectH;
type QLineH                            is new QObjectH;
type QLineFH                           is new QObjectH;
type QListWidgetItemH                  is new QObjectH;
type QLocaleH                          is new QObjectH;
type QMatrixH                          is new QObjectH;
type QMatrix2x2H                       is new QObjectH;
type QMatrix2x3H                       is new QObjectH;
type QMatrix2x4H                       is new QObjectH;
type QMatrix3x2H                       is new QObjectH;
type QMatrix3x3H                       is new QObjectH;
type QMatrix3x4H                       is new QObjectH;
type QMatrix4x2H                       is new QObjectH;
type QMatrix4x3H                       is new QObjectH;
type QMatrix4x4H                       is new QObjectH;
type QMetaClassInfoH                   is new QObjectH;
type QMetaEnumH                        is new QObjectH;
type QMetaMethodH                      is new QObjectH;
type QMetaObjectH                      is new QObjectH;
type QMetaPropertyH                    is new QObjectH;
type QMimeSourceH                      is new QObjectH;
type QAbstractEventDispatcherH         is new QObjectH;
type QGLFormatH                        is new QObjectH;
type QSurfaceFormatH                   is new QObjectH;
type QGLContextH                       is new QObjectH;
type QGLColormapH                      is new QObjectH;
  
subtype QTableViewH                    is QAbstractItemViewH;
type QAbstractItemModelH               is new QObjectH;
type QAbstractItemModelTesterH         is new QObjectH;
type QFileSystemModelH                 is new QAbstractItemModelH;
  
subtype QAbstractListModelH            is QAbstractItemModelH;
subtype QAbstractProxyModelH           is QAbstractItemModelH;
subtype QAbstractTableModelH           is QAbstractItemModelH;
subtype QStandardItemModelH            is QAbstractItemModelH;
subtype QDirModelH                     is QAbstractItemModelH;
subtype QModelIndexH                   is QAbstractItemModelH;
subtype QSqlQueryModelH                is QAbstractItemModelH;
subtype QSqlTableModelH                is QAbstractItemModelH;
subtype QSqlRelationalTableModelH      is QSqlTableModelH;
           
subtype QCheckBoxH                     is QAbstractButtonH;
subtype QPushButtonH                   is QAbstractButtonH;
subtype QRadioButtonH                  is QAbstractButtonH;
subtype QToolButtonH                   is QAbstractButtonH;
      
type QLCLAbstractScrollAreaH           is new QWidgetH;
           
subtype QScrollBarH                    is QAbstractSliderH;
           
type QAbstractSpinBoxH                 is new QWidgetH;
subtype QDoubleSpinBoxH                is QAbstractSpinBoxH;
subtype QSpinBoxH                      is QAbstractSpinBoxH;
type QDateTimeEditH                    is new QAbstractSpinBoxH;
  
subtype QDateEditH                     is QDateTimeEditH;
subtype QTimeEditH                     is QDateTimeEditH;
           
type QCalendarWidgetH                  is new QWidgetH;
type QComboBoxH                        is new QWidgetH;
type QFontComboBoxH                    is new QComboBoxH;
type QDesktopWidgetH                   is new QWidgetH;
           
type QGroupBoxH                        is new QWidgetH;
type QLineEditH                        is new QWidgetH;
type QMainWindowH                      is new QWidgetH;
type QMdiSubWindowH                    is new QWidgetH;
type QSplashScreenH                    is new QWidgetH;
           
type QMenuH                            is new QWidgetH;
type QMenuBarH                         is new QWidgetH;
type QProgressBarH                     is new QWidgetH;
type QSizeGripH                        is new QWidgetH;
subtype QPopupMenuH                    is QMenuH;
      
type QDialogH                          is new QWidgetH;
subtype QColorDialogH                  is QDialogH;
subtype QFileDialogH                   is QDialogH;
subtype QFontDialogH                   is QDialogH;
subtype QInputDialogH                  is QDialogH;
subtype QMessageBoxH                   is QDialogH;
subtype QProgressDialogH               is QDialogH;
subtype QDialogButtonBoxH              is QDialogH;
subtype QAbstractPrintDialogH          is QDialogH;
subtype QPrintDialogH                  is QAbstractPrintDialogH;
      
subtype QHeaderViewH                   is QAbstractItemViewH;
subtype QListViewH                     is QAbstractItemViewH;
type QListWidgetH                      is new QListViewH;
subtype QTreeViewH                     is QAbstractItemViewH;
type QTreeWidgetH                      is new QTreeViewH;
subtype QGraphicsViewH                 is QAbstractScrollAreaH;
subtype QDeclarativeViewH              is QAbstractScrollAreaH;
subtype QmlApplicationViewerH          is QAbstractScrollAreaH;
subtype QMdiAreaH                      is QAbstractScrollAreaH;
subtype QScrollAreaH                   is QAbstractScrollAreaH;
subtype QTextEditH                     is QAbstractScrollAreaH;
type QTextBrowserH                     is new QTextEditH;
type QPlainTextEditH                   is new QTextEditH;
type QSplitterHandleH                  is new QWidgetH;
type QStatusBarH                       is new QWidgetH;
type QTabH                             is new QWidgetH;
type QTabBarH                          is new QWidgetH;
type QTabWidgetH                       is new QWidgetH;
type QToolBarH                         is new QWidgetH;
type QWorkspaceH                       is new QWidgetH;
type QWizardH                          is new QWidgetH;
type QWizardPageH                      is new QWidgetH;
subtype QCanvasPixmapH                 is QPixmapH;
subtype QBitmapH                       is QPixmapH;
type QPrinterH                         is new QPaintDeviceH;
type QPrinterInfoH                     is new QObjectH;
type QPrintPreviewDialogH              is new QDialogH;
type QPrintPreviewWidgetH              is new QWidgetH;
      
type QPaintEngineH                     is new QObjectH;
type QPainterH                         is new QObjectH;
type QStylePainterH                    is new QPainterH;
type QPainterPathH                     is new QObjectH;
type QPainterPathStrokerH              is new QObjectH;
type QPaletteH                         is new QObjectH;
type QPenH                             is new QObjectH;
type QPersistentModelIndexH            is new QObjectH;
type QPictureIOH                       is new QObjectH;
type QPrintEngineH                     is new QObjectH;
type QPageSetupDialogH                 is new QDialogH;
type QPageSizeH                        is new QObjectH;
type QPageLayoutH                      is new QObjectH;
type QRectH                            is new QObjectH;
type QRectFH                           is new QObjectH;
type QRegExpH                          is new QObjectH;
type QRegularExpressionH               is new QObjectH;
type QRegionH                          is new QObjectH;
type QSizeH                            is new QObjectH;
type QRubberBandH                      is new QObjectH;
type QSizeFH                           is new QObjectH;
type QStandardItemH                    is new QObjectH;
type QStringH                          is new QObjectH;
type QStringViewH                      is new QObjectH;
type QStringRefH                       is new QObjectH;
type QCharRefH                         is new QObjectH;
type QStyleHintReturnH                 is new QObjectH;
subtype QStyleHintReturnMaskH          is QStyleHintReturnH;
subtype QStyleHintReturnVariantH       is QStyleHintReturnH;
type QStyleFactoryH                    is new QObjectH;
type QStyleOptionH                     is new QObjectH;
type QStyleOptionComplexH              is new QObjectH;
type QStyleOptionButtonH               is new QStyleOptionH;
type QStyleOptionComboBoxH             is new QStyleOptionComplexH;
type QStyleOptionGroupBoxH             is new QStyleOptionComplexH;
type QStyleOptionQ3ListViewH           is new QStyleOptionComplexH;
type QStyleOptionSizeGripH             is new QStyleOptionComplexH;
type QStyleOptionSliderH               is new QStyleOptionComplexH;
type QStyleOptionSpinBoxH              is new QStyleOptionComplexH;
type QStyleOptionTitleBarH             is new QStyleOptionComplexH;
type QStyleOptionToolButtonH           is new QStyleOptionComplexH;
type QStyleOptionDockWidgetH           is new QStyleOptionH;
type QStyleOptionDockWidgetV2H         is new QStyleOptionDockWidgetH;
type QStyleOptionFocusRectH            is new QStyleOptionH;
type QStyleOptionFrameH                is new QStyleOptionH;
type QStyleOptionFrameV2H              is new QStyleOptionFrameH;
type QStyleOptionGraphicsItemH         is new QStyleOptionH;
type QStyleOptionHeaderH               is new QStyleOptionH;
type QStyleOptionMenuItemH             is new QStyleOptionH;
type QStyleOptionProgressBarH          is new QStyleOptionH;
type QStyleOptionProgressBarV2H        is new QStyleOptionProgressBarH;
type QStyleOptionQ3DockWindowH         is new QStyleOptionH;
type QStyleOptionQ3ListViewItemH       is new QStyleOptionH;
type QStyleOptionRubberBandH           is new QStyleOptionH;
type QStyleOptionTabH                  is new QStyleOptionH;
type QStyleOptionTabV2H                is new QStyleOptionTabH;
type QStyleOptionTabBarBaseH           is new QStyleOptionH;
type QStyleOptionTabWidgetFrameH       is new QStyleOptionH;
type QStyleOptionToolBarH              is new QStyleOptionH;
type QStyleOptionToolBoxH              is new QStyleOptionH;
type QStyleOptionToolBoxV2H            is new QStyleOptionToolBoxH;
type QStyleOptionViewItemH             is new QStyleOptionH;
type QStyleOptionViewItemV2H           is new QStyleOptionViewItemH;
type QStyleOptionViewItemV3H           is new QStyleOptionViewItemV2H;
type QTextBlockH                       is new QObjectH;
type QTextCursorH                      is new QObjectH;
type QTextDocumentFragmentH            is new QObjectH;
type QTextDocumentWriterH              is new QObjectH;
type QTextFormatH                      is new QObjectH;
subtype QTextBlockFormatH              is QTextFormatH;
subtype QTextCharFormatH               is QTextFormatH;
subtype QTextImageFormatH              is QTextCharFormatH;
subtype QTextFrameFormatH              is QTextFormatH;
subtype QTextListFormatH               is QTextFrameFormatH;
subtype QTextTableFormatH              is QTextFrameFormatH;
subtype QTextTableCellFormatH          is QTextFrameFormatH;
type QTextOptionH                      is new QObjectH;
type QToolTipH                         is new QObjectH;
type QTransformH                       is new QObjectH;
type QTreeWidgetItemH                  is new QObjectH;
type QSocketH                          is new QObjectH;
type QRequestH                         is new QObjectH;
type QResponseH                        is new QObjectH;
type QSocketDeviceH                    is new QObjectH;
type QHostAddressH                     is new QObjectH;
type QUrlH                             is new QObjectH;
type QUrlListH                         is new QObjectH;
type QUrlInfoH                         is new QObjectH;
type QUrlOperatorH                     is new QObjectH;
type QNetworkOperationH                is new QObjectH;
type QNetworkDiskCacheH                is new QObjectH;
type QNetworkCacheMetaDataH            is new QObjectH;
type QNetworkConfigurationH            is new QObjectH;
type QNetworkConfigurationManagerH     is new QObjectH;
type QNetworkSessionH                  is new QObjectH;
type QNetworkProtocolH                 is new QObjectH;
type QNetworkProtocolFactoryBaseH      is new QObjectH;
type QNetworkInterfaceH                is new QObjectH;
type QNetworkAddressEntryH             is new QObjectH;
type QVariantH                         is new QObjectH;
type QPolygonH                         is new QVectorH;
subtype QPointArrayH                   is QPolygonH;
type QCanvasPolygonH                   is new QVectorH;
type QPolygonFH                        is new QVectorH;
type QX11InfoH                         is new QObjectH;
type QUriDragH                         is new QObjectH;
type QPainterPathElementH              is new QObjectH;
  
type QNetworkAccessManagerH            is new QObjectH;
type QNetworkReplyH                    is new QObjectH;
type QNetworkProxyFactoryH             is new QObjectH;
type QNetworkProxyAuthenticatorH       is new QObjectH;
type QNetworkProxyH                    is new QObjectH;
type QNetworkProxyQueryH               is new QObjectH;
type QNetworkRequestH                  is new QObjectH;
type QNetworkCookieH                   is new QObjectH;
type QNetworkCookieJarH                is new QObjectH;
subtype QLCLNetworkCookieJarH          is QNetworkCookieH;
type QWebBrowserH                      is new QWidgetH;
type QPluginsH                         is new QObjectH;
type QWebDatabaseH                     is new QObjectH;
type QWebHitTestResultH                is new QObjectH;
type QWebPageH                         is new QObjectH;
type QWebInspectorH                    is new QObjectH;
type QWebElementH                      is new QObjectH;
type QWebElementCollectionH            is new QObjectH;
subtype QLCLWebPageH                   is QWebPageH;
type QWebSettingsH                     is new QObjectH;
type QWebPluginFactoryH                is new QObjectH;
type QWebHistoryInterfaceH             is new QObjectH;
type QWebSecurityOriginH               is new QObjectH;
type QWebFrameH                        is new QObjectH;
type QWebViewH                         is new QObjectH;
type QWebDataH                         is new QObjectH;
subtype QLCLWebViewH                   is QWebViewH;
type QUndoStackH                       is new QObjectH;
type QUndoGroupH                       is new QObjectH;
type QUndoViewH                        is new QObjectH;
type QUndoCommandH                     is new QObjectH;
type QCommandLineParserH               is new QObjectH;
type QCommandLineOptionH               is new QObjectH;
type QSslKeyH                          is new QObjectH;
type QSslSocketH                       is new QObjectH;
type QWebSocketH                       is new QObjectH;
type QWebSocketServerH                 is new QObjectH;
type QMaskGeneratorH                   is new QObjectH;
type QSslCertificateH                  is new QObjectH;
type QSslCipherH                       is new QObjectH;
type QSslConfigurationH                is new QObjectH;
type QSslErrorH                        is new QObjectH;
type QAbstractNetworkCacheH            is new QObjectH;
type QAuthenticatorH                   is new QObjectH;
type QSettingsH                        is new QObjectH;
type QGestureH                         is new QObjectH;
type QGestureRecognizerH               is new QObjectH;
  
type QSensorH                          is new QObjectH;
type QSensorManagerH                   is new QObjectH;
type QSensorBackendH                   is new QObjectH;
type QSensorGestureH                   is new QObjectH;
type QSensorGestureManagerH            is new QObjectH;
type QSensorGestureRecognizerH         is new QObjectH;
type QSensorReadingH                   is new QObjectH;
type QSensorFilterH                    is new QObjectH;
type QOpenGLPixelTransferOptionsH      is new QObjectH;
type QOpenGLTextureH                   is new QObjectH;
type QOpenGLContextH                   is new QObjectH;
type QOpenGLContextGroupH              is new QObjectH;
type QOpenGLFunctionsH                 is new QObjectH;
type QOpenGLVersionProfileH            is new QObjectH;
type QAbstractOpenGLFunctionsH         is new QObjectH;
  
type QSurfaceH                         is new QObjectH;
type QQmlContextH                      is new QObjectH;
type QQmlComponentH                    is new QObjectH;
type QQmlErrorH                        is new QObjectH;
type QQmlEngineH                       is new QObjectH;
  
--------------------------------------------------------------------------

type QItemEditorFactoryH               is new QObjectH;
type QItemEditorCreatorBaseH           is new QObjectH;
type QSystemLocaleH                    is new QObjectH;
subtype QItemDelegateH                 is QAbstractItemDelegateH;
subtype QLCLItemDelegateH              is QItemDelegateH;
  
--  Phonon Multimedia ---------------------------------- 
  
type QVolumeSliderH                    is new QWidgetH;
type QSeekSliderH                      is new QWidgetH;
type QAudioOutputH                     is new QObjectH;
type QAudioInputH                      is new QObjectH;
type QAudioFormatH                     is new QObjectH;
type QAudioProbeH                      is new QObjectH;
type QAudioDecoderH                    is new QObjectH;
type QAudioDecoderControlH             is new QObjectH;
type QAudioBufferH                     is new QObjectH;
type QAudioDeviceInfoH                 is new QObjectH;
type QAudioOutputPathH                 is new QObjectH;
type QAudioEncoderSettingsH            is new QObjectH;
type QMediaObjectH                     is new QObjectH;
type QMediaResourceH                   is new QObjectH;
type QMediaResourceListH               is new QObjectH;
type QMediaRecorderH                   is new QObjectH;
type QMediaRecorderControlH            is new QObjectH;
type QAudioRecorderH                   is new QMediaRecorderH;
type QMediaPlayerH                     is new QMediaObjectH;
type QMediaPlayerControlH              is new QMediaObjectH;
type QMediaPlayListH                   is new QMediaObjectH;
type QMediaContentH                    is new QMediaObjectH;
type QMediaControllerH                 is new QMediaObjectH;
type QMediaTimeRangeH                  is new QMediaObjectH;
type QMediaControlH                    is new QMediaObjectH;
type QMediaServiceH                    is new QMediaObjectH;
type QVideoFrameH                      is new QWidgetH;
type QVideoProbeH                      is new QObjectH;
type QVideoSurfaceFormatH              is new QObjectH;
type QCameraImageSettingsH             is new QDialogH;
type QCameraControlH                   is new QObjectH;
type QVideoSettingsH                   is new QObjectH;
type QVideoPlayerH                     is new QWidgetH;
type QVideoWidgetH                     is new QWidgetH;
type QCameraViewfinderH                is new QVideoWidgetH;
type QVideoWidgetControlH              is new QMediaControlH;
type QVideoEncoderSettingsH            is new QObjectH;
type QImageEncoderSettingsH            is new QObjectH;
type QErrorTypeH                       is new QObjectH;
type QVectorStringH                    is new QObjectH;
type QStackStringH                     is new QObjectH;
type QGraphicsWidgetH                  is new QWidgetH;
type QGraphicsWebViewH                 is new QWidgetH;
type QGraphicsProxyWidgetH             is new QWidgetH;
type QErrorMessageH                    is new QObjectH;
type QAbstractVideoSurfaceH            is new QObjectH;
type QAbstractVideoBufferH             is new QObjectH;
  
type QScriptEngineH                    is new QObjectH;
type QScriptValueH                     is new QObjectH;
type QScriptValueListH                 is new QObjectH;
type QScriptEngineAgentH               is new QObjectH;
type QScriptContextH                   is new QObjectH;
type QScriptProgramH                   is new QObjectH;
type QScriptClassH                     is new QObjectH;
type QScriptStringH                    is new QObjectH;
type QScriptSyntaxCheckResultH         is new QObjectH;
type QGraphicsLayoutH                  is new QObjectH;
type QGraphicsGridLayoutH              is new QGraphicsLayoutH;
type QGraphicsLinearLayoutH            is new QGraphicsLayoutH;
type QGraphicsAnchorLayoutH            is new QGraphicsLayoutH;
  
type QGraphicsLayoutItemH              is new QObjectH;
type QTimeLineH                        is new QObjectH;
type QEasingCurveH                     is new QObjectH;
type QDataWidgetMapperH                is new QObjectH;
  
type QObjectMapH                       is new QObjectH;
type QStringMapH                       is new QObjectMapH;
type QIntMapH                          is new QObjectMapH;
type QVariantMapH                      is new QObjectMapH;
  
type QLoaderH                          is new QObjectH;
type QPluginLoaderH                    is new QObjectH;
type QLibraryH                         is new QObjectH;
  
type QTextCodecH                       is new QObjectH;
type QTextDecoderH                     is new QObjectH;
type QTextEncoderH                     is new QObjectH;
type QConverterStateH                  is new QObjectH;
type QCryptographicHashH               is new QObjectH;
  
type QCameraH                          is new QMediaObjectH;
type QCameraImageProcessingH           is new QObjectH;
type QCameraImageCaptureH              is new QObjectH;
type QCameraFocusZoneH                 is new QObjectH;
type QCameraFocusH                     is new QObjectH;
type QCameraExposureH                  is new QObjectH;
type QCameraInfoH                      is new QObjectH;
  
type QRadioDataH                       is new QObjectH;
type QRadioTunerH                      is new QObjectH;
type QStyleHintsH                      is new QObjectH;
type QInputMethodH                     is new QObjectH;
type QPlatformNativeInterfaceH         is new QObjectH;
type QHttpMultiPartH                   is new QObjectH;
type QGeoCoordinateH                   is new QObjectH;
type QGeoAddressH                      is new QObjectH;
type QGeoShapeH                        is new QObjectH;
type QGeoRectangleH                    is new QObjectH;
type QGeoCircleH                       is new QObjectH;
type QGeoLocationH                     is new QObjectH;
type QGeoAreaMonitorInfoH              is new QObjectH;
type QGeoPositionInfoH                 is new QObjectH;
type QGeoSatelliteInfoH                is new QObjectH;
type QGeoSatelliteInfoSourceH          is new QObjectH;
type QGeoPositionInfoSourceH           is new QObjectH;
type QGeoPositionInfoSourceFactoryH    is new QObjectH;
type QGeoAreaMonitorSourceH            is new QObjectH;
  
type QGeoCodeReplyH                    is new QObjectH;
type QGeoCodingManagerH                is new QObjectH;
type QGeoManeuverH                     is new QObjectH;
type QGeoRouteH                        is new QObjectH;
type QGeoRouteRequestH                 is new QObjectH;
type QGeoRouteSegmentH                 is new QObjectH;
type QGeoRouteReplyH                   is new QObjectH;
type QGeoRoutingManagerH               is new QObjectH;
type QGeoServiceProviderH              is new QObjectH;
type QGeoServiceProviderFactoryH       is new QObjectH;
type QGeoMappingManagerH               is new QObjectH;
type QGeoCodingManagerEngineH          is new QObjectH;
type QGeoMappingManagerEngineH         is new QObjectH;
type QGeoRoutingManagerEngineH         is new QObjectH;
type QPlaceH                           is new QObjectH;
type QPlaceDetailsReplyH               is new QObjectH;
type QPlaceContentH                    is new QObjectH;
type QPlaceContentReplyH               is new QObjectH;
type QPlaceContentRequestH             is new QObjectH;
type QPlaceContactDetailH              is new QObjectH;
type QPlaceCategoryH                   is new QObjectH;
type QPlaceAttributeH                  is new QObjectH;
type QPlaceManagerH                    is new QObjectH;
type QPlaceManagerEngineH              is new QObjectH;
type QPlaceEditorialH                  is new QObjectH;
type QPlaceIconH                       is new QObjectH;
type QPlaceReplyH                      is new QObjectH;
type QPlaceImageH                      is new QObjectH;
type QPlaceSupplierH                   is new QObjectH;
type QPlaceRatingsH                    is new QObjectH;
type QPlaceUserH                       is new QObjectH;
type QPlaceSearchRequestH              is new QObjectH;
type QPlaceSearchResultH               is new QObjectH;
type QPlaceMatchRequestH               is new QObjectH;
  
type QPaintDeviceWindowH               is new QWindowH;
type QOpenGLWindowH                    is new QPaintDeviceWindowH;
type QOpenGLWidgetH                    is new QWidgetH;
type QStaticTextH                      is new QObjectH;
type QOpenGLVertionProfileH            is new QObjectH;
type QPlatformOpenGLContextH           is new QObjectH;

type QQmlApplicationEngineH            is new QObjectH;

type QStateH                           is new QObjectH;
type QStateMachineH                    is new QStateH;

-- new qwebengine 
type QWebCertificateErrorH             is new QObjectH;
type QWebDownloadItemH                 is new QObjectH;
type QWebDownloadManagerH              is new QObjectH;
type QWebBookmarksManagerH             is new QObjectH;
type QWebBookmarkNodeH                 is new QObjectH;
type QWebHistoryItemH                  is new QObjectH;
type QWebHistoryManagerH               is new QObjectH;
type QWebHistoryH                      is new QObjectH;
type QWebProfileH                      is new QObjectH;
type QWebChannelH                      is new QObjectH;
type QWebScriptH                       is new QObjectH;
type QWebScriptCollectionH             is new QObjectH;
type QWebCookieStoreH                  is new QObjectH;
type QWebCookieStoreClientH            is new QObjectH;
type QWebCookieJarH                    is new QObjectH;
type QWebUrlRequestInterceptorH        is new QObjectH;
type QWebUrlRequestInfoH               is new QObjectH;
type QWebUrlRequestJobH                is new QObjectH;
type QWebUrlSchemeHandlerH             is new QObjectH;

type QUuidH                            is new QObjectH;

------- bluetooth  -------------------------------------------------
type QBluetoothAddressH                is new QObjectH;
type QBluetoothDeviceInfoH             is new QObjectH;
type QBluetoothServiceInfoH            is new QObjectH;
type QBluetoothHostInfoH               is new QObjectH;
type QBluetoothUuidH                   is new QObjectH;
type QBluetoothServerH                 is new QObjectH;
type QBluetoothSocketH                 is new QObjectH;
type QBluetoothServiceDiscoveryAgentH  is new QObjectH;
type QBluetoothTransferManagerH        is new QObjectH;
type QBluetoothTransferRequestH        is new QObjectH;
type QBluetoothTransferReplyH          is new QObjectH;

type QLowEnergyCharacteristicH         is new QObjectH; 
type QLowEnergyControllerH             is new QObjectH; 
type QLowEnergyDescriptorH             is new QObjectH; 
type QLowEnergyHandleH                 is new QObjectH; 
type QLowEnergyServiceH                is new QObjectH; 

----------------------  DBus ---------------------------------
type QAdaptorH                         is new QObjectH; 
type QInterfaceH                       is new QObjectH; 
type QMessageH                         is new QObjectH; 
type QCallH                            is new QObjectH; 
type QConnectionH                      is new QObjectH; 
type QErrorH                           is new QObjectH; 
type QArgumentH                        is new QObjectH; 
type QContextH                         is new QObjectH; 
type QSignatureH                       is new QObjectH; 
type QWatcherH                         is new QObjectH; 
type QReplyH                           is new QObjectH; 

type QServerH                          is new QObjectH;
type QDBusServerH                      is new QObjectH;
------------------------ QSerialBus --------------------------------
type QUnitH                            is new QObjectH;
type QModbusDeviceH                    is new QIODeviceH;
type QCanbusDeviceH                    is new QIODeviceH;
type QCanbusDeviceInfoH                is new QObjectH;
type QPduH                             is new QObjectH;
type QMasterH                          is new QObjectH;
type QSlaveH                           is new QObjectH;

------------------------ QTextToSpeech ---------------
type QVoiceH                           is new QObjectH;
type QTextToSpeechH                    is new QObjectH;
type QSpeechToTextH                    is new QObjectH;
type QFutureH                          is new QObjectH;
type QFutureWatcherH                   is new QObjectH;

------------------------- QChart -----------------------------------
type QChartH                           is new QGraphicsWidgetH;
type QAxisH                            is new QObjectH;
type QSeriesH                          is new QObjectH;
type QLegendH                          is new QObjectH;
type QMarkerH                          is new QObjectH;
type QMapperH                          is new QObjectH;
type QPieSliceH                        is new QObjectH;
type QHashH                            is new QObjectH;
type QVariantHashH                     is new QObjectH;

------------------------- QJson ---------------------------------------------------------------------------------------------
type QJsonObjectH                      is new QObjectH;
type QJsonValueH                       is new QObjectH;
type QJsonArrayH                       is new QObjectH;
type QJsonDocumentH                    is new QObjectH;
type QJsonParseErrorH                  is new QObjectH;
type QJsonTreeItemH                    is new QObjectH;
type QJsonModelH                       is new QAbstractItemModelH;

--------------  Pdf ------------------------------------------------
type QPdfDocumentH                     is new QObjectH;
type QPdfPageNavigationH               is new QObjectH;
type QPdfPageRendererH                 is new QObjectH;
type QPdfSearchModelH                  is new QObjectH;
type QPdfDestinationtH                 is new QObjectH;
type QPdfSearchResultH                 is new QPdfDestinationtH;
subtype QPdfViewH                      is QAbstractScrollAreaH;

--------------JS Engine ---------------------------------------------------------------------------------------------------------------
type QJSEngineH                        is new QObjectH;
type QJSValueH                         is new QObjectH;
type QJSValueIteratorH                 is new QObjectH;
-----------------------------------------------------------------------------------------------------------------------------
type QRendererH                        is new QObjectH;   
-----------------------------------------------------------------------------------------------------------------------------

type  QLCLItemDelegate_sizeHint_Override is access procedure (option: QStyleOptionViewItemH; index: QModelIndexH; Size: QSizeH);
type QLCLItemDelegate_paint_Override is access procedure (painter : QPainterH; option: QStyleOptionViewItemH; index: QModelIndexH);

type TPictureIOHandler is access procedure(Pic: QPictureIOH);
type TEventFilterMethod is access function (Sender: QObjectH; Event: QEventH) return integer;
type TEventFilterMethod2 is access function (Sender,Receiver: QObjectH; Event: QEventH) return integer; 

type  QtGlobalColor is  (Qtcolor0, Qtcolor1, Qtblack, Qtwhite, QtdarkGray, Qtgray, QtlightGray, Qtred, Qtgreen, 
                         Qtblue, Qtcyan, Qtmagenta, Qtyellow, QtdarkRed, QtdarkGreen, QtdarkBlue, QtdarkCyan, QtdarkMagenta,
                         QtdarkYellow, Qttransparent );
pragma Convention (C,QtGlobalColor);

type  QtSortOrder is  ( QtAscendingOrder, QtDescendingOrder );
pragma Convention (C,QtSortOrder);

type  QtTextElideMode  is (QtElideLeft, QtElideRight, QtElideMiddle, QtElideNone );
pragma Convention (C,QtTextElideMode);

type  QtBGMode  is (QtTransparentMode, QtOpaqueMode );
pragma Convention (C,QtBGMode);

type  QtArrowType  is (QtNoArrow, QtUpArrow, QtDownArrow, QtLeftArrow, QtRightArrow );
pragma Convention (C,QtArrowType);

type  QtPenStyle  is (QtNoPen, QtSolidLine, QtDashLine, QtDotLine, QtDashDotLine, QtDashDotDotLine, QtCustomDashLine );
pragma Convention (C,QtPenStyle);

type  QtUIEffect is (QtUI_General, QtUI_AnimateMenu, QtUI_FadeMenu, QtUI_AnimateCombo, QtUI_AnimateTooltip, QtUI_FadeTooltip, QtUI_AnimateToolBox );
pragma Convention (C,QtUIEffect);

type  QtTextFormat  is (QtPlainText, QtRichText, QtAutoText, QtLogText );
pragma Convention (C,QtTextFormat);

type  QtAspectRatioMode  is (QtIgnoreAspectRatio, QtKeepAspectRatio, QtKeepAspectRatioByExpanding );
pragma Convention (C,QtAspectRatioMode);

type  QtAnchorAttribute is (QtAnchorName, QtAnchorHref );
pragma Convention (C,QtAnchorAttribute);

type  QtTimeSpec is (QtLocalTime, QtUTC );
pragma Convention (C,QtTimeSpec);

type  QtScrollBarPolicy is (QtScrollBarAsNeeded, QtScrollBarAlwaysOff, QtScrollBarAlwaysOn );
pragma Convention (C,QtScrollBarPolicy);

type  QtCaseSensitivity is (QtCaseInsensitive, QtCaseSensitive );
pragma Convention (C,QtCaseSensitivity);

type  QtConnectionType  is (QtAutoConnection, QtDirectConnection, QtQueuedConnection, QtAutoCompatConnection, QtBlockingQueuedConnection );
pragma Convention (C,QtConnectionType);

type  QtShortcutContext is (QtWidgetShortcut, QtWindowShortcut, QtApplicationShortcut );
pragma Convention (C,QtShortcutContext);

type  QtFillRule is (QtOddEvenFill, QtWindingFill );
pragma Convention (C,QtFillRule);

type  QtMaskMode is (QtMaskInColor, QtMaskOutColor );
pragma Convention (C,QtMaskMode);

type  QtClipOperation is (QtNoClip, QtReplaceClip, QtIntersectClip, QtUniteClip );
pragma Convention (C,QtClipOperation);

type  QtTransformationMode is (QtFastTransformation, QtSmoothTransformation );
pragma Convention (C,QtTransformationMode);

type  QtAxis is (QtXAxis, QtYAxis, QtZAxis );
pragma Convention (C,QtAxis);

type  QtFocusReason is (QtMouseFocusReason, QtTabFocusReason, QtBacktabFocusReason, QtActiveWindowFocusReason, QtPopupFocusReason, QtShortcutFocusReason, QtMenuBarFocusReason, QtOtherFocusReason, QtNoFocusReason );
pragma Convention (C,QtFocusReason);

type  QtContextMenuPolicy is (QtNoContextMenu, QtDefaultContextMenu, QtActionsContextMenu, QtCustomContextMenu, QtPreventContextMenu );
pragma Convention (C,QtContextMenuPolicy);

type  QtInputMethodQuery is (QtImMicroFocus, QtImFont, QtImCursorPosition, QtImSurroundingText, QtImCurrentSelection );
pragma Convention (C,QtInputMethodQuery);

type QtToolButtonStyle is (ToolButtonIconOnly,ToolButtonTextOnly,ToolButtonTextBesideIcon,ToolButtonTextUnderIcon,ToolButtonFollowStyle);
pragma Convention(C,QtToolButtonStyle);

type  QtLayoutDirection is (QtLeftToRight, QtRightToLeft );
pragma Convention (C,QtLayoutDirection);

type  QtCheckState is (QtUnchecked, QtPartiallyChecked, QtChecked );
pragma Convention (C,QtCheckState);

type  QtWindowModality is (QtNonModal, QtWindowModal, QtApplicationModal );
pragma Convention (C,QtWindowModality);

type QAbstractItemViewScrollHintH  is (EnsureVisible,PositionAtTop,PositionAtBottom,PositionAtCenter);
pragma Convention (C,QAbstractItemViewScrollHintH);

subtype  QtKeyboardModifier is Cardinal; -- Qt::KeyboardModifier

subtype  QtKeyboardModifiers is QtKeyboardModifier; --QFlags<> (3)

QtNoModifier           : constant := 16#00000000#;
QtShiftModifier        : constant := 16#02000000#;
QtControlModifier      : constant := 16#04000000#;
QtAltModifier          : constant := 16#08000000#;
QtMetaModifier         : constant := 16#10000000#;
QtKeypadModifier       : constant := 16#20000000#;
QtGroupSwitchModifier  : constant := 16#40000000#;
QtKeyboardModifierMask : constant := 16#fe000000#;

QtMETA          : constant := QtMetaModifier;
QtSHIFT         : constant := QtShiftModifier;
QtCTRL          : constant := QtControlModifier;
QtALT           : constant := QtAltModifier;
QtMODIFIER_MASK : constant := QtKeyboardModifierMask;
QtUNICODE_ACCEL : constant := 0;

subtype  QtMouseButton is cardinal; -- Qt::MouseButton
subtype  QtMouseButtons is QtMouseButton; --QFlags<> (3)
type QtMouseButtonsH is access all QtMouseButtons;

QtNoButton        : constant QtMouseButton := 16#00000000#;
QtLeftButton      : constant QtMouseButton := 16#00000001#;
QtRightButton     : constant QtMouseButton := 16#00000002#;
QtMidButton       : constant QtMouseButton := 16#00000004#;
QtXButton1        : constant QtMouseButton := 16#00000008#;
QtXButton2        : constant QtMouseButton := 16#00000010#;
QtMouseButtonMask : constant QtMouseButton := 16#000000ff#;

subtype  QtOrientation is cardinal;
subtype  QtOrientations is QtOrientation;
 
QtHorizontal :constant QtOrientation  := 16#1#;
QtVertical   :constant QtOrientation  := 16#2#;

type QtScreenOrientation is (PrimaryOrientation,PortraitOrientation,LandscapeOrientation,InvertedPortraitOrientation,InvertedLandscapeOrientation);
pragma Convention(C,QtScreenOrientation );

for QtScreenOrientation use ( 
        PrimaryOrientation           => 0,
        PortraitOrientation          => 1,
        LandscapeOrientation         => 2,
        InvertedPortraitOrientation  => 4,
        InvertedLandscapeOrientation => 8);

subtype  QtWindowState is cardinal; 
subtype  QtWindowStates is QtWindowState;

QtWindowNoState    : constant QtWindowState := 16#00000000#;
QtWindowMinimized  : constant QtWindowState := 16#00000001#;
QtWindowMaximized  : constant QtWindowState := 16#00000002#;
QtWindowFullScreen : constant QtWindowState := 16#00000004#;
QtWindowActive     : constant QtWindowState := 16#00000008#;



subtype  QtImageConversionFlag  is Cardinal; 
subtype  QtImageConversionFlags is QtImageConversionFlag; 

QtColorMode_Mask       : constant QtImageConversionFlag := 16#00000003#;
QtAutoColor            : constant QtImageConversionFlag := 16#00000000#;
QtColorOnly            : constant QtImageConversionFlag := 16#00000003#;
QtMonoOnly             : constant QtImageConversionFlag := 16#00000002#;
QtAlphaDither_Mask     : constant QtImageConversionFlag := 16#0000000c#;
QtThresholdAlphaDither : constant QtImageConversionFlag := 16#00000000#;
QtOrderedAlphaDither   : constant QtImageConversionFlag := 16#00000004#;
QtDiffuseAlphaDither   : constant QtImageConversionFlag := 16#00000008#;
QtNoAlpha              : constant QtImageConversionFlag := 16#0000000c#;
QtDither_Mask          : constant QtImageConversionFlag := 16#00000030#;
QtDiffuseDither        : constant QtImageConversionFlag := 16#00000000#;
QtOrderedDither        : constant QtImageConversionFlag := 16#00000010#;
QtThresholdDither      : constant QtImageConversionFlag := 16#00000020#;
QtDitherMode_Mask      : constant QtImageConversionFlag := 16#000000c0#;
QtAutoDither           : constant QtImageConversionFlag := 16#00000000#;
QtPreferDither         : constant QtImageConversionFlag := 16#00000040#;
QtAvoidDither          : constant QtImageConversionFlag := 16#00000080#;

type  QtPenCapStyle is (QtFlatCap,QtSquareCap,QtRoundCap,QtMPenCapStyle);

for   QtPenCapStyle'size use cardinal'size;

for   QtPenCapStyle use (QtFlatCap   => 16#00#,
                        QtSquareCap => 16#10#,
                        QtRoundCap  => 16#20#,
                        QtMPenCapStyle => 16#30#);

type  QtPenJoinStyle is (QtMiterJoin,QtBevelJoin,QtRoundJoin,QtSvgMiterJoin,QtMPenJoinStyle);

for   QtPenJoinStyle'size use cardinal'size;

for   QtPenJoinStyle use (QtMiterJoin     => 16#00#,
                         QtBevelJoin     => 16#40#,
                         QtRoundJoin     => 16#80#,
                         QtSvgMiterJoin  => 16#100#,
                         QtMPenJoinStyle => 16#1c0#);

type  QtBrushStyle is (QtNoBrush,QtSolidPattern, QtDense1Pattern,
    QtDense2Pattern,QtDense3Pattern,QtDense4Pattern,QtDense5Pattern,
    QtDense6Pattern,QtDense7Pattern,QtHorPattern,QtVerPattern,
    QtCrossPattern,QtBDiagPattern,QtFDiagPattern,QtDiagCrossPattern,
    QtLinearGradientPattern,QtRadialGradientPattern,QtConicalGradientPattern,
    QtTexturePattern);
for   QtBrushStyle'size use cardinal'size;

type  QtDockWidgetAreaSizes is (QtNDockWidgetAreas);
for   QtDockWidgetAreaSizes use (QtNDockWidgetAreas => 4 );
for   QtDockWidgetAreaSizes'size use cardinal'size;

type  QtToolBarAreaSizes is ( QtNToolBarAreas);
for   QtToolBarAreaSizes use ( QtNToolBarAreas => 4 );
for   QtToolBarAreaSizes'size use cardinal'size;

type  QtDayOfWeek is (QtMonday,QtTuesday,QtWednesday,QtThursday,QtFriday,QtSaturday,QtSunday);
for   QtDayOfWeek'size use cardinal'size;
for   QtDayOfWeek use (QtMonday    => 1,
                      QtTuesday   => 2,
                      QtWednesday => 3,
                      QtThursday  => 4,
                      QtFriday    => 5,
                      QtSaturday  => 6,
                      QtSunday    => 7 );

type  QtCorner is (QtTopLeftCorner,QtTopRightCorner,QtBottomLeftCorner,QtBottomRightCorner);

for   QtCorner'size use cardinal'size;
for   QtCorner use (QtTopLeftCorner     => 16#00000#,
                   QtTopRightCorner    => 16#00001#,
                   QtBottomLeftCorner  => 16#00002#,
                   QtBottomRightCorner => 16#00003#);

type  QtItemSelectionMode is (QtContainsItemShape,
                              QtIntersectsItemShape,
                              QtContainsItemBoundingRect,
                              QtIntersectsItemBoundingRect);

for  QtItemSelectionMode'size use cardinal'size;
for  QtItemSelectionMode use (QtContainsItemShape => 16#0#,
                              QtIntersectsItemShape => 16#1#,
                              QtContainsItemBoundingRect => 16#2#,
                              QtIntersectsItemBoundingRect => 16#3#);

subtype  QtDropAction is cardinal;
subtype  QtDropActions is QtDropAction;

QtCopyAction       : constant QtDropAction := 16#1#;
QtMoveAction       : constant QtDropAction := 16#2#;
QtLinkAction       : constant QtDropAction := 16#4#;
QtActionMask       : constant QtDropAction := 16#ff#;
QtTargetMoveAction : constant QtDropAction := 16#8002#;
QtIgnoreAction     : constant QtDropAction := 16#0#;

type  Qt_ItemDataRole is (DisplayRole, DecorationRole,
    EditRole,ToolTipRole,StatusTipRole,WhatsThisRole,
    FontRole,TextAlignmentRole,BackgroundColorRole,
    ForegroundRole,
    CheckStateRole,AccessibleTextRole,AccessibleDescriptionRole,
    SizeHintRole,UserRole);
pragma Convention(C,Qt_ItemDataRole);

for  Qt_ItemDataRole'size use cardinal'size;
for  Qt_ItemDataRole use (DisplayRole => 0,
    DecorationRole => 1,
    EditRole => 2,
    ToolTipRole => 3,
    StatusTipRole => 4,
    WhatsThisRole => 5,
    FontRole => 6,
    TextAlignmentRole => 7,
    BackgroundColorRole => 8,
    ForegroundRole => 9,
    CheckStateRole => 10,
    AccessibleTextRole => 11,
    AccessibleDescriptionRole => 12,
    SizeHintRole => 13,
    UserRole => 32 );

subtype QtItemDataRole  is  integer;

QtDisplayRole               : constant QtItemDataRole :=  0;
QtDecorationRole            : constant QtItemDataRole :=  1;
QtEditRole                  : constant QtItemDataRole :=  2;
QtToolTipRole               : constant QtItemDataRole :=  3;
QtStatusTipRole             : constant QtItemDataRole :=  4;
QtWhatsThisRole             : constant QtItemDataRole :=  5;
QtFontRole                  : constant QtItemDataRole :=  6;
QtTextAlignmentRole         : constant QtItemDataRole :=  7;
QtBackgroundColorRole       : constant QtItemDataRole :=  8;
QtBackgroundRole            : constant QtItemDataRole :=  8;
QtTextColorRole             : constant QtItemDataRole :=  9;
QtForegroundRole            : constant QtItemDataRole :=  9;
QtCheckStateRole            : constant QtItemDataRole := 10;
QtAccessibleTextRole        : constant QtItemDataRole := 11;
QtAccessibleDescriptionRole : constant QtItemDataRole := 12;
QtSizeHintRole              : constant QtItemDataRole := 13;
QtInitialSortOrderRole      : constant QtItemDataRole := 14;
QtDisplayPropertyRole       : constant QtItemDataRole := 27;
QtDecorationPropertyRole    : constant QtItemDataRole := 28;
QtToolTipPropertyRole       : constant QtItemDataRole := 29;
QtStatusTipPropertyRole     : constant QtItemDataRole := 30;
QtWhatsThisPropertyRole     : constant QtItemDataRole := 31; 

QtUserRole                  : constant QtItemDataRole := 16#100#;

type QtHitTestAccuracy is (ExactHit, FuzzyHit);
pragma Convention(C,QtHitTestAccuracy);

subtype  QtItemFlag is cardinal;
subtype  QtItemFlags is QtItemFlag;
   
QtItemIsSelectable    : constant QtItemFlag :=   1;
QtItemIsEditable      : constant QtItemFlag :=   2;
QtItemIsDragEnabled   : constant QtItemFlag :=   4;
QtItemIsDropEnabled   : constant QtItemFlag :=   8;
QtItemIsUserCheckable : constant QtItemFlag :=   16;
QtItemIsEnabled       : constant QtItemFlag :=   32;
QtItemIsTristate      : constant QtItemFlag :=   64;

subtype  QtMatchFlag  is cardinal;
subtype  QtMatchFlags is QtMatchFlag;

QtMatchExactly       : constant QtMatchFlag :=   0;
QtMatchContains      : constant QtMatchFlag :=   1;
QtMatchStartsWith    : constant QtMatchFlag :=   2;
QtMatchEndsWith      : constant QtMatchFlag :=   3;
QtMatchRegExp        : constant QtMatchFlag :=   4;
QtMatchWildcard      : constant QtMatchFlag :=   5;
QtMatchFixedString   : constant QtMatchFlag :=   8;
QtMatchCaseSensitive : constant QtMatchFlag :=   16;
QtMatchWrap          : constant QtMatchFlag :=   32;
QtMatchRecursive     : constant QtMatchFlag :=   64;

type  QInternalRelayoutType is ( QInternalRelayoutNormal, QInternalRelayoutDragging,QInternalRelayoutDropped );
pragma Convention(C,QInternalRelayoutType);
type  QInternalCallback is (QInternalConnectCallback, QInternalDisconnectCallback, QInternalAdoptCurrentThread, QInternalEventNotifyCallback, QInternalLastCallback );
pragma Convention(C,QInternalCallback);
type  QInternalInternalFunction is (QInternalCreateThreadForAdoption, QInternalRefAdoptedThread, QInternalDerefAdoptedThread, QInternalSetCurrentThreadToMainThread, QInternalLastInternalFunction );
pragma Convention(C,QInternalInternalFunction);
type  QInternalDockPosition is (QInternalLeftDock, QInternalRightDock, QInternalTopDock, QInternalBottomDock, QInternalDockCount );
pragma Convention(C,QInternalDockPosition);

type QInternalPaintDeviceFlags is ( QInternalUnknownDevice,
    QInternalWidget,QInternalPixmap,QInternalImage,QInternalPrinter,
    QInternalPicture,QInternalPbuffer,QInternalFramebufferObject,
    QInternalCustomRaster);
pragma Convention(C,QInternalPaintDeviceFlags);

for QInternalPaintDeviceFlags'size use cardinal'size;
for QInternalPaintDeviceFlags use (
    QInternalUnknownDevice => 16#00#,
    QInternalWidget => 16#01#,
    QInternalPixmap => 16#02#,
    QInternalImage => 16#03#,
    QInternalPrinter => 16#04#,
    QInternalPicture => 16#05#,
    QInternalPbuffer => 16#06#,
    QInternalFramebufferObject => 16#07#,
    QInternalCustomRaster => 16#08#);


subtype  QtFocusPolicy is cardinal;

QtNoFocus     : constant QtFocusPolicy := 0;
QtTabFocus    : constant QtFocusPolicy := 1;
QtClickFocus  : constant QtFocusPolicy := 2;
QtStrongFocus : constant QtFocusPolicy := 11;
QtWheelFocus  : constant QtFocusPolicy := 15;

subtype  QtAlignmentFlag is cardinal;
subtype  QtAlignment is  QtAlignmentFlag; 

QtAlignLeft            : constant QtAlignment := 1;
QtAlignLeading         : constant QtAlignment := 1;
QtAlignRight           : constant QtAlignment := 2;
QtAlignTrailing        : constant QtAlignment := 2;
QtAlignHCenter         : constant QtAlignment := 4;
QtAlignJustify         : constant QtAlignment := 8;
QtAlignAbsolute        : constant QtAlignment := 16#10#;
QtAlignHorizontal_Mask : constant QtAlignment := 16#1f#;
QtAlignTop             : constant QtAlignment := 16#20#;
QtAlignBottom          : constant QtAlignment := 16#40#;
QtAlignVCenter         : constant QtAlignment := 16#80#;
QtAlignVertical_Mask   : constant QtAlignment := 16#e0#;
QtAlignCenter          : constant QtAlignment := 16#84#;

subtype  QtWindowType is cardinal;
subtype  QtWindowFlags is QtWindowType;

QtWidget                       : constant QtWindowType := 0;
QtWindow                       : constant QtWindowType := 1;
QtDialog                       : constant QtWindowType := 3;
QtSheet                        : constant QtWindowType := 5;
QtDrawer                       : constant QtWindowType := 7;
QtPopup                        : constant QtWindowType := 9;
QtTool                         : constant QtWindowType := 11;
QtToolTip                      : constant QtWindowType := 16#d#;
QtSplashScreen                 : constant QtWindowType := 16#f#;
QtDesktop                      : constant QtWindowType := 16#11#;
QtSubWindow                    : constant QtWindowType := 16#12#;
QtWindowType_Mask              : constant QtWindowType := 16#ff#;
QtMSWindowsFixedSizeDialogHint : constant QtWindowType := 16#100#;
QtMSWindowsOwnDC               : constant QtWindowType := 16#200#;
QtX11BypassWindowManagerHint   : constant QtWindowType := 16#400#;
QtFramelessWindowHint          : constant QtWindowType := 16#800#;
QtWindowTitleHint              : constant QtWindowType := 16#1000#;
QtWindowSystemMenuHint         : constant QtWindowType := 16#2000#;
QtWindowMinimizeButtonHint     : constant QtWindowType := 16#4000#;
QtWindowMaximizeButtonHint     : constant QtWindowType := 16#8000#;
QtWindowMinMaxButtonsHint      : constant QtWindowType := 16#c000#;
QtWindowContextHelpButtonHint  : constant QtWindowType := 16#10000#;
QtWindowShadeButtonHint        : constant QtWindowType := 16#20000#;
QtWindowStaysOnTopHint         : constant QtWindowType := 16#40000#;
QtCustomizeWindowHint          : constant QtWindowType := 16#2000000#;

function  QWindowFlags_create return QtWindowFlags;
pragma Import(C,QWindowFlags_create, "QWindowFlags_create");

subtype  QtWidgetAttribute is cardinal;

QtWA_Disabled                  : constant QtWidgetAttribute := 0;
QtWA_UnderMouse                : constant QtWidgetAttribute := 1;
QtWA_MouseTracking             : constant QtWidgetAttribute := 2;
QtWA_ContentsPropagated        : constant QtWidgetAttribute := 3;
QtWA_OpaquePaintEvent          : constant QtWidgetAttribute := 4;
QtWA_NoBackground              : constant QtWidgetAttribute := 4;
QtWA_StaticContents            : constant QtWidgetAttribute := 5;
QtWA_LaidOut                   : constant QtWidgetAttribute := 7;
QtWA_PaintOnScreen             : constant QtWidgetAttribute := 8;
QtWA_NoSystemBackground        : constant QtWidgetAttribute := 9;
QtWA_UpdatesDisabled           : constant QtWidgetAttribute := 16#a#;
QtWA_Mapped                    : constant QtWidgetAttribute := 16#b#;
QtWA_MacNoClickThrough         : constant QtWidgetAttribute := 16#c#;
QtWA_PaintOutsidePaintEvent    : constant QtWidgetAttribute := 16#d#;
QtWA_InputMethodEnabled        : constant QtWidgetAttribute := 16#e#;
QtWA_WState_Visible            : constant QtWidgetAttribute := 16#f#;
QtWA_WState_Hidden             : constant QtWidgetAttribute := 16#10#;
QtWA_ForceDisabled             : constant QtWidgetAttribute := 16#20#;
QtWA_KeyCompression            : constant QtWidgetAttribute := 16#21#;
QtWA_PendingMoveEvent          : constant QtWidgetAttribute := 16#22#;
QtWA_PendingResizeEvent        : constant QtWidgetAttribute := 16#23#;
QtWA_SetPalette                : constant QtWidgetAttribute := 16#24#;
QtWA_SetFont                   : constant QtWidgetAttribute := 16#25#;
QtWA_SetCursor                 : constant QtWidgetAttribute := 16#26#;
QtWA_NoChildEventsFromChildren : constant QtWidgetAttribute := 16#27#;
QtWA_WindowModified            : constant QtWidgetAttribute := 16#29#;
QtWA_Resized                   : constant QtWidgetAttribute := 16#2a#;
QtWA_Moved                     : constant QtWidgetAttribute := 16#2b#;
QtWA_PendingUpdate             : constant QtWidgetAttribute := 16#2c#;
QtWA_InvalidSize               : constant QtWidgetAttribute := 16#2d#;
QtWA_MacBrushedMetal           : constant QtWidgetAttribute := 16#2e#;
QtWA_MacMetalStyle             : constant QtWidgetAttribute := 16#2e#;
QtWA_CustomWhatsThis           : constant QtWidgetAttribute := 16#2f#;
QtWA_LayoutOnEntireRect        : constant QtWidgetAttribute := 16#30#;
QtWA_OutsideWSRange            : constant QtWidgetAttribute := 16#31#;
QtWA_GrabbedShortcut           : constant QtWidgetAttribute := 16#32#;
QtWA_TransparentForMouseEvents : constant QtWidgetAttribute := 16#33#;
QtWA_PaintUnclipped            : constant QtWidgetAttribute := 16#34#;
QtWA_SetWindowIcon             : constant QtWidgetAttribute := 16#35#;
QtWA_NoMouseReplay             : constant QtWidgetAttribute := 16#36#;
QtWA_DeleteOnClose             : constant QtWidgetAttribute := 16#37#;
QtWA_RightToLeft               : constant QtWidgetAttribute := 16#38#;
QtWA_SetLayoutDirection        : constant QtWidgetAttribute := 16#39#;
QtWA_NoChildEventsForParent    : constant QtWidgetAttribute := 16#3a#;
QtWA_ForceUpdatesDisabled      : constant QtWidgetAttribute := 16#3b#;
QtWA_WState_Created            : constant QtWidgetAttribute := 16#3c#;
QtWA_WState_CompressKeys       : constant QtWidgetAttribute := 16#3d#;
QtWA_WState_InPaintEvent       : constant QtWidgetAttribute := 16#3e#;
QtWA_WState_Reparented         : constant QtWidgetAttribute := 16#3f#;
QtWA_WState_ConfigPending      : constant QtWidgetAttribute := 16#40#;
QtWA_WState_Polished           : constant QtWidgetAttribute := 16#42#;
QtWA_WState_DND                : constant QtWidgetAttribute := 16#43#;
QtWA_WState_OwnSizePolicy      : constant QtWidgetAttribute := 16#44#;
QtWA_WState_ExplicitShowHide   : constant QtWidgetAttribute := 16#45#;
QtWA_ShowModal                 : constant QtWidgetAttribute := 16#46#;
QtWA_MouseNoMask               : constant QtWidgetAttribute := 16#47#;
QtWA_GroupLeader               : constant QtWidgetAttribute := 16#48#;
QtWA_NoMousePropagation        : constant QtWidgetAttribute := 16#49#;
QtWA_Hover                     : constant QtWidgetAttribute := 16#4a#;
QtWA_InputMethodTransparent    : constant QtWidgetAttribute := 16#4b#;
QtWA_QuitOnClose               : constant QtWidgetAttribute := 16#4c#;
QtWA_KeyboardFocusChange       : constant QtWidgetAttribute := 16#4d#;
QtWA_AcceptDrops               : constant QtWidgetAttribute := 16#4e#;
QtWA_DropSiteRegistered        : constant QtWidgetAttribute := 16#4f#;
QtWA_ForceAcceptDrops          : constant QtWidgetAttribute := 16#4f#;
QtWA_WindowPropagation         : constant QtWidgetAttribute := 16#50#;
QtWA_NoX11EventCompression     : constant QtWidgetAttribute := 16#51#;
QtWA_TintedBackground          : constant QtWidgetAttribute := 16#52#;
QtWA_X11OpenGLOverlay          : constant QtWidgetAttribute := 16#53#;
QtWA_AlwaysShowToolTips        : constant QtWidgetAttribute := 16#54#;
QtWA_MacOpaqueSizeGrip         : constant QtWidgetAttribute := 16#55#;

QtWA_SetStyle                  : constant QtWidgetAttribute := 16#56#;
QtWA_SetLocale                 : constant QtWidgetAttribute := 16#57#;
QtWA_MacShowFocusRect          : constant QtWidgetAttribute := 16#58#;
QtWA_MacNormalSize             : constant QtWidgetAttribute := 16#59#;
QtWA_MacSmallSize              : constant QtWidgetAttribute := 16#5a#;
QtWA_MacMiniSize               : constant QtWidgetAttribute := 16#5b#;
QtWA_LayoutUsesWidgetRect      : constant QtWidgetAttribute := 16#5c#;
QtWA_StyledBackground          : constant QtWidgetAttribute := 16#5d#;
QtWA_MSWindowsUseDirect3D      : constant QtWidgetAttribute := 16#5e#;
QtWA_CanHostQMdiSubWindowTitleBar : constant QtWidgetAttribute := 16#5f#;
QtWA_MacAlwaysShowToolWindow   : constant QtWidgetAttribute := 16#60#;
QtWA_StyleSheet                : constant QtWidgetAttribute := 16#61#;
QtWA_AttributeCount            : constant QtWidgetAttribute := 16#62#;

QtKey_Escape                   : constant := 16#1000000#;
QtKey_Tab                      : constant := 16#1000001#;
QtKey_Backtab                  : constant := 16#1000002#;
QtKey_Backspace                : constant := 16#1000003#;
QtKey_Return                   : constant := 16#1000004#;
QtKey_Enter                    : constant := 16#1000005#;
QtKey_Insert                   : constant := 16#1000006#;
QtKey_Delete                   : constant := 16#1000007#;
QtKey_Pause                    : constant := 16#1000008#;
QtKey_Print                    : constant := 16#1000009#;
QtKey_SysReq                   : constant := 16#100000a#;
QtKey_Clear                    : constant := 16#100000b#;
QtKey_Home                     : constant := 16#1000010#;
QtKey_End                      : constant := 16#1000011#;
QtKey_Left                     : constant := 16#1000012#;
QtKey_Up                       : constant := 16#1000013#;
QtKey_Right                    : constant := 16#1000014#;
QtKey_Down                     : constant := 16#1000015#;
QtKey_PageUp                   : constant := 16#1000016#;
QtKey_PageDown                 : constant := 16#1000017#;
QtKey_Shift                    : constant := 16#1000020#;
QtKey_Control                  : constant := 16#1000021#;
QtKey_Meta                     : constant := 16#1000022#;
QtKey_Alt                      : constant := 16#1000023#;
QtKey_CapsLock                 : constant := 16#1000024#;
QtKey_NumLock                  : constant := 16#1000025#;
QtKey_ScrollLock               : constant := 16#1000026#;
QtKey_F1                       : constant := 16#1000030#;
QtKey_F2                       : constant := 16#1000031#;
QtKey_F3                       : constant := 16#1000032#;
QtKey_F4                       : constant := 16#1000033#;
QtKey_F5                       : constant := 16#1000034#;
QtKey_F6                       : constant := 16#1000035#;
QtKey_F7                       : constant := 16#1000036#;
QtKey_F8                       : constant := 16#1000037#;
QtKey_F9                       : constant := 16#1000038#;
QtKey_F10                      : constant := 16#1000039#;
QtKey_F11                      : constant := 16#100003a#;
QtKey_F12                      : constant := 16#100003b#;
QtKey_F13                      : constant := 16#100003c#;
QtKey_F14                      : constant := 16#100003d#;
QtKey_F15                      : constant := 16#100003e#;
QtKey_F16                      : constant := 16#100003f#;
QtKey_F17                      : constant := 16#1000040#;
QtKey_F18                      : constant := 16#1000041#;
QtKey_F19                      : constant := 16#1000042#;
QtKey_F20                      : constant := 16#1000043#;
QtKey_F21                      : constant := 16#1000044#;
QtKey_F22                      : constant := 16#1000045#;
QtKey_F23                      : constant := 16#1000046#;
QtKey_F24                      : constant := 16#1000047#;
QtKey_F25                      : constant := 16#1000048#;
QtKey_F26                      : constant := 16#1000049#;
QtKey_F27                      : constant := 16#100004a#;
QtKey_F28                      : constant := 16#100004b#;
QtKey_F29                      : constant := 16#100004c#;
QtKey_F30                      : constant := 16#100004d#;
QtKey_F31                      : constant := 16#100004e#;
QtKey_F32                      : constant := 16#100004f#;
QtKey_F33                      : constant := 16#1000050#;
QtKey_F34                      : constant := 16#1000051#;
QtKey_F35                      : constant := 16#1000052#;
QtKey_Super_L                  : constant := 16#1000053#;
QtKey_Super_R                  : constant := 16#1000054#;
QtKey_Menu                     : constant := 16#1000055#;
QtKey_Hyper_L                  : constant := 16#1000056#;
QtKey_Hyper_R                  : constant := 16#1000057#;
QtKey_Help                     : constant := 16#1000058#;
QtKey_Direction_L              : constant := 16#1000059#;
QtKey_Direction_R              : constant := 16#1000060#;
QtKey_Space                    : constant := 16#20#;
QtKey_Any                      : constant := 16#20#;
QtKey_Exclam                   : constant := 16#21#;
QtKey_QuoteDbl                 : constant := 16#22#;
QtKey_NumberSign               : constant := 16#23#;
QtKey_Dollar                   : constant := 16#24#;
QtKey_Percent                  : constant := 16#25#;
QtKey_Ampersand                : constant := 16#26#;
QtKey_Apostrophe               : constant := 16#27#;
QtKey_ParenLeft                : constant := 16#28#;
QtKey_ParenRight               : constant := 16#29#;
QtKey_Asterisk                 : constant := 16#2a#;
QtKey_Plus                     : constant := 16#2b#;
QtKey_Comma                    : constant := 16#2c#;
QtKey_Minus                    : constant := 16#2d#;
QtKey_Period                   : constant := 16#2e#;
QtKey_Slash                    : constant := 16#2f#;
QtKey_0                        : constant := 16#30#;
QtKey_1                        : constant := 16#31#;
QtKey_2                        : constant := 16#32#;
QtKey_3                        : constant := 16#33#;
QtKey_4                        : constant := 16#34#;
QtKey_5                        : constant := 16#35#;
QtKey_6                        : constant := 16#36#;
QtKey_7                        : constant := 16#37#;
QtKey_8                        : constant := 16#38#;
QtKey_9                        : constant := 16#39#;
QtKey_Colon                    : constant := 16#3a#;
QtKey_Semicolon                : constant := 16#3b#;
QtKey_Less                     : constant := 16#3c#;
QtKey_Equal                    : constant := 16#3d#;
QtKey_Greater                  : constant := 16#3e#;
QtKey_Question                 : constant := 16#3f#;
QtKey_At                       : constant := 16#40#;
QtKey_A                        : constant := 16#41#;
QtKey_B                        : constant := 16#42#;
QtKey_C                        : constant := 16#43#;
QtKey_D                        : constant := 16#44#;
QtKey_E                        : constant := 16#45#;
QtKey_F                        : constant := 16#46#;
QtKey_G                        : constant := 16#47#;
QtKey_H                        : constant := 16#48#;
QtKey_I                        : constant := 16#49#;
QtKey_J                        : constant := 16#4a#;
QtKey_K                        : constant := 16#4b#;
QtKey_L                        : constant := 16#4c#;
QtKey_M                        : constant := 16#4d#;
QtKey_N                        : constant := 16#4e#;
QtKey_O                        : constant := 16#4f#;
QtKey_P                        : constant := 16#50#;
QtKey_Q                        : constant := 16#51#;
QtKey_R                        : constant := 16#52#;
QtKey_S                        : constant := 16#53#;
QtKey_T                        : constant := 16#54#;
QtKey_U                        : constant := 16#55#;
QtKey_V                        : constant := 16#56#;
QtKey_W                        : constant := 16#57#;
QtKey_X                        : constant := 16#58#;
QtKey_Y                        : constant := 16#59#;
QtKey_Z                        : constant := 16#5a#;
QtKey_BracketLeft              : constant := 16#5b#;
QtKey_Backslash                : constant := 16#5c#;
QtKey_BracketRight             : constant := 16#5d#;
QtKey_AsciiCircum              : constant := 16#5e#;
QtKey_Underscore               : constant := 16#5f#;
QtKey_QuoteLeft                : constant := 16#60#;
QtKey_BraceLeft                : constant := 16#7b#;
QtKey_Bar                      : constant := 16#7c#;
QtKey_BraceRight               : constant := 16#7d#;
QtKey_AsciiTilde               : constant := 16#7e#;
QtKey_nobreakspace             : constant := 16#a0#;
QtKey_exclamdown               : constant := 16#a1#;
QtKey_cent                     : constant := 16#a2#;
QtKey_sterling                 : constant := 16#a3#;
QtKey_currency                 : constant := 16#a4#;
QtKey_yen                      : constant := 16#a5#;
QtKey_brokenbar                : constant := 16#a6#;
QtKey_section                  : constant := 16#a7#;
QtKey_diaeresis                : constant := 16#a8#;
QtKey_copyright                : constant := 16#a9#;
QtKey_ordfeminine              : constant := 16#aa#;
QtKey_guillemotleft            : constant := 16#ab#;
QtKey_notsign                  : constant := 16#ac#;
QtKey_hyphen                   : constant := 16#ad#;
QtKey_registered               : constant := 16#ae#;
QtKey_macron                   : constant := 16#af#;
QtKey_degree                   : constant := 16#b0#;
QtKey_plusminus                : constant := 16#b1#;
QtKey_twosuperior              : constant := 16#b2#;
QtKey_threesuperior            : constant := 16#b3#;
QtKey_acute                    : constant := 16#b4#;
QtKey_mu                       : constant := 16#b5#;
QtKey_paragraph                : constant := 16#b6#;
QtKey_periodcentered           : constant := 16#b7#;
QtKey_cedilla                  : constant := 16#b8#;
QtKey_onesuperior              : constant := 16#b9#;
QtKey_masculine                : constant := 16#ba#;
QtKey_guillemotright           : constant := 16#bb#;
QtKey_onequarter               : constant := 16#bc#;
QtKey_onehalf                  : constant := 16#bd#;
QtKey_threequarters            : constant := 16#be#;
QtKey_questiondown             : constant := 16#bf#;
QtKey_Agrave                   : constant := 16#c0#;
QtKey_Aacute                   : constant := 16#c1#;
QtKey_Acircumflex              : constant := 16#c2#;
QtKey_Atilde                   : constant := 16#c3#;
QtKey_Adiaeresis               : constant := 16#c4#;
QtKey_Aring                    : constant := 16#c5#;
QtKey_AE                       : constant := 16#c6#;
QtKey_Ccedilla                 : constant := 16#c7#;
QtKey_Egrave                   : constant := 16#c8#;
QtKey_Eacute                   : constant := 16#c9#;
QtKey_Ecircumflex              : constant := 16#ca#;
QtKey_Ediaeresis               : constant := 16#cb#;
QtKey_Igrave                   : constant := 16#cc#;
QtKey_Iacute                   : constant := 16#cd#;
QtKey_Icircumflex              : constant := 16#ce#;
QtKey_Idiaeresis               : constant := 16#cf#;
QtKey_ETH                      : constant := 16#d0#;
QtKey_Ntilde                   : constant := 16#d1#;
QtKey_Ograve                   : constant := 16#d2#;
QtKey_Oacute                   : constant := 16#d3#;
QtKey_Ocircumflex              : constant := 16#d4#;
QtKey_Otilde                   : constant := 16#d5#;
QtKey_Odiaeresis               : constant := 16#d6#;
QtKey_multiply                 : constant := 16#d7#;
QtKey_Ooblique                 : constant := 16#d8#;
QtKey_Ugrave                   : constant := 16#d9#;
QtKey_Uacute                   : constant := 16#da#;
QtKey_Ucircumflex              : constant := 16#db#;
QtKey_Udiaeresis               : constant := 16#dc#;
QtKey_Yacute                   : constant := 16#dd#;
QtKey_THORN                    : constant := 16#de#;
QtKey_ssharp                   : constant := 16#df#;
QtKey_division                 : constant := 16#f7#;
QtKey_ydiaeresis               : constant := 16#ff#;
QtKey_AltGr                    : constant := 16#1001103#;
QtKey_Multi_key                : constant := 16#1001120#;
QtKey_Codeinput                : constant := 16#1001137#;
QtKey_SingleCandidate          : constant := 16#100113c#;
QtKey_MultipleCandidate        : constant := 16#100113d#;
QtKey_PreviousCandidate        : constant := 16#100113e#;
QtKey_Mode_switch              : constant := 16#100117e#;
QtKey_Kanji                    : constant := 16#1001121#;
QtKey_Muhenkan                 : constant := 16#1001122#;
QtKey_Henkan                   : constant := 16#1001123#;
QtKey_Romaji                   : constant := 16#1001124#;
QtKey_Hiragana                 : constant := 16#1001125#;
QtKey_Katakana                 : constant := 16#1001126#;
QtKey_Hiragana_Katakana        : constant := 16#1001127#;
QtKey_Zenkaku                  : constant := 16#1001128#;
QtKey_Hankaku                  : constant := 16#1001129#;
QtKey_Zenkaku_Hankaku          : constant := 16#100112a#;
QtKey_Touroku                  : constant := 16#100112b#;
QtKey_Massyo                   : constant := 16#100112c#;
QtKey_Kana_Lock                : constant := 16#100112d#;
QtKey_Kana_Shift               : constant := 16#100112e#;
QtKey_Eisu_Shift               : constant := 16#100112f#;
QtKey_Eisu_toggle              : constant := 16#1001130#;
QtKey_Hangul                   : constant := 16#1001131#;
QtKey_Hangul_Start             : constant := 16#1001132#;
QtKey_Hangul_End               : constant := 16#1001133#;
QtKey_Hangul_Hanja             : constant := 16#1001134#;
QtKey_Hangul_Jamo              : constant := 16#1001135#;
QtKey_Hangul_Romaja            : constant := 16#1001136#;
QtKey_Hangul_Jeonja            : constant := 16#1001138#;
QtKey_Hangul_Banja             : constant := 16#1001139#;
QtKey_Hangul_PreHanja          : constant := 16#100113a#;
QtKey_Hangul_PostHanja         : constant := 16#100113b#;
QtKey_Hangul_Special           : constant := 16#100113f#;
QtKey_Dead_Grave               : constant := 16#1001250#;
QtKey_Dead_Acute               : constant := 16#1001251#;
QtKey_Dead_Circumflex          : constant := 16#1001252#;
QtKey_Dead_Tilde               : constant := 16#1001253#;
QtKey_Dead_Macron              : constant := 16#1001254#;
QtKey_Dead_Breve               : constant := 16#1001255#;
QtKey_Dead_Abovedot            : constant := 16#1001256#;
QtKey_Dead_Diaeresis           : constant := 16#1001257#;
QtKey_Dead_Abovering           : constant := 16#1001258#;
QtKey_Dead_Doubleacute         : constant := 16#1001259#;
QtKey_Dead_Caron               : constant := 16#100125a#;
QtKey_Dead_Cedilla             : constant := 16#100125b#;
QtKey_Dead_Ogonek              : constant := 16#100125c#;
QtKey_Dead_Iota                : constant := 16#100125d#;
QtKey_Dead_Voiced_Sound        : constant := 16#100125e#;
QtKey_Dead_Semivoiced_Sound    : constant := 16#100125f#;
QtKey_Dead_Belowdot            : constant := 16#1001260#;
QtKey_Dead_Hook                : constant := 16#1001261#;
QtKey_Dead_Horn                : constant := 16#1001262#;
QtKey_Back                     : constant := 16#1000061#;
QtKey_Forward                  : constant := 16#1000062#;
QtKey_Stop                     : constant := 16#1000063#;
QtKey_Refresh                  : constant := 16#1000064#;
QtKey_VolumeDown               : constant := 16#1000070#;
QtKey_VolumeMute               : constant := 16#1000071#;
QtKey_VolumeUp                 : constant := 16#1000072#;
QtKey_BassBoost                : constant := 16#1000073#;
QtKey_BassUp                   : constant := 16#1000074#;
QtKey_BassDown                 : constant := 16#1000075#;
QtKey_TrebleUp                 : constant := 16#1000076#;
QtKey_TrebleDown               : constant := 16#1000077#;
QtKey_MediaPlay                : constant := 16#1000080#;
QtKey_MediaStop                : constant := 16#1000081#;
QtKey_MediaPrevious            : constant := 16#1000082#;
QtKey_MediaNext                : constant := 16#1000083#;
QtKey_MediaRecord              : constant := 16#1000084#;
QtKey_HomePage                 : constant := 16#1000090#;
QtKey_Favorites                : constant := 16#1000091#;
QtKey_Search                   : constant := 16#1000092#;
QtKey_Standby                  : constant := 16#1000093#;
QtKey_OpenUrl                  : constant := 16#1000094#;
QtKey_LaunchMail               : constant := 16#10000a0#;
QtKey_LaunchMedia              : constant := 16#10000a1#;
QtKey_Launch0                  : constant := 16#10000a2#;
QtKey_Launch1                  : constant := 16#10000a3#;
QtKey_Launch2                  : constant := 16#10000a4#;
QtKey_Launch3                  : constant := 16#10000a5#;
QtKey_Launch4                  : constant := 16#10000a6#;
QtKey_Launch5                  : constant := 16#10000a7#;
QtKey_Launch6                  : constant := 16#10000a8#;
QtKey_Launch7                  : constant := 16#10000a9#;
QtKey_Launch8                  : constant := 16#10000aa#;
QtKey_Launch9                  : constant := 16#10000ab#;
QtKey_LaunchA                  : constant := 16#10000ac#;
QtKey_LaunchB                  : constant := 16#10000ad#;
QtKey_LaunchC                  : constant := 16#10000ae#;
QtKey_LaunchD                  : constant := 16#10000af#;
QtKey_LaunchE                  : constant := 16#10000b0#;
QtKey_LaunchF                  : constant := 16#10000b1#;
QtKey_MediaLast                : constant := 16#100ffff#;
QtKey_Select                   : constant := 16#1010000#;
QtKey_Yes                      : constant := 16#1010001#;
QtKey_No                       : constant := 16#1010002#;
QtKey_Cancel                   : constant := 16#1020001#;
QtKey_Printer                  : constant := 16#1020002#;
QtKey_Execute                  : constant := 16#1020003#;
QtKey_Sleep                    : constant := 16#1020004#;
QtKey_Play                     : constant := 16#1020005#;
QtKey_Zoom                     : constant := 16#1020006#;
QtKey_Context1                 : constant := 16#1100000#;
QtKey_Context2                 : constant := 16#1100001#;
QtKey_Context3                 : constant := 16#1100002#;
QtKey_Context4                 : constant := 16#1100003#;
QtKey_Call                     : constant := 16#1100004#;
QtKey_Hangup                   : constant := 16#1100005#;
QtKey_Flip                     : constant := 16#1100006#;
QtKey_unknown                  : constant := 16#1ffffff#;

subtype  QtCursorShape is cardinal;

QtArrowCursor        : constant := 16#0#;
QtUpArrowCursor      : constant := 16#1#;
QtCrossCursor        : constant := 16#2#;
QtWaitCursor         : constant := 16#3#;
QtIBeamCursor        : constant := 16#4#;
QtSizeVerCursor      : constant := 16#5#;
QtSizeHorCursor      : constant := 16#6#;
QtSizeBDiagCursor    : constant := 16#7#;
QtSizeFDiagCursor    : constant := 16#8#;
QtSizeAllCursor      : constant := 16#9#;
QtBlankCursor        : constant := 16#a#;
QtSplitVCursor       : constant := 16#b#;
QtSplitHCursor       : constant := 16#c#;
QtPointingHandCursor : constant := 16#d#;
QtForbiddenCursor    : constant := 16#e#;
QtWhatsThisCursor    : constant := 16#f#;
QtBusyCursor         : constant := 16#10#;
QtOpenHandCursor     : constant := 16#11#;
QtClosedHandCursor   : constant := 16#12#;
QtLastCursor         : constant := 16#12#;
QtBitmapCursor       : constant := 16#18#;
QtCustomCursor       : constant := 16#19#;

subtype  QtDockWidgetArea is cardinal; 
subtype  QtDockWidgetAreas is QtDockWidgetArea;

QtLeftDockWidgetArea   : constant := 16#1#;
QtRightDockWidgetArea  : constant := 16#2#;
QtTopDockWidgetArea    : constant := 16#4#;
QtBottomDockWidgetArea : constant := 16#8#;
QtDockWidgetArea_Mask  : constant := 16#f#;
QtAllDockWidgetAreas   : constant := 16#f#;
QtNoDockWidgetArea     : constant := 16#0#;

subtype  QtToolBarArea is cardinal;
subtype  QtToolBarAreas is QtToolBarArea;

QtLeftToolBarArea   : constant := 16#1#;
QtRightToolBarArea  : constant := 16#2#;
QtTopToolBarArea    : constant := 16#4#;
QtBottomToolBarArea : constant := 16#8#;
QtToolBarArea_Mask  : constant := 16#f#;
QtAllToolBarAreas   : constant := 16#f#;
QtNoToolBarArea     : constant := 16#0#;

subtype  QtDateFormat is cardinal;

QtTextDate         : constant := 16#0#;
QtISODate          : constant := 16#1#;
QtSystemLocaleDate : constant := 16#2#;
QtLocalDate        : constant := 16#2#;
QtLocaleDate       : constant := 16#3#;

subtype  QtTextInteractionFlag is cardinal;
subtype  QtTextInteractionFlags is QtTextInteractionFlag;

QtNoTextInteraction         : constant := 16#0#;
QtTextSelectableByMouse     : constant := 16#1#;
QtTextSelectableByKeyboard  : constant := 16#2#;
QtLinksAccessibleByMouse    : constant := 16#4#;
QtLinksAccessibleByKeyboard : constant := 16#8#;
QtTextEditable              : constant := 16#10#;
QtTextEditorInteraction     : constant := 16#13#;
QtTextBrowserInteraction    : constant := 16#d#;

subtype  QtEventPriority is cardinal; 

QtHighEventPriority   : constant := 16#1#;
QtNormalEventPriority : constant := 16#0#;
QtLowEventPriority    : constant := 16#ffffffff#;
  
type TAbstractEventFilter  is access function(Msg:builtin.zstring) return boolean;

type eventFilterH is access function(prm1:QObjectH;prm2:QEventH) return integer;
pragma Convention (C,eventFilterH);

type EventDelegateH is access function(prm1:void_Star; prm2: charp; prm3: void_Star; prm4 :charp) return integer;
pragma Convention (C,eventDelegateH);

type voidCallbackH            is access procedure;
pragma Convention (C,voidCallbackH);

type boolCallbackH            is access procedure(prm:boolean);
pragma Convention (C,boolCallbackH);

type intCallbackH             is access procedure(prm:integer);
pragma Convention (C,intCallbackH);

type intIntCallbackH          is access procedure(prm1,prm2:integer);
pragma Convention (C,intIntCallbackH);

type Qint64int64CallbackH     is access procedure(p1,p2:qint64);
pragma Convention (C,Qint64int64CallbackH);

type Qint64CallbackH  is access procedure(prm:qint64);
pragma Convention (C,Qint64CallbackH);

type floatCallbackH           is access procedure(prm:float);
pragma Convention (C,floatCallbackH);

type qrealCallbackH           is access procedure(prm:qreal);
pragma Convention (C,qrealCallbackH);

type UserDataCallbackH        is access procedure(prm1,prm2: Void_Star);
pragma Convention(C,UserDataCallbackH);

type anyParameterCallbackH is access procedure(prm: Void_Star);
pragma Convention(C,anyParameterCallbackH);

type anyParameterListCallbackH is access procedure(prm: Void_Star_Star);
pragma Convention(C,anyParameterListCallbackH);

type QSizeCallbackH           is access procedure(prm:QSizeH);
pragma Convention(C,QSizeCallbackH);

type QObjectCallbackH         is access procedure(prm:QObjectH);
pragma Convention(C,QObjectCallbackH);

type QActionCallbackH         is access procedure(prm:QActionH);
pragma Convention(C,QActionCallbackH);

type QRectCallbackH           is access procedure(prm:QRectH);
pragma Convention(C,QRectCallbackH);

type QPointCallbackH          is access procedure(prm:QPointH);
pragma Convention(C,QPointCallbackH);

type QUrlCallbackH            is access procedure(prm:QUrlH);
pragma Convention(C,QUrlCallbackH);

type QStringCallbackH         is access procedure(prm:QStringH);
pragma Convention(C,QStringCallbackH);

type QStringStringCallbackH         is access procedure(prm1,prm2:QStringH);
pragma Convention(C,QStringStringCallbackH);

type QSqlRecordCallbackH      is access procedure(prm:QSqlRecordH);
pragma Convention(C,QSqlRecordCallbackH);

type QModelIndexCallbackH     is access procedure(prm:QModelIndexH);
pragma Convention(C,QModelIndexCallbackH);

type QTreeWidgetItemCallbackH is access procedure(p1: QTreeWidgetItemH; p2: integer) ;
pragma Convention(C,QTreeWidgetItemCallbackH);

subtype  QtSizeHint is cardinal;
----------------------------------------------------------------------
UpArrow              : constant quint := 0;
DownArrow            : constant quint := 1;
LeftArrow            : constant quint := 2;
RightArrow           : constant quint := 3;
CopyROP              : constant quint := 0;
OrROP                : constant quint := 1;
XorROP               : constant quint := 2;
NotAndROP            : constant quint := 3;
EraseROP             : constant quint := NotAndROP;
NotCopyROP           : constant quint := 4;
NotOrROP             : constant quint := 5;
NotXorROP            : constant quint := 6;
AndROP               : constant quint := 7;
NotEraseROP          : constant quint := AndROP;
NotROP               : constant quint := 8;
ClearROP             : constant quint := 9;
SetROP               : constant quint := 10;
NopROP               : constant quint := 11;
AndNotROP            : constant quint := 12;
OrNotROP             : constant quint := 13;
NandROP              : constant quint := 14;
NorROP               : constant quint := 15;
LastROP              : constant quint := NorROP;
NoPen                : constant quint := 0;
SolidLine            : constant quint := 1;
DashLine             : constant quint := 2;
DotLine              : constant quint := 3;
DashDotLine          : constant quint := 4;
DashDotDotLine       : constant quint := 5;
MPenStyle            : constant quint := 16#0f#;
FlatCap              : constant quint := 16#00#;
SquareCap            : constant quint := 16#10#;
RoundCap             : constant quint := 16#20#;
MPenCapStyle         : constant quint := 16#30#;
MiterJoin            : constant quint := 16#00#;
BevelJoin            : constant quint := 16#40#;
RoundJoin            : constant quint := 16#80#;
MPenJoinStyle        : constant quint := 16#c0#;
NoBrush              : constant quint := 0;
SolidPattern         : constant quint := 1;
Dense1Pattern        : constant quint := 2;
Dense2Pattern        : constant quint := 3;
Dense3Pattern        : constant quint := 4;
Dense4Pattern        : constant quint := 5;
Dense5Pattern        : constant quint := 6;
Dense6Pattern        : constant quint := 7;
Dense7Pattern        : constant quint := 8;
HorPattern           : constant quint := 9;
VerPattern           : constant quint := 10;
CrossPattern         : constant quint := 11;
BDiagPattern         : constant quint := 12;
FDiagPattern         : constant quint := 13;
DiagCrossPattern     : constant quint := 14;
CustomPattern        : constant quint := 24;
WV_32s               : constant quint := 16#0001#;
WV_95                : constant quint := 16#0002#;
WV_98                : constant quint := 16#0003#;
WV_Me                : constant quint := 16#0004#;
WV_DOS_based         : constant quint := 16#000f#;
WV_NT                : constant quint := 16#0010#;
WV_2000              : constant quint := 16#0020#;
WV_XP                : constant quint := 16#0030#;
WV_NT_based          : constant quint := 16#00f0#;
UI_General           : constant quint := 0;
UI_AnimateMenu       : constant quint := 1;
UI_FadeMenu          : constant quint := 2;
UI_AnimateCombo      : constant quint := 3;
UI_AnimateTooltip    : constant quint := 4;
UI_FadeTooltip       : constant quint := 5;
PlainText            : constant quint := 0;
RichText             : constant quint := 1;
AutoText             : constant quint := 2;
DockUnmanaged        : constant quint := 0;
DockTornOff          : constant quint := 1;
DockTop              : constant quint := 2;
DockBottom           : constant quint := 3;
DockRight            : constant quint := 4;
DockLeft             : constant quint := 5;
DockMinimized        : constant quint := 6;
Unmanaged            : constant quint := DockUnmanaged;
TornOff              : constant quint := DockTornOff;
Top                  : constant quint := DockTop;
Bottom               : constant quint := DockBottom;
Right                : constant quint := DockRight;
Left                 : constant quint := DockLeft;
Minimized            : constant quint := DockMinimized;
TextDate             : constant quint := 0;
ISODate              : constant quint := 1;
LocalDate            : constant quint := 2;
FixedColor           : constant quint := 0;
FixedPixmap          : constant quint := 1;
NoBackground         : constant quint := 2;
PaletteForeground    : constant quint := 3;
PaletteButton        : constant quint := 4;
PaletteLight         : constant quint := 5;
PaletteMidlight      : constant quint := 6;
PaletteDark          : constant quint := 7;
PaletteMid           : constant quint := 8;
PaletteText          : constant quint := 9;
PaletteBrightText    : constant quint := 10;
PaletteBase          : constant quint := 11;
PaletteBackground    : constant quint := 12;
PaletteShadow        : constant quint := 13;
PaletteHighlight     : constant quint := 14;
PaletteHighlightedText:constant quint := 15;
PaletteButtonText    : constant quint := 16;
PaletteLink          : constant quint := 17;
PaletteLinkVisited   : constant quint := 18;
X11ParentRelative    : constant quint := 19;
CaseSensitive        : constant quint := 16#00001#;
BeginsWith           : constant quint := 16#00002#;
EndsWith             : constant quint := 16#00004#;
Contains             : constant quint := 16#00008#;
ExactMatch           : constant quint := 16#00010#;

----------------------------------------------------------------------
SpecialAddressNull          : constant :=  0;
SpecialAddressBroadcast     : constant :=  1;
SpecialAddressLocalHost     : constant :=  2;
SpecialAddressLocalHostIPv6 : constant :=  3;
SpecialAddressAny           : constant :=  4;
SpecialAddressAnyIPv        : constant :=  5;
----------------------------------------------------------------------
procedure InitializePIntArray(GPP, GPL, SPL: void_Star);   
pragma Import(C,initializePIntArray,"initializePIntArray");
procedure initPWideStrings(CUPS, UOPS, LOPS, IPS, FPS: void_Star);
pragma Import(C,initPWideStrings, "initPWideStrings");

function QSysInfo_windowsVersion  return integer;
pragma Import(C,QSysInfo_windowsVersion , "QSysInfo_windowsVersion");
--------------------------------------------------------------------

 procedure get_Main_arguments;
 procedure print_Main_Arguments;
 function QtPoint(X,Y:Long_Integer) return TQPoint;
 ------------------------------------------------------------------
 function  QFlags_int_or(a,b:integer) return integer;
 pragma Import(C,QFlags_int_or, "QFlags_int_or");
 
 function  QFlags_qint64_or(a,b:qint64) return qint64;
 pragma Import(C,QFlags_qint64_or, "QFlags_qint64_or");
 
 function  QFlags_int_and(a,b:integer) return integer;
 pragma Import(C,QFlags_int_and, "QFlags_int_and");
 
 function  QFlags_qint64_and(a,b:qint64) return qint64;
 pragma Import(C,QFlags_qint64_and, "QFlags_qint64_and");
 
 function  QFlags_int_not(a,b:integer) return integer;
 pragma Import(C,QFlags_int_not, "QFlags_int_not");
 
 function  QFlags_qint64_not(a,b:qint64) return qint64;
 pragma Import(C,QFlags_qint64_not, "QFlags_qint64_not");

 function  QFlags_uint_or(a,b:quint) return quint;
 pragma Import(C,QFlags_uint_or, "QFlags_uint_or");
 
 function  QFlags_quint64_or(a,b:quint64) return quint64;
 pragma Import(C,QFlags_quint64_or, "QFlags_quint64_or");
 
 function  QFlags_uint_and(a,b:quint) return quint;
 pragma Import(C,QFlags_uint_and, "QFlags_uint_and");
 
 function  QFlags_quint64_and(a,b:quint64) return quint64;
 pragma Import(C,QFlags_quint64_and, "QFlags_quint64_and");
 
 function  QFlags_uint_not(a,b:quint) return quint;
 pragma Import(C,QFlags_uint_not, "QFlags_uint_not");
 
 function  QFlags_quint64_not(a,b:quint64) return quint64;
 pragma Import(C,QFlags_quint64_not, "QFlags_quint64_not");
 
 procedure QInvoke(command: builtin.zstring);
 pragma Import(C,QInvoke, "QInvoke");
 
 function tr(str:string) return QStringH;
 ------------------------------------------------------------------
 -- QGraphics  definition
 type customPaintH  is access procedure(painter:QPainterH;optin:QStyleOptionGraphicsItemH;widget:QWidgetH);
 pragma convention(C,customPaintH);
 
 type customBoundingRectCallbackH  is access function return QRectFH;
 pragma convention(C,customBoundingRectCallbackH);
 
 type customShapeCallbackH  is access function return QPainterPathH;
 pragma convention(C,customShapeCallbackH);
 
 type customMouseEventCallbackH  is access procedure(e:QEventH); 
 pragma convention(C,customMouseEventCallbackH);
 
 type ReloadFunctions is record
  customPaint              : customPaintH := null;
  myShapeProc              : customShapeCallbackH := null;
  myBoundingRectProc       : customBoundingRectCallbackH := null; 
  mousePressEventProc      : customMouseEventCallbackH := null;
  mouseReleaseEventProc    : customMouseEventCallbackH := null;
  mouseMoveEventProc       : customMouseEventCallbackH := null;
  mouseDoubleClickEventProc: customMouseEventCallbackH := null;
  myGeometryProc           : customBoundingRectCallbackH := null; 
 end record;
 pragma convention(C,ReloadFunctions);
 type QReloadFunctionsH is access all ReloadFunctions;

 ------------------------------------------------------------------------------------

-- global variables

 argc         : aliased int := builtin.argc;
 argv         : void_star   := builtin.argv;
 app          : QApplicationH := Null;
 rc           : integer := 0;
 isAppCreated : boolean := false;
 desktop      : QDesktopWidgetH;
 mainWindow   : QMainWindowH;
 mediaPlayer  : QMediaPlayerH := null;
 window       : QWidgetH;
 toplevel     : QWidgetH;
 debugger     : QListWidgetH;
 screenW      : integer ;
 screenH      : integer ;
 appCodec     : QTextCodecH := null;

 -- Debugging
 isDebugOn : boolean := false;
 procedure createDebugOutput(fileName: string := "qt5debug.prn");
 procedure addDebugInfo(str:string);

private
type QObjects is tagged null record;
end Qt;
