--
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

package Qt.QGeoManeuver  is

type  QGeoManeuverInstructionDirection is (
      NoDirection,DirectionForward,
      DirectionBearRight,DirectionLightRight,DirectionRight,DirectionHardRight,DirectionUTurnRight,
      DirectionUTurnLeft,DirectionHardLeft,DirectionLeft,DirectionLightLeft,DirectionBearLeft); 
 pragma convention(C,QGeoManeuverInstructionDirection);

 function  QGeoManeuver_create return QGeoManeuverH;
 pragma Import(C,QGeoManeuver_create, "QGeoManeuver_create");
 
 function  QGeoManeuver_create2(otherGeoManeuver:QGeoManeuverH) return QGeoManeuverH;
 pragma Import(C,QGeoManeuver_create2, "QGeoManeuver_create2");
 
 procedure QGeoManeuver_delete(handle:not null QGeoManeuverH);
 pragma Import(C,QGeoManeuver_delete, "QGeoManeuver_delete");
 
 function  QGeoManeuver_isValid(handle:not null QGeoManeuverH) return boolean;
 pragma Import(C,QGeoManeuver_isValid, "QGeoManeuver_isValid");
 
 procedure QGeoManeuver_setPosition(handle:not null QGeoManeuverH ;position:QGeoCoordinateH);
 pragma Import(C,QGeoManeuver_setPosition, "QGeoManeuver_setPosition");
 
 function  QGeoManeuver_position(handle:not null QGeoManeuverH) return QGeoCoordinateH;
 pragma Import(C,QGeoManeuver_position, "QGeoManeuver_position");
 
 procedure QGeoManeuver_setInstructionText(handle:not null QGeoManeuverH;instructionText:QStringH);
 pragma Import(C,QGeoManeuver_setInstructionText, "QGeoManeuver_setInstructionText");
 
 function  QGeoManeuver_instructionText(handle:not null QGeoManeuverH) return QStringH;
 pragma Import(C,QGeoManeuver_instructionText, "QGeoManeuver_instructionText");
 
 procedure QGeoManeuver_setDirection(handle:not null QGeoManeuverH;direction:QGeoManeuverInstructionDirection);
 pragma Import(C,QGeoManeuver_setDirection, "QGeoManeuver_setDirection");
 
 function  QGeoManeuver_direction(handle:not null QGeoManeuverH) return QGeoManeuverInstructionDirection;
 pragma Import(C,QGeoManeuver_direction, "QGeoManeuver_direction");
 
 procedure QGeoManeuver_setTimeToNextInstruction(handle:not null QGeoManeuverH;secs:integer);
 pragma Import(C,QGeoManeuver_setTimeToNextInstruction, "QGeoManeuver_setTimeToNextInstruction");
 
 function  QGeoManeuver_timeToNextInstruction(handle:not null QGeoManeuverH) return integer;
 pragma Import(C,QGeoManeuver_timeToNextInstruction, "QGeoManeuver_timeToNextInstruction");
 
 procedure QGeoManeuver_setDistanceToNextInstruction(handle:not null QGeoManeuverH;distance:qreal);
 pragma Import(C,QGeoManeuver_setDistanceToNextInstruction, "QGeoManeuver_setDistanceToNextInstruction");
 
 function  QGeoManeuver_distanceToNextInstruction(handle:not null QGeoManeuverH) return qreal;
 pragma Import(C,QGeoManeuver_distanceToNextInstruction, "QGeoManeuver_distanceToNextInstruction");
 
 procedure QGeoManeuver_setWaypoint(handle:not null QGeoManeuverH;coordinate:QGeoCoordinateH);
 pragma Import(C,QGeoManeuver_setWaypoint, "QGeoManeuver_setWaypoint");
 
 function  QGeoManeuver_waypoint(handle:not null QGeoManeuverH) return QGeoCoordinateH;
 pragma Import(C,QGeoManeuver_waypoint, "QGeoManeuver_waypoint");
 
 function  QGeoManeuver_isEqual(handle,otherGeoManeuver:QGeoManeuverH) return boolean;
 pragma Import(C,QGeoManeuver_isEqual, "QGeoManeuver_isEqual");
 
 function  QGeoManeuver_create(otherGeoManeuver:QGeoManeuverH) return QGeoManeuverH;

end;
