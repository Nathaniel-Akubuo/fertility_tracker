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

  static DateTime? calculateNextPeriod(DateTime? lmp, int averageNumberOfDays) {
    if (lmp == null) return null;
    var nextPeriod = lmp.add(Duration(days: averageNumberOfDays));
    return nextPeriod;
  }
}
