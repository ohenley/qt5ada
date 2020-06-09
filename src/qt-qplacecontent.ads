-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPlaceContent is

type QPlaceContentType is (NoType, ImageType, ReviewType, EditorialType); 
 pragma convention(C,QPlaceContentType);

 type QPlaceContentCollectionH is new QObjectH;


 function  QPlaceContent_create return QPlaceContentH;
 pragma Import(C,QPlaceContent_create, "QPlaceContent_create");
 
 function  QPlaceContent_create2(otherContent:QPlaceContentH) return QPlaceContentH;
 pragma Import(C,QPlaceContent_create2, "QPlaceContent_create2");
 
 procedure QPlaceContent_delete(handle:not null QPlaceContentH);
 pragma Import(C,QPlaceContent_delete, "QPlaceContent_delete");
 
 function  QPlaceContent_type(handle:not null QPlaceContentH) return QPlaceContentType;
 pragma Import(C,QPlaceContent_type, "QPlaceContent_type");
 
 function  QPlaceContent_supplier(handle:not null QPlaceContentH) return QPlaceSupplierH;
 pragma Import(C,QPlaceContent_supplier, "QPlaceContent_supplier");
 
 procedure QPlaceContent_setSupplier(handle:not null QPlaceContentH;supplier:QPlaceSupplierH);
 pragma Import(C,QPlaceContent_setSupplier, "QPlaceContent_setSupplier");
 
 function  QPlaceContent_user(handle:not null QPlaceContentH) return QPlaceUserH;
 pragma Import(C,QPlaceContent_user, "QPlaceContent_user");
 
 procedure QPlaceContent_setUser(handle:not null QPlaceContentH;user:QPlaceUserH);
 pragma Import(C,QPlaceContent_setUser, "QPlaceContent_setUser");
 
 function  QPlaceContent_attribution(handle:not null QPlaceContentH) return QStringH;
 pragma Import(C,QPlaceContent_attribution, "QPlaceContent_attribution");
 
 procedure QPlaceContent_setAttribution(handle:not null QPlaceContentH;attribution:QStringH);
 pragma Import(C,QPlaceContent_setAttribution, "QPlaceContent_setAttribution");
 
 function  QPlaceContent_isEquial(handle,otherContent:not null QPlaceContentH) return boolean;
 pragma Import(C,QPlaceContent_isEquial, "QPlaceContent_isEquial");
 
 function  QPlaceReview_create return QPlaceContentH;
 pragma Import(C,QPlaceReview_create, "QPlaceReview_create");
 
 function  QPlaceReview_create2(otherContent:QPlaceContentH) return QPlaceContentH;
 pragma Import(C,QPlaceReview_create2, "QPlaceReview_create2");
 
 procedure QPlaceReview_delete(handle:not null QPlaceContentH);
 pragma Import(C,QPlaceReview_delete, "QPlaceReview_delete");
 
 function  QPlaceReview_rating(handle:not null QPlaceContentH) return qreal;
 pragma Import(C,QPlaceReview_rating, "QPlaceReview_rating");
 
 procedure QPlaceReview_setRating(handle:not null QPlaceContentH; rating:qreal);
 pragma Import(C,QPlaceReview_setRating, "QPlaceReview_setRating");
 
 function  QPlaceReview_dateTime(handle:not null QPlaceContentH) return QDateTimeH;
 pragma Import(C,QPlaceReview_dateTime, "QPlaceReview_dateTime");
 
 procedure QPlaceReview_setDateTime(handle:not null QPlaceContentH;dt:QDateTimeH);
 pragma Import(C,QPlaceReview_setDateTime, "QPlaceReview_setDateTime");
 
 function  QPlaceReview_text(handle:not null QPlaceContentH) return QStringH;
 pragma Import(C,QPlaceReview_text, "QPlaceReview_text");
 
 procedure QPlaceReview_setText(handle:not null QPlaceContentH;text:QStringH);
 pragma Import(C,QPlaceReview_setText, "QPlaceReview_setText");
 
 function  QPlaceReview_language(handle:not null QPlaceContentH) return QStringH;
 pragma Import(C,QPlaceReview_language, "QPlaceReview_language");
 
 procedure QPlaceReview_setLanguage(handle:not null QPlaceContentH; language:QStringH);
 pragma Import(C,QPlaceReview_setLanguage, "QPlaceReview_setLanguage");
 
 function  QPlaceReview_reviewId(handle:not null QPlaceContentH) return QStringH;
 pragma Import(C,QPlaceReview_reviewId, "QPlaceReview_reviewId");
 
 procedure QPlaceReview_setReviewId(handle:not null QPlaceContentH;identifier:QStringH);
 pragma Import(C,QPlaceReview_setReviewId, "QPlaceReview_setReviewId");
 
 function  QPlaceReview_title(handle:not null QPlaceContentH) return QStringH;
 pragma Import(C,QPlaceReview_title, "QPlaceReview_title");
 
 procedure QPlaceReview_setTitle(handle:not null QPlaceContentH;title:QStringH);
 pragma Import(C,QPlaceReview_setTitle, "QPlaceReview_setTitle");
 
 ---------------------------------------------------
 function  QPlaceContent_create(otherContent:QPlaceContentH) return QPlaceContentH;
 function  QPlaceReview_create(otherContent:QPlaceContentH) return QPlaceContentH;

end;
