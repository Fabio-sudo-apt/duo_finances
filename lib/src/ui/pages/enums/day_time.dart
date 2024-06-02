import 'package:flutter/material.dart';
import 'package:icon_forest/amazingneoicons.dart';

enum TimeOfDayPeriod {
  morning,
  afternoon,
  night,
}

Icon getPeriodIcon({required TimeOfDayPeriod type}) {
  switch (type) {
    case TimeOfDayPeriod.morning:
      return const Icon(
        AmazingNeoIcons.abacus,
        size: 30.0,
        color: Colors.yellowAccent,
      );
    case TimeOfDayPeriod.afternoon:
      return const Icon(
        AmazingNeoIcons.abacus,
        size: 30.0,
        color: Colors.yellowAccent,
      );
    case TimeOfDayPeriod.night:
      return const Icon(
        AmazingNeoIcons.abacus,
        size: 30.0,
        color: Colors.yellowAccent,
      );
  }
}

TimeOfDayPeriod isTimeOfDay(DateTime now) {
  if (now.hour >= 5 && now.hour < 12) {
    return TimeOfDayPeriod.morning;
  } else if (now.hour >= 12 && now.hour < 17) {
    return TimeOfDayPeriod.afternoon;
  } else {
    return TimeOfDayPeriod.night;
  }
}
