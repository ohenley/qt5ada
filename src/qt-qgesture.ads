 
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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QGesture is

-- GestureCancelPolicy 
   CancelNone         : constant := 0;
   CancelAllInContext : constant := 1; 

 function  QGesture_create(parent:QObjectH := null) return QGestureH ;
 pragma Import(C,QGesture_create, "QGesture_create");
 
 procedure QGesture_destroy(handle: not null QGestureH);
 pragma Import(C,QGesture_destroy, "QGesture_destroy");
 
 function  QGesture_gestureType(handle: not null QGestureH) return integer;
 pragma Import(C,QGesture_gestureType, "QGesture_gestureType");
 
 function  QGesture_state(handle: not null QGestureH) return integer;
 pragma Import(C,QGesture_state, "QGesture_state");
 
 function  QGesture_hotSpot(handle: not null QGestureH) return QPointFH;
 pragma Import(C,QGesture_hotSpot, "QGesture_hotSpot");
 
 procedure QGesture_setHotSpot(handle: not null QGestureH;point: QPointFH);
 pragma Import(C,QGesture_setHotSpot, "QGesture_setHotSpot");
 
 function  QGesture_hasHotSpot(handle: not null QGestureH) return boolean;
 pragma Import(C,QGesture_hasHotSpot, "QGesture_hasHotSpot");
 
 procedure QGesture_unsetHotSpot(handle: not null QGestureH);
 pragma Import(C,QGesture_unsetHotSpot, "QGesture_unsetHotSpot");
 
 procedure QGesture_setGestureCancelPolicy(handle: not null QGestureH; policy: integer) with pre => policy in CancelNone .. CancelAllInContext;
 pragma Import(C,QGesture_setGestureCancelPolicy, "QGesture_setGestureCancelPolicy");
 
 function  QGesture_gestureCancelPolicy(handle: not null QGestureH) return integer;
 pragma Import(C,QGesture_gestureCancelPolicy, "QGesture_gestureCancelPolicy");

--------------------------------------------------------------------------------------------
-- ResultFlag 
   Ignore                  : constant := 16#0001#;
   MayBeGesture            : constant := 16#0002#;
   TriggerGesture          : constant := 16#0004#;
   FinishGesture           : constant := 16#0008#;
   CancelGesture           : constant := 16#0010#;
   ResultState_Mask        : constant := 16#00ff#;
   ConsumeEventHint        : constant := 16#0100#;
-- StoreEventHint          : constant := 16#0200#;
-- ReplayStoredEventsHint  : constant := 16#0400#;
-- DiscardStoredEventsHint : constant := 16#0800#;
   ResultHint_Mask         : constant := 16#ff00#;

 function  QGestureRecognizer_create(handle: not null QGestureRecognizerH;target:QObjectH) return QGestureH;
 pragma Import(C,QGestureRecognizer_create, "QGestureRecognizer_create");
 
 procedure QGestureRecognizer_destroy(handle: not null QGestureRecognizerH);
 pragma Import(C,QGestureRecognizer_destroy, "QGestureRecognizer_destroy");
 
 function  QGestureRecognizer_recognize(handle: not null QGestureRecognizerH;state:QGestureH; watched:QObjectH;event:QEventH) return integer;
 pragma Import(C,QGestureRecognizer_recognize, "QGestureRecognizer_recognize");
 
 procedure QGestureRecognizer_reset(handle: not null QGestureRecognizerH;state:QGestureH);
 pragma Import(C,QGestureRecognizer_reset, "QGestureRecognizer_reset");
 
 function  QGestureRecognizer_registerRecognizer(handle: not null QGestureRecognizerH;recognizer:QGestureRecognizerH) return integer;
 pragma Import(C,QGestureRecognizer_registerRecognizer, "QGestureRecognizer_registerRecognizer");
 
 procedure QGestureRecognizer_unregisterRecognizer(handle: not null QGestureRecognizerH; gestureType: integer);
 pragma Import(C,QGestureRecognizer_unregisterRecognizer, "QGestureRecognizer_unregisterRecognizer");
 
end;
