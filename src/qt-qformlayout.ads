
--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--
--
-- This library is free software; you can redistribute it and/or modify
-- it under the terms of the GNU Library General Public License as
-- published by the Free Software Foundation; either version 3 of the
-- License; or (at your option) any later version.
--
package  Qt.QFormLayout is

type  FieldGrowthPolicy is (FieldsStayAtSizeHint,ExpandingFieldsGrow,AllNonFixedFieldsGrow);
pragma Convention(C,FieldGrowthPolicy);

type  RowWrapPolicy  is (DontWrapRows,WrapLongRows,WrapAllRows);
pragma Convention(C,RowWrapPolicy);

type  ItemRole is (LabelRole,FieldRole,SpanningRole);
pragma Convention(C,ItemRole);

 function  QFormLayout_create(parent: QWidgetH := null) return QFormLayoutH;
 pragma Import(C,QFormLayout_create , "QFormLayout_create");

 procedure QFormLayout_destroy(formLayout: QFormLayoutH);
 pragma Import(C,QFormLayout_destroy , "QFormLayout_destroy");

 procedure QFormLayout_setFieldGrowthPolicy(formLayout: QFormLayoutH; policy: FieldGrowthPolicy);
 pragma Import(C,QFormLayout_setFieldGrowthPolicy, "QFormLayout_setFieldGrowthPolicy");

 procedure QFormLayout_setRowWrapPolicy(formLayout: QFormLayoutH;policy: RowWrapPolicy );
 pragma Import(C,QFormLayout_setRowWrapPolicy , "QFormLayout_setRowWrapPolicy");

 function  QFormLayout_rowWrapPolicy(formLayout: QFormLayoutH) return RowWrapPolicy;
 pragma Import(C,QFormLayout_rowWrapPolicy , "QFormLayout_rowWrapPolicy");

 procedure QFormLayout_setLabelAlignment(formLayout: QFormLayoutH; alignment: QtAlignment);
 pragma Import(C,QFormLayout_setLabelAlignment , "QFormLayout_setLabelAlignment");

 function  QFormLayout_labelAlignment(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_labelAlignment , "QFormLayout_labelAlignment");

 procedure QFormLayout_setFormAlignment(formLayout: QFormLayoutH; alignment: QtAlignment);
 pragma Import(C,QFormLayout_setFormAlignment , "QFormLayout_setFormAlignment");

 function  QFormLayout_formAlignment(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_formAlignment , "QFormLayout_formAlignment");

 procedure QFormLayout_setHorizontalSpacing(formLayout: QFormLayoutH;spacing: integer);
 pragma Import(C,QFormLayout_setHorizontalSpacing, "QFormLayout_setHorizontalSpacing");

 function  QFormLayout_horizontalSpacing(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_horizontalSpacing , "QFormLayout_horizontalSpacing");

 procedure QFormLayout_setVerticalSpacing(formLayout: QFormLayoutH; spacing: integer);
 pragma Import(C,QFormLayout_setVerticalSpacing  , "QFormLayout_setVerticalSpacing");

 function  QFormLayout_verticalSpacing(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_verticalSpacing , "QFormLayout_verticalSpacing");

 function  QFormLayout_spacing(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_spacing  , "QFormLayout_spacing");

 procedure QFormLayout_setSpacing(formLayout: QFormLayoutH; spacing: integer);
 pragma Import(C,QFormLayout_setSpacing , "QFormLayout_setSpacing");

 procedure QFormLayout_addRow (formLayout: QFormLayoutH;label: QWidgetH; field: QWidgetH);
 pragma Import(C,QFormLayout_addRow , "QFormLayout_addRow");

 procedure QFormLayout_addRow1(formLayout: QFormLayoutH;label: QWidgetH; field: QLayoutH);
 pragma Import(C,QFormLayout_addRow1 , "QFormLayout_addRow1");

 procedure QFormLayout_addRow2(formLayout: QFormLayoutH;labelText: QStringH; field: QWidgetH);
 pragma Import(C,QFormLayout_addRow2 , "QFormLayout_addRow2");

 procedure QFormLayout_addRow3(formLayout: QFormLayoutH;labelText: QStringH; field: QLayoutH);
 pragma Import(C,QFormLayout_addRow3 , "QFormLayout_addRow3");

 procedure QFormLayout_addRow4(formLayout: QFormLayoutH;widget: QWidgetH);
 pragma Import(C,QFormLayout_addRow4 , "QFormLayout_addRow4");

 procedure QFormLayout_addRow5(formLayout: QFormLayoutH;layout: QLayoutH);
 pragma Import(C,QFormLayout_addRow5 , "QFormLayout_addRow5");

 procedure QFormLayout_insertRow (formLayout: QFormLayoutH;row:integer; label: QWidgetH; field: QWidgetH);
 pragma Import(C,QFormLayout_insertRow , "QFormLayout_insertRow");

 procedure QFormLayout_insertRow1(formLayout: QFormLayoutH;row:integer; label: QWidgetH; field: QLayoutH);
 pragma Import(C,QFormLayout_insertRow1 , "QFormLayout_insertRow1");

 procedure QFormLayout_insertRow2(formLayout: QFormLayoutH;row:integer; labelText: QStringH; field: QWidgetH);
 pragma Import(C,QFormLayout_insertRow2 , "QFormLayout_insertRow2");

 procedure QFormLayout_insertRow3(formLayout: QFormLayoutH;row:integer; labelText: QStringH; field: QLayoutH);
 pragma Import(C,QFormLayout_insertRow3 , "QFormLayout_insertRow3");

 procedure QFormLayout_insertRow4(formLayout: QFormLayoutH;row:integer; widget: QWidgetH);
 pragma Import(C,QFormLayout_insertRow4 , "QFormLayout_insertRow4");

 procedure QFormLayout_insertRow5(formLayout: QFormLayoutH;row:integer; layout: QLayoutH);
 pragma Import(C,QFormLayout_insertRow5 , "QFormLayout_insertRow5");

 procedure QFormLayout_setItem(formLayout: QFormLayoutH;row:integer; role: ItemRole; item: QLayoutItemH);
 pragma Import(C,QFormLayout_setItem , "QFormLayout_setItem");

 procedure QFormLayout_setWidget(formLayout: QFormLayoutH;row:integer; role: ItemRole; widget: QWidgetH);
 pragma Import(C,QFormLayout_setWidget , "QFormLayout_setWidget");

 procedure QFormLayout_setLayout(formLayout: QFormLayoutH;row:integer; role: ItemRole; layout: QLayoutH);
 pragma Import(C,QFormLayout_setLayout , "QFormLayout_setLayout");

 function  QFormLayout_itemAt(formLayout: QFormLayoutH;row:integer; role: ItemRole) return QLayoutItemH;
 pragma Import(C,QFormLayout_itemAt , "QFormLayout_itemAt");

 procedure QFormLayout_getItemPosition(formLayout: QFormLayoutH; indx:integer; rowPtr: integer_ptr; rolePtr: ItemRole);
 pragma Import(C,QFormLayout_getItemPosition , "QFormLayout_getItemPosition");

 procedure QFormLayout_getWidgetPosition(formLayout: QFormLayoutH;widget: QWidgetH;rowPtr: integer_ptr; rolePtr: ItemRole);
 pragma Import(C,QFormLayout_getWidgetPosition , "QFormLayout_getWidgetPosition");

 procedure QFormLayout_getLayoutPosition(formLayout: QFormLayoutH;layout: QLayoutH;rowPtr: integer_ptr; rolePtr: ItemRole);
 pragma Import(C,QFormLayout_getLayoutPosition , "QFormLayout_getLayoutPosition");

 function  QFormLayout_labelForField(formLayout: QFormLayoutH; field: QWidgetH) return QWidgetH;
 pragma Import(C,QFormLayout_labelForField , "QFormLayout_labelForField");

 function  QFormLayout_labelForField1(formLayout: QFormLayoutH; field: QLayoutH) return QWidgetH;
 pragma Import(C,QFormLayout_labelForField1 , "QFormLayout_labelForField1");

-- reimplemented from QLayout

 procedure QFormLayout_addItem(formLayout: QFormLayoutH;item: QLayoutItemH );
 pragma Import(C,QFormLayout_addItem , "QFormLayout_addItem");

 function  QFormLayout_itemAt1(formLayout: QFormLayoutH; indx:integer) return QLayoutItemH;
 pragma Import(C,QFormLayout_itemAt1 , "QFormLayout_itemAt1");

 function  QFormLayout_takeAt(formLayout: QFormLayoutH;indx:integer) return QLayoutItemH;
 pragma Import(C,QFormLayout_takeAt , "QFormLayout_takeAt");

 procedure QFormLayout_setGeometry(formLayout: QFormLayoutH;rect: QRectH);
 pragma Import(C,QFormLayout_setGeometry , "QFormLayout_setGeometry");

 function  QFormLayout_minimumSize(formLayout: QFormLayoutH) return QSizeH;
 pragma Import(C,QFormLayout_minimumSize , "QFormLayout_minimumSize");

 function  QFormLayout_sizeHint(formLayout: QFormLayoutH) return QSizeH;
 pragma Import(C,QFormLayout_sizeHint , "QFormLayout_sizeHint");

 procedure QFormLayout_invalidate(formLayout: QFormLayoutH);
 pragma Import(C,QFormLayout_invalidate , "QFormLayout_invalidate");

 function  QFormLayout_hasHeightForWidth(formLayout: QFormLayoutH) return boolean;
 pragma Import(C,QFormLayout_hasHeightForWidth , "QFormLayout_hasHeightForWidth");

 function  QFormLayout_heightForWidth(formLayout: QFormLayoutH;width:integer) return integer;
 pragma Import(C,QFormLayout_heightForWidth , "QFormLayout_heightForWidth");

 function  QFormLayout_expandingDirections(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_expandingDirections , "QFormLayout_expandingDirections");

 function  QFormLayout_count(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_count , "QFormLayout_count");

 function  QFormLayout_rowCount(formLayout: QFormLayoutH) return integer;
 pragma Import(C,QFormLayout_rowCount , "QFormLayout_rowCount");

-- ================================================
-- procedure QFormLayout_resetFieldGrowthPolicy(formLayout: QFormLayoutH) return
-- procedure QFormLayout_resetRowWrapPolicy(formLayout: QFormLayoutH) return
-- procedure QFormLayout_resetLabelAlignment(formLayout: QFormLayoutH) return
-- procedure QFormLayout_resetFormAlignment(formLayout: QFormLayoutH) return
-- ===================================================== /

 procedure QFormLayout_addRow(formLayout: QFormLayoutH;labelText: QStringH; field: QWidgetH);
 procedure QFormLayout_addRow(formLayout: QFormLayoutH;layout: QLayoutH);
 procedure QFormLayout_insertRow(formLayout: QFormLayoutH;row:integer; widget: QWidgetH);
 function  QFormLayout_itemAt(formLayout: QFormLayoutH; indx:integer) return QLayoutItemH;

end Qt.QFormLayout;
