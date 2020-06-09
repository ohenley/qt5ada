--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ 
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QSCroller  is

  --   State
        Inactive  : constant := 0;
        Pressed   : constant := 1;
        Dragging  : constant := 2;
        Scrolling : constant := 3;

  -- ScrollerGestureType
        TouchGesture             : constant := 0;      
        LeftMouseButtonGesture   : constant := 1;      
        RightMouseButtonGesture  : constant := 2;      
        MiddleMouseButtonGesture : constant := 3;      

  -- Input
        InputPress   : constant := 1;  
        InputMove    : constant := 2;  
        InputReleas  : constant := 3;  

 type stateChangedEvent is access procedure(p:integer);
 pragma Convention(C,stateChangedEvent);

 type scrollerPropertiesChangedEvent is access procedure(p: QScrollerPropertiesH); 
 pragma Convention(C,scrollerPropertiesChangedEvent);

 function  QScroller_target(handle: not null QScrollerH) return QObjectH;
 pragma Import(C,QScroller_target, "QScroller_target");
 
 procedure QScroller_stop(handle: not null QScrollerH);
 pragma Import(C,QScroller_stop, "QScroller_stop");
 
 function  QScroller_hasScroller(target: not null QObjectH) return  boolean;
 pragma Import(C,QScroller_hasScroller, "QScroller_hasScroller");
 
 function  QScroller_scroller(target: not null QObjectH) return QScrollerH;
 pragma Import(C,QScroller_scroller, "QScroller_scroller");
 
 function  QScroller_activeScrollers return QListH;
 pragma Import(C,QScroller_activeScrollers, "QScroller_activeScrollers");
 
 function  QScroller_state(handle: not null QScrollerH) return integer;
 pragma Import(C,QScroller_state, "QScroller_state");
 
 function  QScroller_handleInput(handle: not null QScrollerH; inpt:integer; position: not null QPointFH; timestamp :qint64 := 0) return boolean;
 pragma Import(C,QScroller_handleInput, "QScroller_handleInput");
 
 function  QScroller_velocity(handle: not null QScrollerH) return QPointFH;
 pragma Import(C,QScroller_velocity, "QScroller_velocity");
 
 function  QScroller_finalPosition(handle: not null QScrollerH) return QPointFH;
 pragma Import(C,QScroller_finalPosition, "QScroller_finalPosition");
 
 function  QScroller_pixelPerMeter(handle: not null QScrollerH) return QPointFH;
 pragma Import(C,QScroller_pixelPerMeter, "QScroller_pixelPerMeter");
 
 function  QScroller_scrollerProperties(handle: not null QScrollerH) return QScrollerPropertiesH;
 pragma Import(C,QScroller_scrollerProperties, "QScroller_scrollerProperties");
 
 procedure QScroller_setSnapPositionsX(handle: not null QScrollerH; first, interval:qreal );
 pragma Import(C,QScroller_setSnapPositionsX, "QScroller_setSnapPositionsX");
 
 procedure QScroller_setSnapPositionsX2(handle: not null QScrollerH; positions: not null QListH );
 pragma Import(C,QScroller_setSnapPositionsX2, "QScroller_setSnapPositionsX2");
 
 procedure QScroller_setSnapPositionsY(handle: not null QScrollerH; first,interval: qreal);
 pragma Import(C,QScroller_setSnapPositionsY, "QScroller_setSnapPositionsY");
 
 procedure QScroller_setSnapPositionsY2(handle: not null QScrollerH; positions: not null QListH);
 pragma Import(C,QScroller_setSnapPositionsY2, "QScroller_setSnapPositionsY2");

 procedure QScroller_signal_slot_stateChanged(handle:not null QScrollerH;hook:stateChangedEvent);
 pragma Import(C,QScroller_signal_slot_stateChanged, "QScroller_signal_slot_stateChanged");
 
 procedure QScroller_signal_slot_scrollerPropertiesChanged(handle: not null QScrollerH; hook:scrollerPropertiesChangedEvent);
 pragma Import(C,QScroller_signal_slot_scrollerPropertiesChanged, "QScroller_signal_slot_scrollerPropertiesChanged");

--------------

-- OvershootPolicy
    OvershootWhenScrollable : constant := 0;       
    OvershootAlwaysOff      : constant := 1;       
    OvershootAlwaysOn       : constant := 2;       

-- FrameRates  
   Standard : constant := 0; 
   Fps60    : constant := 1; 
   Fps30    : constant := 2; 
   Fps20    : constant := 3;

-- ScrollMetric
   MousePressEventDelay           : constant :=  0;  -- qreal [s]
   DragStartDistance              : constant :=  1;  -- qreal [m]
   DragVelocitySmoothingFactor    : constant :=  2;  -- qreal [0..1/s]  (complex calculation involving time) v = v_new* DASF + v_old * (1-DASF)
   AxisLockThreshold              : constant :=  3;  -- qreal [0..1] atan(|min(dx : constant :=  0;dy)|/|max(dx : constant :=  0;dy)|)

   ScrollingCurve                 : constant :=  4;  -- QEasingCurve
   DecelerationFactor             : constant :=  5;  -- slope of the curve

   MinimumVelocity                : constant :=  6;  -- qreal [m/s]
   MaximumVelocity                : constant :=  7;  -- qreal [m/s]
   MaximumClickThroughVelocity    : constant :=  8;  -- qreal [m/s]

   AcceleratingFlickMaximumTime   : constant :=  9;  -- qreal [s]
   AcceleratingFlickSpeedupFactor : constant := 10;  -- qreal [1..]

   SnapPositionRatio              : constant := 11;  -- qreal [0..1]
   SnapTime                       : constant := 12;  -- qreal [s]

   OvershootDragResistanceFactor  : constant := 13;  -- qreal [0..1]
   OvershootDragDistanceFactor    : constant := 14;  -- qreal [0..1]
   OvershootScrollDistanceFactor  : constant := 15;  -- qreal [0..1]
   OvershootScrollTime            : constant := 16;  -- qreal [s]

   HorizontalOvershootPolicy      : constant := 17;  -- enum OvershootPolicy
   VerticalOvershootPolicy        : constant := 18;  -- enum OvershootPolicy
   FrameRate                      : constant := 19;  -- enum FrameRates

   ScrollMetricCount              : constant := 20;    

 function  QScrollerProperties_create return QScrollerPropertiesH;
 pragma Import(C,QScrollerProperties_create,"QScrollerProperties_create");
 
 function  QScrollerProperties_create2(sp:QScrollerPropertiesH) return QScrollerPropertiesH;
 pragma Import(C,QScrollerProperties_create2,"QScrollerProperties_create2");
 
 procedure QScrollerProperties_destroy(handle: not null QScrollerPropertiesH);
 pragma Import(C,QScrollerProperties_destroy, "QScrollerProperties_destroy");
 
 procedure QScrollerProperties_setDefaultScrollerProperties(sp:QScrollerPropertiesH);
 pragma Import(C,QScrollerProperties_setDefaultScrollerProperties,"QScrollerProperties_setDefaultScrollerProperties");
 
 procedure QScrollerProperties_unsetDefaultScrollerProperties;
 pragma Import(C,QScrollerProperties_unsetDefaultScrollerProperties,"QScrollerProperties_unsetDefaultScrollerProperties;");
 
 function  QScrollerProperties_scrollMetric(handle: not null QScrollerPropertiesH; metric:integer) return QVariantH with pre => metric in MousePressEventDelay .. ScrollMetricCount;
 pragma Import(C,QScrollerProperties_scrollMetric, "QScrollerProperties_scrollMetric");
 
 procedure QScrollerProperties_setScrollMetric(handle: not null QScrollerPropertiesH; metric:integer;value: not null QVariantH) with pre => metric in MousePressEventDelay .. ScrollMetricCount;
 pragma Import(C,QScrollerProperties_setScrollMetric, "QScrollerProperties_setScrollMetric");
 
---------------------------------------------------------------------------------------------
 procedure QScroller_setSnapPositionsX(handle: not null QScrollerH; positions: not null QListH );
 procedure QScroller_setSnapPositionsY(handle: not null QScrollerH; positions: not null QListH);
 function  QScrollerProperties_create(sp:QScrollerPropertiesH) return QScrollerPropertiesH;

end;
