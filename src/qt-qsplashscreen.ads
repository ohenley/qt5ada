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

package Qt.QSplashScreen  is

 function  QSplashScreen_create(parent:QWidgetH;pixmap:  QPixmapH;f : QtWindowFlags := 0) return  QSplashScreenH;
 pragma Import(C,QSplashScreen_create,"QSplashScreen_create");

 procedure QSplashScreen_destroy(handle: not null QSplashScreenH);
 pragma Import(C,QSplashScreen_destroy,"QSplashScreen_destroy");

 procedure QSplashScreen_setPixmap(handle: not null QSplashScreenH; pixmap: QPixmapH);
 pragma Import(C,QSplashScreen_setPixmap,"QSplashScreen_setPixmap");

 function  QSplashScreen_pixmap(handle: not null QSplashScreenH) return   QPixmapH;
 pragma Import(C,QSplashScreen_pixmap ,"QSplashScreen_pixmap");

 procedure QSplashScreen_finish(handle: not null QSplashScreenH; w: QWidgetH := window);
 pragma Import(C,QSplashScreen_finish,"QSplashScreen_finish");

 procedure QSplashScreen_repaint(handle: not null QSplashScreenH);
 pragma Import(C,QSplashScreen_repaint,"QSplashScreen_repaint");

 procedure QSplashScreen_showMessage(handle: not null QSplashScreenH; message: QStringH; alignment: QtAlignment := QtAlignLeft; color:  QtGlobalColor := Qtblack);
 pragma Import(C,QSplashScreen_showMessage,"QSplashScreen_showMessage");

 procedure QSplashScreen_clearMessage(handle: not null QSplashScreenH);
 pragma Import(C,QSplashScreen_clearMessage,"QSplashScreen_clearMessage");

end Qt.QSplashScreen;
