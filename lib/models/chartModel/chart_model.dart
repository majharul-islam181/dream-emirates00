class ChartDataModel {
  final double minValue;
  final double maxValue;
  final double latestAskPrice;
  final double latestBidPrice;
  final double highPrice;
  final double lowPrice;

  ChartDataModel({
    required this.minValue,
    required this.maxValue,
    required this.latestAskPrice,
    required this.latestBidPrice,
    required this.highPrice,
    required this.lowPrice,
  });

  factory ChartDataModel.fromJson(Map<String, dynamic> json) {
    return ChartDataModel(
      minValue: json['minValue']?.toDouble() ?? 0.0,
      maxValue: json['maxValue']?.toDouble() ?? 0.0,
      latestAskPrice: json['latestAskPrice']?.toDouble() ?? 0.0,
      latestBidPrice: json['latestBidPrice']?.toDouble() ?? 0.0,
      highPrice: json['highPrice']?.toDouble() ?? 0.0,
      lowPrice: json['lowPrice']?.toDouble() ?? 0.0,
    );
  }
}
