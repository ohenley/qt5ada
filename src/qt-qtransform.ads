--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015                 บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QTransform           is

type QTransformTransformationType is (
    QTransformTxNone,
    QTransformTxTranslate,
    QTransformTxScale,
    QTransformTxRotate,
    QTransformTxShear,
    QTransformTxProject);
pragma Convention(C,QTransformTransformationType);

for QTransformTransformationType use (
    QTransformTxNone => 0,
    QTransformTxTranslate => 1,
    QTransformTxScale => 2,
    QTransformTxRotate => 4,
    QTransformTxShear => 8,
    QTransformTxProject => 16#10# );

function QTransform_create return  QTransformH;   
pragma Import(C,QTransform_create,"QTransform_create");

procedure QTransform_destroy(handle: not null  QTransformH);  
pragma Import(C,QTransform_destroy,"QTransform_destroy");

function QTransform_create2(h11: Double; h12: Double; h13: Double; h21: Double; h22: Double; h23: Double; h31: Double; h32: Double; h33: Double := 1.0) return QTransformH;
pragma Import(C,QTransform_create2,"QTransform_create2");

function QTransform_create3(h11: Double; h12: Double; h13: Double; h21: Double; h22: Double; h23: Double) return  QTransformH;
pragma Import(C,QTransform_create3,"QTransform_create3");

function QTransform_create4(mtx: QMatrixH) return  QTransformH;
pragma Import(C,QTransform_create4,"QTransform_create4");

function QTransform_isAffine(handle: not null  QTransformH) return  Boolean;  
pragma Import(C,QTransform_isAffine,"QTransform_isAffine");

function QTransform_isIdentity(handle: not null  QTransformH) return  Boolean;  
pragma Import(C,QTransform_isIdentity,"QTransform_isIdentity");

function QTransform_isInvertible(handle: not null  QTransformH) return  Boolean;  
pragma Import(C,QTransform_isInvertible,"QTransform_isInvertible");

function QTransform_isScaling(handle: not null  QTransformH) return  Boolean;  
pragma Import(C,QTransform_isScaling,"QTransform_isScaling");

function QTransform_isRotating(handle: not null  QTransformH) return  Boolean;  
pragma Import(C,QTransform_isRotating,"QTransform_isRotating");

function QTransform_isTranslating(handle: not null  QTransformH) return  Boolean;  
pragma Import(C,QTransform_isTranslating,"QTransform_isTranslating");

function QTransform_type(handle: not null  QTransformH) return  QTransformTransformationType;  
pragma Import(C,QTransform_type,"QTransform_type");

function QTransform_determinant(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_determinant,"QTransform_determinant");

function QTransform_det(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_det,"QTransform_det");

function QTransform_m11(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m11,"QTransform_m11");

function QTransform_m12(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m12,"QTransform_m12");

function QTransform_m13(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m13,"QTransform_m13");

function QTransform_m21(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m21,"QTransform_m21");

function QTransform_m22(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m22,"QTransform_m22");

function QTransform_m23(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m23,"QTransform_m23");

function QTransform_m31(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m31,"QTransform_m31");

function QTransform_m32(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m32,"QTransform_m32");

function QTransform_m33(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_m33,"QTransform_m33");

function QTransform_dx(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_dx,"QTransform_dx");

function QTransform_dy(handle: not null  QTransformH) return  Double;  
pragma Import(C,QTransform_dy,"QTransform_dy");

procedure QTransform_setMatrix(handle: not null  QTransformH; m11: Double; m12: Double; m13: Double; m21: Double; m22: Double; m23: Double; m31: Double; m32: Double; m33: Double);  
pragma Import(C,QTransform_setMatrix,"QTransform_setMatrix");

function  QTransform_inverted(handle: not null  QTransformH; invertible: PBoolean := null) return QTransformH;
pragma Import(C,QTransform_inverted,"QTransform_inverted");

function  QTransform_adjoint(handle: not null  QTransformH) return QTransformH;
pragma Import(C,QTransform_adjoint,"QTransform_adjoint");

function  QTransform_transposed(handle: not null  QTransformH) return QTransformH;
pragma Import(C,QTransform_transposed,"QTransform_transposed");

function QTransform_translate(handle: not null  QTransformH; dx: Double; dy: Double) return  QTransformH;  
pragma Import(C,QTransform_translate,"QTransform_translate");

function QTransform_scale(handle: not null  QTransformH; sx: Double; sy: Double) return  QTransformH;  
pragma Import(C,QTransform_scale,"QTransform_scale");

function QTransform_shear(handle: not null  QTransformH; sh: Double; sv: Double) return  QTransformH;  
pragma Import(C,QTransform_shear,"QTransform_shear");

function QTransform_rotate(handle: not null  QTransformH; a: Double; axis: QtAxis := QtZAxis) return QTransformH;  
pragma Import(C,QTransform_rotate,"QTransform_rotate");

function QTransform_rotateRadians(handle: not null  QTransformH; a: Double; axis: QtAxis := QtZAxis) return QTransformH;  
pragma Import(C,QTransform_rotateRadians,"QTransform_rotateRadians");

function QTransform_squareToQuad(square: QPolygonFH; result: QTransformH) return  Boolean;  
pragma Import(C,QTransform_squareToQuad,"QTransform_squareToQuad");

function QTransform_quadToSquare(quad: QPolygonFH; result: QTransformH) return  Boolean;  
pragma Import(C,QTransform_quadToSquare,"QTransform_quadToSquare");

function QTransform_quadToQuad(one: QPolygonFH; two: QPolygonFH; result: QTransformH) return  Boolean;  
pragma Import(C,QTransform_quadToQuad,"QTransform_quadToQuad");

procedure QTransform_reset(handle: not null  QTransformH);  
pragma Import(C,QTransform_reset,"QTransform_reset");

function  QTransform_map(handle: not null  QTransformH; p: QPointH) return QPointH;
pragma Import(C,QTransform_map,"QTransform_map");

function  QTransform_map2(handle: not null  QTransformH; p: QPointFH) return  QPointFH;
pragma Import(C,QTransform_map2,"QTransform_map2");

function  QTransform_map3(handle: not null  QTransformH; l: QLineH) return  QLineH;
pragma Import(C,QTransform_map3,"QTransform_map3");

function  QTransform_map4(handle: not null  QTransformH; l: QLineFH) return  QLineFH;
pragma Import(C,QTransform_map4,"QTransform_map4");

function  QTransform_map5(handle: not null  QTransformH; a: QPolygonFH) return QPolygonFH;
pragma Import(C,QTransform_map5,"QTransform_map5");

function  QTransform_map6(handle: not null  QTransformH; a: QPolygonH) return QPolygonH;
pragma Import(C,QTransform_map6,"QTransform_map6");

function  QTransform_map7(handle: not null  QTransformH; r: QRegionH) return QRegionH;
pragma Import(C,QTransform_map7,"QTransform_map7");

function  QTransform_map8(handle: not null  QTransformH; p: QPainterPathH) return QPainterPathH;
pragma Import(C,QTransform_map8,"QTransform_map8");

function  QTransform_mapToPolygon(handle: not null  QTransformH; r: QRectH) return  QPolygonH;
pragma Import(C,QTransform_mapToPolygon,"QTransform_mapToPolygon");

function  QTransform_mapRect(handle: not null  QTransformH; p1: QRectH) return QRectH;
pragma Import(C,QTransform_mapRect,"QTransform_mapRect");

function  QTransform_mapRect2(handle: not null  QTransformH; p1: QRectFH) return QRectFH;
pragma Import(C,QTransform_mapRect2,"QTransform_mapRect2");

procedure QTransform_map9(handle: not null  QTransformH; x: Integer; y: Integer; tx: PInteger; ty: PInteger);
pragma Import(C,QTransform_map9,"QTransform_map9");

procedure QTransform_map10(handle: not null  QTransformH; x: Double; y: Double; tx: PDouble; ty: PDouble);
pragma Import(C,QTransform_map10,"QTransform_map10");

function QTransform_toAffine(handle: not null  QTransformH) return  QMatrixH;  
pragma Import(C,QTransform_toAffine,"QTransform_toAffine");

type QAbstractItemDelegateEndEditHint is (QAbstractItemDelegateNoHint, QAbstractItemDelegateEditNextItem, QAbstractItemDelegateEditPreviousItem, QAbstractItemDelegateSubmitModelCache, QAbstractItemDelegateRevertModelCache );

procedure QAbstractItemDelegate_paint(handle: not null  QAbstractItemDelegateH; painter: QPainterH; option: QStyleOptionViewItemH; index: QModelIndexH);  
pragma Import(C,QAbstractItemDelegate_paint,"QAbstractItemDelegate_paint");

function  QAbstractItemDelegate_sizeHint(handle: not null  QAbstractItemDelegateH; option: QStyleOptionViewItemH; index: QModelIndexH) return QSizeH;
pragma Import(C,QAbstractItemDelegate_sizeHint,"QAbstractItemDelegate_sizeHint");

function QAbstractItemDelegate_createEditor(handle: not null  QAbstractItemDelegateH; parent: QWidgetH; option: QStyleOptionViewItemH; index: QModelIndexH) return  QWidgetH;  
pragma Import(C,QAbstractItemDelegate_createEditor,"QAbstractItemDelegate_createEditor");

procedure QAbstractItemDelegate_setEditorData(handle: not null  QAbstractItemDelegateH; editor: QWidgetH; index: QModelIndexH);  
pragma Import(C,QAbstractItemDelegate_setEditorData,"QAbstractItemDelegate_setEditorData");

procedure QAbstractItemDelegate_setModelData(handle: not null  QAbstractItemDelegateH; editor: QWidgetH; model: QAbstractItemModelH; index: QModelIndexH);  
pragma Import(C,QAbstractItemDelegate_setModelData,"QAbstractItemDelegate_setModelData");

procedure QAbstractItemDelegate_updateEditorGeometry(handle: not null  QAbstractItemDelegateH; editor: QWidgetH; option: QStyleOptionViewItemH; index: QModelIndexH);  
pragma Import(C,QAbstractItemDelegate_updateEditorGeometry,"QAbstractItemDelegate_updateEditorGeometry");

function QAbstractItemDelegate_editorEvent(handle: not null  QAbstractItemDelegateH; event: QEventH; model: QAbstractItemModelH; option: QStyleOptionViewItemH; index: QModelIndexH) return  Boolean;  
pragma Import(C,QAbstractItemDelegate_editorEvent,"QAbstractItemDelegate_editorEvent");

function   QAbstractItemDelegate_elidedText(fontMetrics: QFontMetricsH; width: Integer; mode: QtTextElideMode; text: QStringH) return QStringH;
pragma Import(C,QAbstractItemDelegate_elidedText,"QAbstractItemDelegate_elidedText");

function QAbstractItemDelegate_helpEvent(handle: not null  QAbstractItemDelegateH; event: QHelpEventH; view: QAbstractItemViewH; option: QStyleOptionViewItemH; index: QModelIndexH) return  Boolean;  
pragma Import(C,QAbstractItemDelegate_helpEvent,"QAbstractItemDelegate_helpEvent");

type QAbstractItemDelegate_commitData_Event is access procedure (editor: QWidgetH);
pragma convention(C,QAbstractItemDelegate_commitData_Event);
type QAbstractItemDelegate_closeEditor_Event is access procedure (editor: QWidgetH; hint: QAbstractItemDelegateEndEditHint := QAbstractItemDelegateNoHint);
pragma convention(C,QAbstractItemDelegate_closeEditor_Event);
type QAbstractItemDelegate_closeEditor2_Event is access procedure (editor: QWidgetH);
pragma convention(C,QAbstractItemDelegate_closeEditor2_Event);

type customPaintProc is access function(painter:QPainterH;option: QStyleOptionViewItemH; index: QModelIndexH) return boolean;
pragma convention(C,customPaintProc);

type customCreateEditorProc is access function(parent:QWidgetH;option: QStyleOptionViewItemH;index: QModelIndexH) return QWidgetH;
pragma convention(C,customCreateEditorProc);

type customSetEditorDataProc is access function(editor: QWidgetH;index:QModelIndexH) return boolean;
pragma convention(C,customSetEditorDataProc);

type customSetModelDataProc is access  function(editor:QWidgetH; model:QAbstractItemModelH; index: QModelIndexH) return boolean;
pragma convention(C,customSetModelDataProc);

type customSizeHintProc is access function(option:QStyleOptionViewItemH;index: QModelIndexH) return QSizeH; 
pragma convention(C,customSizeHintProc);

type customUpdateEditorGeometryProc is access function(editor:QWidgetH;option: QStyleOptionViewItemH;index: QModelIndexH) return boolean;
pragma convention(C,customUpdateEditorGeometryProc);

function QItemDelegate_create(parent: QObjectH := null) return QItemDelegateH;  
pragma Import(C,QItemDelegate_create,"QItemDelegate_create");

function QItemDelegate_createWithCustomEventFilter(parent: QObjectH := null;f:TEventFilterMethod) return QItemDelegateH;  
pragma Import(C,QItemDelegate_createWithCustomEventFilter,"QItemDelegate_create2");

 function  QItemDelegate_createWithCustomPaint(parent:QObjectH;customPaint:customPaintProc) return QItemDelegateH;
 pragma Import(C,QItemDelegate_createWithCustomPaint, "QItemDelegate_create3");

procedure QItemDelegate_destroy(handle: not null  QItemDelegateH);  
pragma Import(C,QItemDelegate_destroy,"QItemDelegate_destroy");

function QItemDelegate_hasClipping(handle: not null  QItemDelegateH) return  Boolean;  
pragma Import(C,QItemDelegate_hasClipping,"QItemDelegate_hasClipping");

procedure QItemDelegate_setClipping(handle: not null  QItemDelegateH; clip: Boolean);  
pragma Import(C,QItemDelegate_setClipping,"QItemDelegate_setClipping");

procedure QItemDelegate_paint(handle: not null  QItemDelegateH; painter: QPainterH; option: QStyleOptionViewItemH; index: QModelIndexH);  
pragma Import(C,QItemDelegate_paint,"QItemDelegate_paint");

function  QItemDelegate_sizeHint(handle: not null  QItemDelegateH; option: QStyleOptionViewItemH; index: QModelIndexH) return QSizeH;
pragma Import(C,QItemDelegate_sizeHint,"QItemDelegate_sizeHint");

function QItemDelegate_createEditor(handle: not null  QItemDelegateH; parent: QWidgetH; option: QStyleOptionViewItemH; index: QModelIndexH) return  QWidgetH;  
pragma Import(C,QItemDelegate_createEditor,"QItemDelegate_createEditor");

procedure QItemDelegate_setEditorData(handle: not null  QItemDelegateH; editor: QWidgetH; index: QModelIndexH);  
pragma Import(C,QItemDelegate_setEditorData,"QItemDelegate_setEditorData");

procedure QItemDelegate_setModelData(handle: not null  QItemDelegateH; editor: QWidgetH; model: QAbstractItemModelH; index: QModelIndexH);  
pragma Import(C,QItemDelegate_setModelData,"QItemDelegate_setModelData");

procedure QItemDelegate_updateEditorGeometry(handle: not null  QItemDelegateH; editor: QWidgetH; option: QStyleOptionViewItemH; index: QModelIndexH);  
pragma Import(C,QItemDelegate_updateEditorGeometry,"QItemDelegate_updateEditorGeometry");

function QItemDelegate_itemEditorFactory(handle: not null  QItemDelegateH) return  QItemEditorFactoryH;  
pragma Import(C,QItemDelegate_itemEditorFactory,"QItemDelegate_itemEditorFactory");

procedure QItemDelegate_setItemEditorFactory(handle: not null  QItemDelegateH; factory: QItemEditorFactoryH);  
pragma Import(C,QItemDelegate_setItemEditorFactory,"QItemDelegate_setItemEditorFactory");

 procedure QItemDelegate_drawDisplay(handle:QItemDelegateH;painter:QPainterH;option:QStyleOptionViewItemH;rect:QRectH;text:QStringH);
 pragma Import(C,QItemDelegate_drawDisplay, "QItemDelegate_drawDisplay");
 
 procedure QItemDelegate_drawDecoration(handle:QItemDelegateH;painter:QPainterH;option:QStyleOptionViewItemH;rect:QRectH;pixmap:QPixmapH);
 pragma Import(C,QItemDelegate_drawDecoration, "QItemDelegate_drawDecoration");
 
 procedure QItemDelegate_drawFocus(handle:QItemDelegateH;painter:QPainterH; option:QStyleOptionViewItemH;rect:QRectH);
 pragma Import(C,QItemDelegate_drawFocus, "QItemDelegate_drawFocus");
 
 procedure QItemDelegate_drawCheck(handle:QItemDelegateH;painter:QPainterH;option:QStyleOptionViewItemH; rect:QRectH;state:QtCheckState);
 pragma Import(C,QItemDelegate_drawCheck, "QItemDelegate_drawCheck");
 
 procedure QItemDelegate_drawBackground(handle:QItemDelegateH;painter:QPainterH; option:QStyleOptionViewItemH;index:QModelIndexH);
 pragma Import(C,QItemDelegate_drawBackground, "QItemDelegate_drawBackground");
 
 procedure QItemDelegate_doLayout(handle:QItemDelegateH;option:QStyleOptionViewItemH;checkRect,iconRect,textRect:QRectH;hint:boolean);
 pragma Import(C,QItemDelegate_doLayout, "QItemDelegate_doLayout");
 
 function  QItemDelegate_rect(handle:QItemDelegateH; option:QStyleOptionViewItemH;index:QModelIndexH; role:integer) return QRectH;
 pragma Import(C,QItemDelegate_rect, "QItemDelegate_rect");
 
 function  QItemDelegate_eventFilter(handle:QItemDelegateH;object:QObjectH;e: QEventH) return boolean;
 pragma Import(C,QItemDelegate_eventFilter, "QItemDelegate_eventFilter");
 
 function  QItemDelegate_editorEvent(handle:QItemDelegateH;e:QEventH;model: QAbstractItemModelH; option:QStyleOptionViewItemH;index:QModelIndexH) return boolean;
 pragma Import(C,QItemDelegate_editorEvent, "QItemDelegate_editorEvent");
 
 function  QItemDelegate_setOptions(handle:QItemDelegateH; index:QModelIndexH; option:QStyleOptionViewItemH) return QStyleOptionViewItemH;
 pragma Import(C,QItemDelegate_setOptions, "QItemDelegate_setOptions");
 
 function  QItemDelegate_decoration(handle:QItemDelegateH; option:QStyleOptionViewItemH;variant:QVariantH) return QPixmapH;
 pragma Import(C,QItemDelegate_decoration, "QItemDelegate_decoration");
 
 function  QItemDelegate_selected(handle:QItemDelegateH;pixmap: QPixmapH;palette: QPaletteH;enabled: boolean) return QPixmapH;
 pragma Import(C,QItemDelegate_selected, "QItemDelegate_selected");
 
 function  QItemDelegate_doCheck(handle:QItemDelegateH; option:QStyleOptionViewItemH;bounding:QRectH;variant:QVariantH) return QRectH;
 pragma Import(C,QItemDelegate_doCheck, "QItemDelegate_doCheck");
 
 function  QItemDelegate_textRectangle(handle:QItemDelegateH;painter:QPainterH;  rect:QRectH;font: QFontH;text: QStringH) return QRectH;
 pragma Import(C,QItemDelegate_textRectangle, "QItemDelegate_textRectangle");

 -- ATTENTION !!! To use default delegate methods need return from custom functions FALSE or NULL

 procedure QItemDelegate_setUserPaintProc(handle:not null QItemDelegateH;customPaint:customPaintProc);
 pragma Import(C,QItemDelegate_setUserPaintProc, "QItemDelegate_setUserPaintProc");

 procedure QItemDelegate_setUserCreateEditorProc(handle:not null QItemDelegateH;customCreateEditor:customCreateEditorProc);
 pragma Import(C,QItemDelegate_setUserCreateEditorProc, "QItemDelegate_setUserCreateEditorProc");
 
 procedure QItemDelegate_setUserEditorDataProc(handle:not null QItemDelegateH;customSetEditorData:customSetEditorDataProc);
 pragma Import(C,QItemDelegate_setUserEditorDataProc, "QItemDelegate_setUserEditorDataProc");
 
 procedure QItemDelegate_setUserModelDataProc(handle:not null QItemDelegateH;customSetModelData:customSetModelDataProc);
 pragma Import(C,QItemDelegate_setUserModelDataProc, "QItemDelegate_setUserModelDataProc");

 procedure QItemDelegate_setUserSizeHintProc(handle:not null QItemDelegateH;customSizeHint: customSizeHintProc);
 pragma Import(C,QItemDelegate_setUserSizeHintProc, "QItemDelegate_setUserSizeHintProc");
 
 procedure QItemDelegate_setUserUpdateEditorGeometryProc(handle:not null QItemDelegateH; customUpdateEditorGeometry:customUpdateEditorGeometryProc);
 pragma Import(C,QItemDelegate_setUserUpdateEditorGeometryProc, "QItemDelegate_setUserUpdateEditorGeometryProc");
 
subtype QHookH is void_Star;

function QLCLItemDelegate_create(parent: QObjectH := null) return QLCLItemDelegateH;  
pragma Import(C,QLCLItemDelegate_create,"QLCLItemDelegate_create");

procedure QLCLItemDelegate_destroy(handle: not null  QLCLItemDelegateH);  
pragma Import(C,QLCLItemDelegate_destroy,"QLCLItemDelegate_destroy");

procedure QLCLItemDelegate_override_sizeHint(handle: not null  QLCLItemDelegateH; hook: QHookH);  
pragma Import(C,QLCLItemDelegate_override_sizeHint,"QLCLItemDelegate_override_sizeHint");

procedure QLCLItemDelegate_override_paint(handle: not null  QLCLItemDelegateH; hook: QHookH);  
pragma Import(C,QLCLItemDelegate_override_paint,"QLCLItemDelegate_override_paint");

procedure QAbstractItemDelegate_signal_slot_commitData(handle: not null  QAbstractItemDelegateH; hook: QHookH);  
pragma Import(C,QAbstractItemDelegate_signal_slot_commitData,"QAbstractItemDelegate_signal_slot_commitData");

procedure QAbstractItemDelegate_signal_slot_closeEditor(handle: not null  QAbstractItemDelegateH; hook: QHookH);  
pragma Import(C,QAbstractItemDelegate_signal_slot_closeEditor,"QAbstractItemDelegate_signal_slot_closeEditor");

procedure QAbstractItemDelegate_signal_slot_closeEditor2(handle: not null  QAbstractItemDelegateH; hook: QHookH);  
pragma Import(C,QAbstractItemDelegate_signal_slot_closeEditor2,"QAbstractItemDelegate_signal_slot_closeEditor2");

 function  QTransform_fromTranslate(dx,dy: qreal) return QTransformH;
 pragma Import(C,QTransform_fromTranslate, "QTransform_fromTranslate");
 
 function  QTransform_fromScale(dx,dy: qreal) return QTransformH;
 pragma Import(C,QTransform_fromScale, "QTransform_fromScale");

--------------------------------------------------------------------
function  QTransform_create(h11: Double; h12: Double; h13: Double; h21: Double; h22: Double; h23: Double; h31: Double; h32: Double; h33: Double := 1.0) return QTransformH;
function  QTransform_create(h11: Double; h12: Double; h13: Double; h21: Double; h22: Double; h23: Double) return  QTransformH;
function  QTransform_create(mtx: QMatrixH) return  QTransformH;
function  QTransform_map(handle: not null  QTransformH; p: QPointFH) return QPointFH;
function  QTransform_map(handle: not null  QTransformH; l: QLineH) return QLineH;
function  QTransform_map(handle: not null  QTransformH; l: QLineFH) return QLineFH;
function  QTransform_map(handle: not null  QTransformH; a: QPolygonFH)  return  QPolygonFH;
function  QTransform_map(handle: not null  QTransformH; a: QPolygonH) return QPolygonH;
function  QTransform_map(handle: not null  QTransformH; r: QRegionH) return QRegionH;
function  QTransform_map(handle: not null  QTransformH; p: QPainterPathH)  return  QPainterPathH;
procedure QTransform_map(handle: not null  QTransformH; x: Integer; y: Integer; tx: PInteger; ty: PInteger);
procedure QTransform_map(handle: not null  QTransformH; x: Double; y: Double; tx: PDouble; ty: PDouble);
function  QTransform_mapRect(handle: not null  QTransformH; p1: QRectFH) return  QRectFH;

end Qt.QTransform;
