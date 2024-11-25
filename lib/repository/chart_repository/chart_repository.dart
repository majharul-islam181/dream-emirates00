import 'package:dream_emirates/models/chartModel/chart_model.dart';

abstract class ChartRepository {
  Future<List<ChartDataModel>> getChartData(String accountId);
}
