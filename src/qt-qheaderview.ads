--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2018                      บ
-- บ Copyright (C) 2012,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QHeaderView          is

subtype  QHeaderViewResizeMode is cardinal;

QHeaderViewInteractive      : constant QHeaderViewResizeMode := 0;
QHeaderViewStretch          : constant QHeaderViewResizeMode := 1;
QHeaderViewFixed            : constant QHeaderViewResizeMode := 2;
QHeaderViewResizeToContents : constant QHeaderViewResizeMode := 3;
QHeaderViewCustom           : constant QHeaderViewResizeMode := 2;

function QHeaderView_create(orientation: QtOrientation; parent: QWidgetH := null) return QHeaderViewH;   
pragma Import(C,QHeaderView_create,"QHeaderView_create");

procedure QHeaderView_destroy(handle: not null  QHeaderViewH);   
pragma Import(C,QHeaderView_destroy,"QHeaderView_destroy");

procedure QHeaderView_setModel(handle: not null  QHeaderViewH; model: QAbstractItemModelH);   
pragma Import(C,QHeaderView_setModel,"QHeaderView_setModel");

function QHeaderView_orientation(handle: not null  QHeaderViewH) return  QtOrientation;   
pragma Import(C,QHeaderView_orientation,"QHeaderView_orientation");

function QHeaderView_offset(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_offset,"QHeaderView_offset");

function QHeaderView_length(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_length,"QHeaderView_length");

function  QHeaderView_sizeHint(handle: not null  QHeaderViewH) return QSizeH;
pragma Import(C,QHeaderView_sizeHint,"QHeaderView_sizeHint");

function QHeaderView_sectionSizeHint(handle: not null  QHeaderViewH; logicalIndex: Integer) return  Integer;   
pragma Import(C,QHeaderView_sectionSizeHint,"QHeaderView_sectionSizeHint");

function QHeaderView_visualIndexAt(handle: not null  QHeaderViewH; position: Integer) return  Integer;   
pragma Import(C,QHeaderView_visualIndexAt,"QHeaderView_visualIndexAt");

function QHeaderView_logicalIndexAt(handle: not null  QHeaderViewH; position: Integer) return  Integer;    
pragma Import(C,QHeaderView_logicalIndexAt,"QHeaderView_logicalIndexAt");

function QHeaderView_logicalIndexAt2(handle: not null  QHeaderViewH; x: Integer; y: Integer) return  Integer;
pragma Import(C,QHeaderView_logicalIndexAt2,"QHeaderView_logicalIndexAt2");

function QHeaderView_logicalIndexAt3(handle: not null  QHeaderViewH; pos: QPointH) return  Integer;
pragma Import(C,QHeaderView_logicalIndexAt3,"QHeaderView_logicalIndexAt3");

function QHeaderView_sectionSize(handle: not null  QHeaderViewH; logicalIndex: Integer) return  Integer;   
pragma Import(C,QHeaderView_sectionSize,"QHeaderView_sectionSize");

function QHeaderView_sectionPosition(handle: not null  QHeaderViewH; logicalIndex: Integer) return  Integer;   
pragma Import(C,QHeaderView_sectionPosition,"QHeaderView_sectionPosition");

function QHeaderView_sectionViewportPosition(handle: not null  QHeaderViewH; logicalIndex: Integer) return  Integer;   
pragma Import(C,QHeaderView_sectionViewportPosition,"QHeaderView_sectionViewportPosition");

procedure QHeaderView_moveSection(handle: not null  QHeaderViewH; froms: Integer; tos: Integer);
pragma Import(C,QHeaderView_moveSection,"QHeaderView_moveSection");

procedure QHeaderView_swapSections(handle: not null  QHeaderViewH; first: Integer; second: Integer);   
pragma Import(C,QHeaderView_swapSections,"QHeaderView_swapSections");

procedure QHeaderView_resizeSection(handle: not null  QHeaderViewH; logicalIndex: Integer; size: Integer);   
pragma Import(C,QHeaderView_resizeSection,"QHeaderView_resizeSection");

procedure QHeaderView_resizeSections(handle: not null  QHeaderViewH; mode: QHeaderViewResizeMode);   
pragma Import(C,QHeaderView_resizeSections,"QHeaderView_resizeSections");

function QHeaderView_isSectionHidden(handle: not null  QHeaderViewH; logicalIndex: Integer) return  Boolean;   
pragma Import(C,QHeaderView_isSectionHidden,"QHeaderView_isSectionHidden");

procedure QHeaderView_setSectionHidden(handle: not null  QHeaderViewH; logicalIndex: Integer; hide: Boolean);   
pragma Import(C,QHeaderView_setSectionHidden,"QHeaderView_setSectionHidden");

function QHeaderView_hiddenSectionCount(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_hiddenSectionCount,"QHeaderView_hiddenSectionCount");

procedure QHeaderView_hideSection(handle: not null  QHeaderViewH; logicalIndex: Integer);   
pragma Import(C,QHeaderView_hideSection,"QHeaderView_hideSection");

procedure QHeaderView_showSection(handle: not null  QHeaderViewH; logicalIndex: Integer);   
pragma Import(C,QHeaderView_showSection,"QHeaderView_showSection");

function QHeaderView_count(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_count,"QHeaderView_count");

function QHeaderView_visualIndex(handle: not null  QHeaderViewH; logicalIndex: Integer) return  Integer;   
pragma Import(C,QHeaderView_visualIndex,"QHeaderView_visualIndex");

function QHeaderView_logicalIndex(handle: not null  QHeaderViewH; visualIndex: Integer) return  Integer;   
pragma Import(C,QHeaderView_logicalIndex,"QHeaderView_logicalIndex");

 procedure QHeaderView_setVisible(handle:QHeaderViewH;isVisible:boolean);
 pragma Import(C,QHeaderView_setVisible, "QHeaderView_setVisible");
 
 procedure QHeaderView_setResizeContentsPrecision(handle:QHeaderViewH;precision:integer);
 pragma Import(C,QHeaderView_setResizeContentsPrecision, "QHeaderView_setResizeContentsPrecision");
 
 function  QHeaderView_resizeContentsPrecision(handle:QHeaderViewH) return integer;
 pragma Import(C,QHeaderView_resizeContentsPrecision, "QHeaderView_resizeContentsPrecision");

procedure QHeaderView_setHighlightSections(handle: not null  QHeaderViewH; highlight: Boolean);   
pragma Import(C,QHeaderView_setHighlightSections,"QHeaderView_setHighlightSections");

function QHeaderView_highlightSections(handle: not null  QHeaderViewH) return  Boolean;   
pragma Import(C,QHeaderView_highlightSections,"QHeaderView_highlightSections");

function QHeaderView_stretchSectionCount(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_stretchSectionCount,"QHeaderView_stretchSectionCount");

procedure QHeaderView_setSortIndicatorShown(handle: not null  QHeaderViewH; show: Boolean);   
pragma Import(C,QHeaderView_setSortIndicatorShown,"QHeaderView_setSortIndicatorShown");

function QHeaderView_isSortIndicatorShown(handle: not null  QHeaderViewH) return  Boolean;   
pragma Import(C,QHeaderView_isSortIndicatorShown,"QHeaderView_isSortIndicatorShown");

procedure QHeaderView_setSortIndicator(handle: not null  QHeaderViewH; logicalIndex: Integer; order: QtSortOrder);   
pragma Import(C,QHeaderView_setSortIndicator,"QHeaderView_setSortIndicator");

function QHeaderView_sortIndicatorSection(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_sortIndicatorSection,"QHeaderView_sortIndicatorSection");

function QHeaderView_sortIndicatorOrder(handle: not null  QHeaderViewH) return  QtSortOrder;   
pragma Import(C,QHeaderView_sortIndicatorOrder,"QHeaderView_sortIndicatorOrder");

function QHeaderView_stretchLastSection(handle: not null  QHeaderViewH) return  Boolean;   
pragma Import(C,QHeaderView_stretchLastSection,"QHeaderView_stretchLastSection");

procedure QHeaderView_setStretchLastSection(handle: not null  QHeaderViewH; stretch: Boolean);   
pragma Import(C,QHeaderView_setStretchLastSection,"QHeaderView_setStretchLastSection");

function QHeaderView_cascadingSectionResizes(handle: not null  QHeaderViewH) return  Boolean;   
pragma Import(C,QHeaderView_cascadingSectionResizes,"QHeaderView_cascadingSectionResizes");

procedure QHeaderView_setCascadingSectionResizes(handle: not null  QHeaderViewH; enable: Boolean);   
pragma Import(C,QHeaderView_setCascadingSectionResizes,"QHeaderView_setCascadingSectionResizes");

function QHeaderView_defaultSectionSize(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_defaultSectionSize,"QHeaderView_defaultSectionSize");

procedure QHeaderView_setDefaultSectionSize(handle: not null  QHeaderViewH; size: Integer);   
pragma Import(C,QHeaderView_setDefaultSectionSize,"QHeaderView_setDefaultSectionSize");

function QHeaderView_minimumSectionSize(handle: not null  QHeaderViewH) return  Integer;   
pragma Import(C,QHeaderView_minimumSectionSize,"QHeaderView_minimumSectionSize");

procedure QHeaderView_setMinimumSectionSize(handle: not null  QHeaderViewH; size: Integer);   
pragma Import(C,QHeaderView_setMinimumSectionSize,"QHeaderView_setMinimumSectionSize");

function QHeaderView_defaultAlignment(handle: not null  QHeaderViewH) return  QtAlignment;   
pragma Import(C,QHeaderView_defaultAlignment,"QHeaderView_defaultAlignment");

procedure QHeaderView_setDefaultAlignment(handle: not null  QHeaderViewH; alignment: QtAlignment);   
pragma Import(C,QHeaderView_setDefaultAlignment,"QHeaderView_setDefaultAlignment");

procedure QHeaderView_doItemsLayout(handle: not null  QHeaderViewH);   
pragma Import(C,QHeaderView_doItemsLayout,"QHeaderView_doItemsLayout");

function QHeaderView_sectionsMoved(handle: not null  QHeaderViewH) return  Boolean;   
pragma Import(C,QHeaderView_sectionsMoved,"QHeaderView_sectionsMoved");

function QHeaderView_sectionsHidden(handle: not null  QHeaderViewH) return  Boolean;   
pragma Import(C,QHeaderView_sectionsHidden,"QHeaderView_sectionsHidden");

function  QHeaderView_saveState(handle: not null  QHeaderViewH) return QByteArrayH;
pragma Import(C,QHeaderView_saveState,"QHeaderView_saveState");

function QHeaderView_restoreState(handle: not null  QHeaderViewH; state: QByteArrayH) return  Boolean;   
pragma Import(C,QHeaderView_restoreState,"QHeaderView_restoreState");

procedure QHeaderView_reset(handle: not null  QHeaderViewH);   
pragma Import(C,QHeaderView_reset,"QHeaderView_reset");

procedure QHeaderView_setOffset(handle: not null  QHeaderViewH; offset: Integer);   
pragma Import(C,QHeaderView_setOffset,"QHeaderView_setOffset");

procedure QHeaderView_setOffsetToSectionPosition(handle: not null  QHeaderViewH; visualIndex: Integer);   
pragma Import(C,QHeaderView_setOffsetToSectionPosition,"QHeaderView_setOffsetToSectionPosition");

procedure QHeaderView_setOffsetToLastSection(handle: not null  QHeaderViewH);   
pragma Import(C,QHeaderView_setOffsetToLastSection,"QHeaderView_setOffsetToLastSection");

procedure QHeaderView_headerDataChanged(handle: not null  QHeaderViewH; orientation: QtOrientation; logicalFirst: Integer; logicalLast: Integer);   
pragma Import(C,QHeaderView_headerDataChanged,"QHeaderView_headerDataChanged");

type QHeaderView_sectionMovedEvent is access procedure (logicalIndex: Integer; oldVisualIndex: Integer; newVisualIndex: Integer);
pragma Convention(C, QHeaderView_sectionMovedEvent);

type QHeaderView_sectionResizedEvent is access procedure (logicalIndex: Integer; oldSize: Integer; newSize: Integer);
pragma Convention(C, QHeaderView_sectionResizedEvent);

type QHeaderView_sectionPressedEvent is access procedure (logicalIndex: Integer);
pragma Convention(C, QHeaderView_sectionPressedEvent);

type QHeaderView_sectionClickedEvent is access procedure (logicalIndex: Integer);
pragma Convention(C, QHeaderView_sectionClickedEvent);

type QHeaderView_sectionEnteredEvent is access procedure (logicalIndex: Integer);
pragma Convention(C, QHeaderView_sectionEnteredEvent);

type QHeaderView_sectionDoubleClickedEvent is access procedure (logicalIndex: Integer);
pragma Convention(C, QHeaderView_sectionDoubleClickedEvent);

type QHeaderView_sectionCountChangedEvent is access procedure (oldCount: Integer; newCount: Integer);
pragma Convention(C, QHeaderView_sectionCountChangedEvent);

type QHeaderView_sectionHandleDoubleClickedEvent is access procedure (logicalIndex: Integer);
pragma Convention(C, QHeaderView_sectionHandleDoubleClickedEvent);

type QHeaderView_sectionAutoResizeEvent is access procedure (logicalIndex: Integer; mode: QHeaderViewResizeMode);
pragma Convention(C, QHeaderView_sectionAutoResizeEvent);

type QHeaderView_geometriesChangedEvent is access procedure ;
pragma Convention(C, QHeaderView_geometriesChangedEvent);

type QHeaderView_sortIndicatorChangedEvent is access procedure (logicalIndex: Integer; order: QtSortOrder);
pragma Convention(C, QHeaderView_sortIndicatorChangedEvent);
 
 procedure QHeaderView_signal_slot_sectionMoved(handle: not null QHeaderViewH; hook:QHeaderView_sectionMovedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionMoved, "QHeaderView_signal_slot_sectionMoved");
 
 procedure QHeaderView_signal_slot_sectionResized(handle: not null QHeaderViewH; hook:QHeaderView_sectionResizedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionResized, "QHeaderView_signal_slot_sectionResized");
 
 procedure QHeaderView_signal_slot_sectionPressed(handle: not null QHeaderViewH; hook:QHeaderView_sectionPressedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionPressed, "QHeaderView_signal_slot_sectionPressed");
 
 procedure QHeaderView_signal_slot_sectionClicked(handle: not null QHeaderViewH; hook:QHeaderView_sectionClickedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionClicked, "QHeaderView_signal_slot_sectionClicked");
 
 procedure QHeaderView_signal_slot_sectionEntered(handle: not null QHeaderViewH; hook:QHeaderView_sectionEnteredEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionEntered, "QHeaderView_signal_slot_sectionEntered");
 
 procedure QHeaderView_signal_slot_sectionDoubleClicked(handle: not null QHeaderViewH; hook:QHeaderView_sectionDoubleClickedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionDoubleClicked, "QHeaderView_signal_slot_sectionDoubleClicked");
 
 procedure QHeaderView_signal_slot_sectionCountChanged(handle: not null QHeaderViewH; hook:QHeaderView_sectionCountChangedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionCountChanged, "QHeaderView_signal_slot_sectionCountChanged");
 
 procedure QHeaderView_signal_slot_sectionHandleDoubleClicked(handle: not null QHeaderViewH; hook:QHeaderView_sectionHandleDoubleClickedEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionHandleDoubleClicked, "QHeaderView_signal_slot_sectionHandleDoubleClicked");
 
 procedure QHeaderView_signal_slot_sectionAutoResize(handle: not null QHeaderViewH; hook:QHeaderView_sectionAutoResizeEvent);
 pragma Import(C,QHeaderView_signal_slot_sectionAutoResize, "QHeaderView_signal_slot_sectionAutoResize");
 
 procedure QHeaderView_signal_slot_geometriesChanged(handle: not null QHeaderViewH; hook:QHeaderView_geometriesChangedEvent);
 pragma Import(C,QHeaderView_signal_slot_geometriesChanged, "QHeaderView_signal_slot_geometriesChanged");
 
 procedure QHeaderView_signal_slot_sortIndicatorChanged(handle: not null QHeaderViewH; hook:QHeaderView_sortIndicatorChangedEvent);
 pragma Import(C,QHeaderView_signal_slot_sortIndicatorChanged, "QHeaderView_signal_slot_sortIndicatorChanged");

 procedure QHeaderView_setSectionsMovable(handle: not null QHeaderViewH;movable:boolean);
 pragma Import(C,QHeaderView_setSectionsMovable, "QHeaderView_setSectionsMovable");
 
 function  QHeaderView_sectionsMovable(handle: not null QHeaderViewH) return boolean;
 pragma Import(C,QHeaderView_sectionsMovable, "QHeaderView_sectionsMovable");
 
 procedure QHeaderView_setSectionsClickable(handle: not null QHeaderViewH; clickable:boolean);
 pragma Import(C,QHeaderView_setSectionsClickable, "QHeaderView_setSectionsClickable");
 
 function  QHeaderView_sectionsClickable(handle: not null QHeaderViewH) return boolean;
 pragma Import(C,QHeaderView_sectionsClickable, "QHeaderView_sectionsClickable");
 
 function  QHeaderView_sectionResizeMode(handle: not null QHeaderViewH; logicalIndex:integer) return QHeaderViewResizeMode;
 pragma Import(C,QHeaderView_sectionResizeMode, "QHeaderView_sectionResizeMode");
 
 procedure QHeaderView_setSectionResizeMode(handle: not null QHeaderViewH;mode:QHeaderViewResizeMode);
 pragma Import(C,QHeaderView_setSectionResizeMode, "QHeaderView_setSectionResizeMode");
 
 procedure QHeaderView_setSectionResizeMode2(handle: not null QHeaderViewH; logicalIndex:integer; mode:QHeaderViewResizeMode);
 pragma Import(C,QHeaderView_setSectionResizeMode2, "QHeaderView_setSectionResizeMode2");

 procedure QHeaderView_setFirstSectionMovable(handle:not null QHeaderViewH;movable:boolean);
 pragma Import(C,QHeaderView_setFirstSectionMovable, "QHeaderView_setFirstSectionMovable");
 
 function  QHeaderView_isFirstSectionMovable(handle:not null QHeaderViewH) return boolean;
 pragma Import(C,QHeaderView_isFirstSectionMovable, "QHeaderView_isFirstSectionMovable");
 
 procedure QHeaderView_resetDefaultSectionSize(handle:not null QHeaderViewH);
 pragma Import(C,QHeaderView_resetDefaultSectionSize, "QHeaderView_resetDefaultSectionSize");
 
 function  QHeaderView_maximumSectionSize(handle:not null QHeaderViewH) return integer;
 pragma Import(C,QHeaderView_maximumSectionSize, "QHeaderView_maximumSectionSize");
 
 procedure QHeaderView_setMaximumSectionSize(handle:not null QHeaderViewH;size:integer);
 pragma Import(C,QHeaderView_setMaximumSectionSize, "QHeaderView_setMaximumSectionSize");
 
-----------------------------------------------------------------------
 function QHeaderView_logicalIndexAt(handle: not null  QHeaderViewH; x: Integer; y: Integer) return  Integer;
 function QHeaderView_logicalIndexAt(handle: not null  QHeaderViewH; pos: QPointH) return  Integer;
 procedure QHeaderView_setSectionResizeMode(handle: not null QHeaderViewH;logicalIndex:integer; mode:QHeaderViewResizeMode);

end Qt.QHeaderView;
