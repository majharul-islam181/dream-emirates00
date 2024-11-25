import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dream_emirates/config/components/internet_exception_widget.dart';
import 'package:dream_emirates/config/components/loading_widget.dart';
import 'package:dream_emirates/utils/enums.dart';

// Reusable trade list widget
class TradeListWidget<B extends StateStreamable<S>, S, T> extends StatelessWidget {
  final B bloc;
  final Status Function(S state) getStatus;
  final String Function(S state)? getMessage;
  final List<T> Function(S state)? getResult;
  final void Function(B bloc)? onRetry;
  final Widget Function(T item) buildItem;

  const TradeListWidget({
    Key? key,
    required this.bloc,
    required this.getStatus,
    this.getMessage,
    this.getResult,
    this.onRetry,
    required this.buildItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        switch (getStatus(state)) {
          case Status.loading:
            return const Center(child: LoadingWidget());
          case Status.error:
            if (getMessage != null && getMessage!(state) == "No Internet Connection") {
              return InterNetExceptionWidget(
                onPress: () => onRetry?.call(bloc),
              );
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(getMessage != null ? getMessage!(state) : "An error occurred"),
                ],
              ),
            );
          case Status.completed:
            final tradeResults = getResult != null ? getResult!(state) : [];
            if (tradeResults.isEmpty) {
              return const Center(child: Text("No trades found"));
            }
            return ListView.builder(
              itemCount: tradeResults.length,
              itemBuilder: (context, index) {
                return buildItem(tradeResults[index]);
              },
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
