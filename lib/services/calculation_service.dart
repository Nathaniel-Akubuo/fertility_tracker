import 'package:flutter/material.dart';

class CalculationService {
  static DateTime? calculateDueDate(DateTime? lmp) {
    if (lmp == null) return null;
    var dueDate = lmp.add(const Duration(days: 273));
    return dueDate;
  }

  static DateTime? calculateOvulation(DateTime? lmp, int cycleLength) {
    if (lmp == null) return null;
    var constant = cycleLength - 14;
    var ovulationDay = lmp.add(Duration(days: constant));
    return ovulationDay;
  }

  static DateTimeRange? calculateFertilityWindow(
      DateTime? lmp, int cycleLength) {
    if (lmp == null) return null;
    var constant = cycleLength - 14;
    var ovulationDay = lmp.add(Duration(days: constant));
    return DateTimeRange(
      start: ovulationDay.subtract(const Duration(days: 3)),
      end: ovulationDay.add(const Duration(days: 1)),
    );
  }

  static DateTime? calculateNextPeriod(DateTime? lmp, int averageNumberOfDays) {
    if (lmp == null) return null;
    var nextPeriod = lmp.add(Duration(days: averageNumberOfDays));
    return nextPeriod;
  }
}
