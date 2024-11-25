// import 'package:dream_emirates/bloc/bloc_barrel.dart';
// import 'package:dream_emirates/repository/chart_repository/chart_repository.dart';
// import 'package:dream_emirates/views/Account/account_screen.dart';

// class ChartBloc extends Bloc<ChartEvent, ChartState> {
//   final ChartRepository chartRepository;

//   ChartBloc({required this.chartRepository}) : super(ChartInitial());

//   @override
//   Stream<ChartState> mapEventToState(ChartEvent event) async* {
//     if (event is FetchInitialChartDataEvent) {
//       yield ChartLoading();
//       try {
//         final chartData = await chartRepository.getChartData();
//         yield ChartDataLoaded(chartData: chartData);
//       } catch (e) {
//         yield ChartDataError(message: e.toString());
//       }
//     }
//   }
// }

// // Define Chart Events and States
// abstract class ChartEvent {}

// class FetchInitialChartDataEvent extends ChartEvent {}

// abstract class ChartState {}

// class ChartInitial extends ChartState {}

// class ChartLoading extends ChartState {}

// class ChartDataLoaded extends ChartState {
//   final List<ChartData> chartData;
//   ChartDataLoaded({required this.chartData});
// }

// class ChartDataError extends ChartState {
//   final String message;
//   ChartDataError({required this.message});
// }
