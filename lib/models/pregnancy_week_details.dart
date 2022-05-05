class PregnancyWeekDetails {
  String weekDetails;
  int week;
  String bodyChanges;
  List<String> tips;

  PregnancyWeekDetails({
    required this.weekDetails,
    required this.week,
    required this.bodyChanges,
    required this.tips,
  });

  Map<String, dynamic> toMap() {
    return {
      'weekDetails': weekDetails,
      'week': week,
      'bodyChanges': bodyChanges,
      'tips': tips,
    };
  }

  factory PregnancyWeekDetails.fromMap(Map<String, dynamic> map) {
    return PregnancyWeekDetails(
      weekDetails: map['weekDetails'],
      week: map['week'],
      bodyChanges: map['bodyChanges'],
      tips: map['tips'],
    );
  }
}
