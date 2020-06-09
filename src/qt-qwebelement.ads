--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString; use Qt.QString;
package Qt.QWebElement   is

type StyleResolveStrategy is (InlineStyle,CascadedStyle,ComputedStyle);
pragma Convention(C,StyleResolveStrategy);

 function  QWebElement_create return QWebElementH;
 pragma Import(C,QWebElement_create, "QWebElement_create");
 
 function  QWebElement_create2(other:QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_create2, "QWebElement_create2");
 
 procedure QWebElement_destroy(handle: not null QWebElementH);
 pragma Import(C,QWebElement_destroy, "QWebElement_destroy");
 
 function  QWebElement_isNull(handle: not null QWebElementH) return boolean;
 pragma Import(C,QWebElement_isNull, "QWebElement_isNull");
 
 function  QWebElement_findAll(handle: not null QWebElementH; selectorQuery:QStringH) return QWebElementCollectionH;
 pragma Import(C,QWebElement_findAll, "QWebElement_findAll");
 
 function  QWebElement_findFirst(handle: not null QWebElementH; selectorQuery:QStringH) return QWebElementH;
 pragma Import(C,QWebElement_findFirst, "QWebElement_findFirst");
 
 procedure QWebElement_setPlainText(handle: not null QWebElementH;text:QStringH);
 pragma Import(C,QWebElement_setPlainText, "QWebElement_setPlainText");
 
 function  QWebElement_toPlainText(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_toPlainText, "QWebElement_toPlainText");
 
 procedure QWebElement_setOuterXml(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_setOuterXml, "QWebElement_setOuterXml");
 
 function  QWebElement_toOuterXml(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_toOuterXml, "QWebElement_toOuterXml");
 
 procedure QWebElement_setInnerXml(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_setInnerXml, "QWebElement_setInnerXml");
 
 function  QWebElement_toInnerXml(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_toInnerXml, "QWebElement_toInnerXml");
 
 procedure QWebElement_setAttribute(handle: not null QWebElementH; name,value:QStringH);
 pragma Import(C,QWebElement_setAttribute, "QWebElement_setAttribute");
 
 procedure QWebElement_setAttributeNS(handle: not null QWebElementH; namespaceUri,name,value:QStringH);
 pragma Import(C,QWebElement_setAttributeNS, "QWebElement_setAttributeNS");
 
 function  QWebElement_attribute(handle: not null QWebElementH;name:QStringH; defaultValue: QStringH := QString_create) return QStringH;
 pragma Import(C,QWebElement_attribute, "QWebElement_attribute");
 
 function  QWebElement_attributeNS(handle: not null QWebElementH;namespaceUri, name:QStringH;  defaultValue :QStringH := QString_create) return QStringH;
 pragma Import(C,QWebElement_attributeNS, "QWebElement_attributeNS");
 
 function  QWebElement_hasAttribute(handle: not null QWebElementH;name:QStringH) return boolean;
 pragma Import(C,QWebElement_hasAttribute, "QWebElement_hasAttribute");
 
 function  QWebElement_hasAttributeNS(handle: not null QWebElementH;namespaceUri, name:QStringH) return boolean;
 pragma Import(C,QWebElement_hasAttributeNS, "QWebElement_hasAttributeNS");
 
 procedure QWebElement_removeAttribute(handle: not null QWebElementH;name:QStringH);
 pragma Import(C,QWebElement_removeAttribute, "QWebElement_removeAttribute");
 
 procedure QWebElement_removeAttributeNS(handle: not null QWebElementH;namespaceUri, name:QStringH);
 pragma Import(C,QWebElement_removeAttributeNS, "QWebElement_removeAttributeNS");
 
 function  QWebElement_hasAttributes(handle: not null QWebElementH) return boolean;
 pragma Import(C,QWebElement_hasAttributes, "QWebElement_hasAttributes");
 
 function  QWebElement_attributeNames(handle: not null QWebElementH;namespaceUri:QStringH := QString_create) return QStringListH;
 pragma Import(C,QWebElement_attributeNames, "QWebElement_attributeNames");
 
 function  QWebElement_classes(handle: not null QWebElementH) return QStringListH;
 pragma Import(C,QWebElement_classes, "QWebElement_classes");
 
 function  QWebElement_hasClass(handle: not null QWebElementH;name:QStringH) return boolean;
 pragma Import(C,QWebElement_hasClass, "QWebElement_hasClass");
 
 procedure QWebElement_addClass(handle: not null QWebElementH;name:QStringH);
 pragma Import(C,QWebElement_addClass, "QWebElement_addClass");
 
 procedure QWebElement_removeClass(handle: not null QWebElementH;name:QStringH);
 pragma Import(C,QWebElement_removeClass, "QWebElement_removeClass");
 
 procedure QWebElement_toggleClass(handle: not null QWebElementH;name:QStringH);
 pragma Import(C,QWebElement_toggleClass, "QWebElement_toggleClass");
 
 function  QWebElement_hasFocus(handle: not null QWebElementH) return boolean;
 pragma Import(C,QWebElement_hasFocus, "QWebElement_hasFocus");
 
 procedure QWebElement_setFocus(handle: not null QWebElementH);
 pragma Import(C,QWebElement_setFocus, "QWebElement_setFocus");
 
 function  QWebElement_geometry(handle: not null QWebElementH) return QRectH;
 pragma Import(C,QWebElement_geometry, "QWebElement_geometry");
 
 function  QWebElement_tagName(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_tagName, "QWebElement_tagName");
 
 function  QWebElement_prefix(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_prefix, "QWebElement_prefix");
 
 function  QWebElement_localName(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_localName, "QWebElement_localName");
 
 function  QWebElement_namespaceUri(handle: not null QWebElementH) return QStringH;
 pragma Import(C,QWebElement_namespaceUri, "QWebElement_namespaceUri");
 
 function  QWebElement_parent(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_parent, "QWebElement_parent");
 
 function  QWebElement_firstChild(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_firstChild, "QWebElement_firstChild");
 
 function  QWebElement_lastChild(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_lastChild, "QWebElement_lastChild");
 
 function  QWebElement_nextSibling(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_nextSibling, "QWebElement_nextSibling");
 
 function  QWebElement_previousSibling(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_previousSibling, "QWebElement_previousSibling");
 
 function  QWebElement_document(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_document, "QWebElement_document");
 
 function  QWebElement_webFrame(handle: not null QWebElementH) return QWebFrameH;
 pragma Import(C,QWebElement_webFrame, "QWebElement_webFrame");
 
 procedure QWebElement_appendInside(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_appendInside, "QWebElement_appendInside");
 
 procedure QWebElement_appendInside2(handle: not null QWebElementH; element:QWebElementH);
 pragma Import(C,QWebElement_appendInside2, "QWebElement_appendInside2");
 
 procedure QWebElement_prependInside(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_prependInside, "QWebElement_prependInside");
 
 procedure QWebElement_prependInside2(handle: not null QWebElementH;element:QWebElementH);
 pragma Import(C,QWebElement_prependInside2, "QWebElement_prependInside2");
 
 procedure QWebElement_appendOutside(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_appendOutside, "QWebElement_appendOutside");
 
 procedure QWebElement_appendOutside2(handle: not null QWebElementH;element:QWebElementH);
 pragma Import(C,QWebElement_appendOutside2, "QWebElement_appendOutside2");
 
 procedure QWebElement_prependOutside(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_prependOutside, "QWebElement_prependOutside");
 
 procedure QWebElement_prependOutside2(handle: not null QWebElementH;element:QWebElementH);
 pragma Import(C,QWebElement_prependOutside2, "QWebElement_prependOutside2");
 
 procedure QWebElement_encloseContentsWith(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_encloseContentsWith, "QWebElement_encloseContentsWith");
 
 procedure QWebElement_encloseContentsWith2(handle: not null QWebElementH;element:QWebElementH);
 pragma Import(C,QWebElement_encloseContentsWith2, "QWebElement_encloseContentsWith2");
 
 procedure QWebElement_encloseWith(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_encloseWith, "QWebElement_encloseWith");
 
 procedure QWebElement_encloseWith2(handle: not null QWebElementH;element:QWebElementH);
 pragma Import(C,QWebElement_encloseWith2, "QWebElement_encloseWith2");
 
 procedure QWebElement_replace(handle: not null QWebElementH;markup:QStringH);
 pragma Import(C,QWebElement_replace, "QWebElement_replace");
 
 procedure QWebElement_replace2(handle: not null QWebElementH;element:QWebElementH);
 pragma Import(C,QWebElement_replace2, "QWebElement_replace2");
 
 function  QWebElement_clone(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_clone, "QWebElement_clone");
 
 function  QWebElement_takeFromDocument(handle: not null QWebElementH) return QWebElementH;
 pragma Import(C,QWebElement_takeFromDocument, "QWebElement_takeFromDocument");
 
 procedure QWebElement_removeFromDocument(handle: not null QWebElementH);
 pragma Import(C,QWebElement_removeFromDocument, "QWebElement_removeFromDocument");
 
 procedure QWebElement_removeAllChildren(handle: not null QWebElementH);
 pragma Import(C,QWebElement_removeAllChildren, "QWebElement_removeAllChildren");
 
 function  QWebElement_evaluateJavaScript(handle: not null QWebElementH; scriptSource:QStringH) return QVariantH;
 pragma Import(C,QWebElement_evaluateJavaScript, "QWebElement_evaluateJavaScript");
 
 function  QWebElement_styleProperty(handle: not null QWebElementH;name:QStringH;  strategy:StyleResolveStrategy) return QStringH;
 pragma Import(C,QWebElement_styleProperty, "QWebElement_styleProperty");
 
 procedure QWebElement_setStyleProperty(handle: not null QWebElementH;name:QStringH; value:QStringH);
 pragma Import(C,QWebElement_setStyleProperty, "QWebElement_setStyleProperty");
 
 procedure QWebElement_render(handle: not null QWebElementH;painter:QPainterH);
 pragma Import(C,QWebElement_render, "QWebElement_render");

 function  QWebElementCollection_create return QWebElementCollectionH;
 pragma Import(C,QWebElementCollection_create, "QWebElementCollection_create");
 
 function  QWebElementCollection_create2( contextElement:QWebElementH; query:QStringH) return QWebElementCollectionH;
 pragma Import(C,QWebElementCollection_create2, "QWebElementCollection_create2");
 
 function  QWebElementCollection_create3(other:QWebElementCollectionH) return QWebElementCollectionH;
 pragma Import(C,QWebElementCollection_create3, "QWebElementCollection_create3");
 
 procedure QWebElementCollection_destroy(handle: not null QWebElementCollectionH);
 pragma Import(C,QWebElementCollection_destroy, "QWebElementCollection_destroy");
 
 procedure QWebElementCollection_append(handle: not null QWebElementCollectionH; collection: QWebElementCollectionH);
 pragma Import(C,QWebElementCollection_append, "QWebElementCollection_append");
 
 function  QWebElementCollection_count(handle: not null QWebElementCollectionH) return integer;
 pragma Import(C,QWebElementCollection_count, "QWebElementCollection_count");
 
 function  QWebElementCollection_at(handle: not null QWebElementCollectionH; index:integer) return QWebElementH;
 pragma Import(C,QWebElementCollection_at, "QWebElementCollection_at");
 
 function  QWebElementCollection_first(handle: not null QWebElementCollectionH) return QWebElementH;
 pragma Import(C,QWebElementCollection_first, "QWebElementCollection_first");
 
 function  QWebElementCollection_last(handle: not null QWebElementCollectionH) return QWebElementH;
 pragma Import(C,QWebElementCollection_last, "QWebElementCollection_last");
 
 function  QWebElementCollection_toList(handle: not null QWebElementCollectionH) return QObjectListH;
 pragma Import(C,QWebElementCollection_toList, "QWebElementCollection_toList");
 
---------------------------------------------------------------------------------------------
 function  QWebElement_create(other:QWebElementH) return QWebElementH;
 procedure QWebElement_appendInside(handle: not null QWebElementH; element:QWebElementH);
 procedure QWebElement_prependInside(handle: not null QWebElementH;element:QWebElementH);
 procedure QWebElement_appendOutside(handle: not null QWebElementH;element:QWebElementH);
 procedure QWebElement_prependOutside(handle: not null QWebElementH;element:QWebElementH);
 procedure QWebElement_encloseContentsWith(handle: not null QWebElementH;element:QWebElementH);
 procedure QWebElement_encloseWith(handle: not null QWebElementH;element:QWebElementH);
 procedure QWebElement_replace(handle: not null QWebElementH;element:QWebElementH);

 function  QWebElementCollection_create( contextElement:QWebElementH; query:QStringH) return QWebElementCollectionH;
 function  QWebElementCollection_create(other:QWebElementCollectionH) return QWebElementCollectionH;

end Qt.QWebElement;
