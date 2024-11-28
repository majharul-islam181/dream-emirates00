// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:dream_emirates/bloc/bloc_barrel.dart';
import 'package:dream_emirates/config/config_barrel.dart';
import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:dream_emirates/views/Account/widgets/account_card_skelton.dart';
import 'package:dream_emirates/views/Account/widgets/chart_skelton.dart';
import 'package:dream_emirates/views/Account/widgets/widgets.dart';
import 'package:dream_emirates/views/Dashboard/widgets/widgets.dart';
import 'package:dream_emirates/views/Trade/widgets/widgets.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/io.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<ChartData> chartData = [];
  final channel = IOWebSocketChannel.connect(AppUrl.connectWebSocket());
  double askPrice = 0;
  double bidPrice = 0;
  double minPrice = double.infinity;
  double maxPrice = double.negativeInfinity;
  double highPrice = double.negativeInfinity;
  double lowPrice = double.infinity;
  double priceGram24k = 0;
  double priceGram23k = 0;
  double priceGram22k = 0;
  double priceGram21k = 0;
  bool isLoading = true;
  late double height, width;
  // late String vendorId;

  late UserProfileBloc userProfileBloc;
  late VendorsAccountBloc vendorsAccountBloc;
  // late ActiveTradeBloc activeTradeBloc;
  // late PendingTradeBloc pendingTradeBloc;
  // late CompleteTradeBloc completeTradeBloc;
  int selectedAccountIndex = 0;
  int vendorId = 1;

  @override
  void initState() {
    super.initState();

    _initializeBlocs();

    _initializeChartDataAndConnectSocket();
  }

  void _initializeChartDataAndConnectSocket() async {
    await fetchInitialChartData();
    _connectWebSocket();
  }

  void _initializeBlocs() {
    userProfileBloc = UserProfileBloc(userProfileRepository: getIt())
      ..add(FetchUserProfileEvent());
    vendorsAccountBloc = VendorsAccountBloc(vendorsRepository: getIt())
      ..add(const FetchVendorsAccountEvent());
    // activeTradeBloc = ActiveTradeBloc(activeTradeRepository: getIt())
    //   ..add(FetchActiveTradeEvent(vendorId: vendorId.toString()));
    // pendingTradeBloc = PendingTradeBloc(pendingTradeRepository: getIt())
    //   ..add(FetchPendingTradeEvent(vendorId: vendorId.toString()));
    // completeTradeBloc = CompleteTradeBloc(completeTradeRepository: getIt())
    //   ..add(FetchCompleteTradeEvent(vendorId: vendorId.toString()));
  }

  Future<void> fetchInitialChartData() async {
    int endTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    int startTime = endTime - 1800; // Last 30 minutes

    String url =
        'http://pricefeed.dreamemirates.com/api/v1/market-price/?startTime=$startTime&endTime=$endTime';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      if (jsonResponse['success']) {
        List<ChartData> tempChartData = [];
        double tempMinPrice = double.infinity;
        double tempMaxPrice = double.negativeInfinity;
        double tempHighPrice = double.negativeInfinity;
        double tempLowPrice = double.infinity;

        for (var item in jsonResponse['data']) {
          var parsedTime = DateTime.fromMillisecondsSinceEpoch(
              int.parse(item['time']) * 1000);
          var parsedValue = double.parse(item['ask']);
          tempChartData.add(ChartData(parsedTime, parsedValue));

          if (parsedValue < tempMinPrice) tempMinPrice = parsedValue;
          if (parsedValue > tempMaxPrice) tempMaxPrice = parsedValue;
          if (parsedValue > tempHighPrice) tempHighPrice = parsedValue;
          if (parsedValue < tempLowPrice) tempLowPrice = parsedValue;
        }

        setState(() {
          chartData = tempChartData;
          minPrice = tempMinPrice;
          maxPrice = tempMaxPrice;
          highPrice = tempHighPrice;
          lowPrice = tempLowPrice;
          isLoading = false;
        });
      } else {
        print('Failed to load chart data: ${jsonResponse['message']}');
        setState(() {
          isLoading = false;
        });
      }
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      setState(() {
        isLoading = false;
      });
    }
  }

  Timer? _throttle;

  void _connectWebSocket() {
    channel.stream.listen((message) {
      if (_throttle == null || !_throttle!.isActive) {
        _throttle = Timer(const Duration(seconds: 1), () {
          Map<String, dynamic> getData = jsonDecode(message);

          setState(() {
            double newAskPrice = (getData['askPrice'] is int)
                ? (getData['askPrice'] as int).toDouble()
                : (getData['askPrice'] as double);

            askPrice = newAskPrice;
            bidPrice = (getData['bidPrice'] is int)
                ? (getData['bidPrice'] as int).toDouble()
                : (getData['bidPrice'] as double);

            // Add new data point with the current timestamp
            DateTime now = DateTime.now();
            chartData.add(ChartData(now, askPrice));

            // Limit the data points to the last 30 minutes
            DateTime cutoff = now.subtract(const Duration(minutes: 30));
            chartData.removeWhere((data) => data.time.isBefore(cutoff));

            // Update min and max prices
            minPrice = chartData.fold(double.infinity,
                (prev, element) => element.value < prev ? element.value : prev);
            maxPrice = chartData.fold(double.negativeInfinity,
                (prev, element) => element.value > prev ? element.value : prev);
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double yMin =
        minPrice.isFinite && minPrice != double.infinity ? minPrice - 1 : 0;
    double yMax = maxPrice.isFinite && maxPrice != double.negativeInfinity
        ? maxPrice + 1
        : 1;

    return Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: userProfileBloc),
              // BlocProvider.value(value: activeTradeBloc),
              // BlocProvider.value(value: pendingTradeBloc),
              // BlocProvider.value(value: completeTradeBloc)

              BlocProvider.value(value: GetIt.instance<ActiveTradeBloc>()),
              BlocProvider.value(value: GetIt.instance<CompleteTradeBloc>()),
              BlocProvider.value(value: GetIt.instance<PendingTradeBloc>()),
            ],
            child: Stack(
              children: [
                BackgroundWidgetDashboard(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 66.0, left: 15, right: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfileSection(),
                        const SizedBox(height: 5),
                        isLoading
                            ? Center(child: ChartSkelton())
                            : RepaintBoundary(
                                child: ChartWidget(
                                  yMin: yMin,
                                  yMax: yMax,
                                  askPrice: askPrice,
                                  bidPrice: bidPrice,
                                  highPrice: highPrice,
                                  lowPrice: lowPrice,
                                  chartData: chartData,
                                ),
                              ),
                        const SizedBox(height: 5),
                        ShowGoldCard(
                            priceGram21k: priceGram21k,
                            priceGram22k: priceGram22k,
                            priceGram23k: priceGram23k,
                            priceGram24k: priceGram24k),
                        30.h,
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: GlobalTextWidget(
                            title: 'Recent trades',
                            fontWeight: 500,
                            fontSize: 20,
                            opacity: .5,
                          ),
                        ),
                        _getActiveTrade(),
                        _getPendingTrade(),
                        _getCloseTrade(),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  Widget _buildUserProfileSection() {
    return BlocBuilder<VendorsAccountBloc, VendorsAccountState>(
      builder: (context, state) {
        switch (state.allVendorAccountList.status) {
          case Status.loading:
            return Center(
              child: _getAccountCardSkelton(),
            );
          case Status.error:
            return _buildErrorWidget(
              state.allVendorAccountList.message.toString(),
              onRetry: () =>
                  vendorsAccountBloc.add(const FetchVendorsAccountEvent()),
            );
          case Status.completed:
            final user = state.allVendorAccountList.data!.data;
            final imageUrl = user[selectedAccountIndex].logo?.path ??
                'assets/icons/photo-nehi.png';
            // final verdorId = user[0].id;

            final accountNames = user.map((account) => account.name).toList();
            final imageUrls = user
                .map((account) =>
                    account.logo?.path ?? 'assets/icons/photo-nehi.png')
                .toList();

            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: AppColors.backgroundColor,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return IntrinsicHeight(
                          child: AccountBottomSheet(
                            context: context,
                            accountName: accountNames,
                            accountCount: accountNames.length,
                            allAccountList: user,
                            selectedAccountIndex: selectedAccountIndex,
                            imageUrl: imageUrls,
                            onAccountTap: (index) {
                              setState(() {
                                vendorId = index.id;
                                //   selectedAccountIndex = user.indexOf(account);

                                print('vendor id my: $vendorId ');

                                // GetIt.instance<ActiveTradeBloc>().add(
                                //   FetchActiveTradeEvent(
                                //       vendorId: vendorId.toString()),
                                // );

                                // GetIt.instance<PendingTradeBloc>().add(
                                //   FetchPendingTradeEvent(
                                //       vendorId: vendorId.toString()),
                                // );
                                // GetIt.instance<CompleteTradeBloc>().add(
                                //   FetchCompleteTradeEvent(
                                //       vendorId: vendorId.toString()),
                                // );

                                context.read<ActiveTradeBloc>().add(
                                    FetchActiveTradeEvent(
                                        vendorId: vendorId.toString()));
                                context.read<PendingTradeBloc>().add(
                                    FetchPendingTradeEvent(
                                        vendorId: vendorId.toString()));
                                context.read<CompleteTradeBloc>().add(
                                    FetchCompleteTradeEvent(
                                        vendorId: vendorId.toString()));

                                // activeTradeBloc.add(FetchActiveTradeEvent(
                                //     vendorId: vendorId.toString()));
                                // pendingTradeBloc.add(FetchPendingTradeEvent(
                                //     vendorId: vendorId.toString()));

                                // completeTradeBloc.add(FetchCompleteTradeEvent(
                                //     vendorId: vendorId.toString()));

                                Navigator.pop(context);
                              });
                              if (kDebugMode) {
                                print(' Vendor id index from ui: $vendorId');
                              }
                            },
                            onAccountSelected: (index) {
                              setState(() {
                                selectedAccountIndex =
                                    index; // Update the selected index
                              });
                              if (kDebugMode) {
                                print(
                                    ' Select  index from ui: $selectedAccountIndex');
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: ImageWithTitle(
                    name: getFirstTwoWords(user[selectedAccountIndex].name),
                    // name: accountNames[selectedAccountIndex],
                    imageUrl: imageUrl.toString(),
                    isNeed: true,
                  ),
                ),
                const SizedBox(height: 30),
                MainBalanceCard(
                  title: "Account Balance",
                  currency: formatBalance(user[selectedAccountIndex]
                      .users[0]
                      .wallet[0]
                      .virtualTrading),
                  depositeTap: () {
                    print('Pressed deposit button');
                  },
                ),
              ],
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  String formatBalance(double balance) {
    return balance.toStringAsFixed(2);
  }

  String getFirstTwoWords(String fullName) {
    List<String> words = fullName.split(' ');
    return words.length >= 2 ? '${words[0]} ${words[1]}' : fullName;
  }

  _getAccountCardSkelton() {
    return AccountCardSkelton();
  }

  Widget _buildErrorWidget(String message, {VoidCallback? onRetry}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          if (onRetry != null)
            TextButton(onPressed: onRetry, child: const Text("Retry")),
        ],
      ),
    );
  }

  _getActiveTrade() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<ActiveTradeBloc, ActiveTradeState>(
          builder: (context, state) {
            switch (state.allActiveTrade.status) {
              // case Status.loading:
              //   return Center(
              //     child: TradeCardSkelton(),
              //   );
              case Status.error:
                return _buildErrorWidget(
                  state.allActiveTrade.message.toString(),
                  onRetry: () => context.read<ActiveTradeBloc>().add(
                      FetchActiveTradeEvent(vendorId: vendorId.toString())),
                );
              case Status.completed:
                // final activeTrade = state.allActiveTrade.data!.data!.result;
                final result = state.allActiveTrade.data?.data?.result;
                if (result == null || result.isEmpty) {
                  // Handle the case when result is empty or null
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('No active trades available.'),
                    ),
                  );
                }

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                      min(2, state.allActiveTrade.data!.data!.result.length),
                      (index) {
                    final activeTrade =
                        state.allActiveTrade.data!.data!.result[index];
                    return TradeCardWidget(
                      right: 0,
                      left: 0,
                      isOpenTrade: true,
                      id: activeTrade.id,
                      metal_type: activeTrade.metalType,
                      tradeType: activeTrade.tradeType,
                      liveRate: askPrice.toStringAsFixed(2),
                      color: Colors.green,
                      quantity: activeTrade.quantity,
                      openingRate: activeTrade.executedTradeOpenRate.toString(),
                    );
                  }),
                );

              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }

  _getPendingTrade() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<PendingTradeBloc, PendingTradeState>(
          builder: (context, state) {
            switch (state.allPendingTrade.status) {
              // case Status.loading:
              //   return Center(
              //     child: TradeCardSkelton(),
              //   );
              case Status.error:
                return _buildErrorWidget(
                  state.allPendingTrade.message.toString(),
                  onRetry: () => context.read<PendingTradeBloc>().add(
                      FetchPendingTradeEvent(vendorId: vendorId.toString())),
                );
              case Status.completed:
                final result = state.allPendingTrade.data?.data?.result;
                if (result == null || result.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('No pending trades available.'),
                    ),
                  );
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                      min(2, state.allPendingTrade.data!.data!.result.length),
                      (index) {
                    final pendingTrade =
                        state.allPendingTrade.data!.data!.result[index];
                    return TradeCardWidget(
                      right: 0,
                      left: 0,
                      isPendingTrade: true,
                      id: pendingTrade.id,
                      metal_type: pendingTrade.metalType,
                      tradeType: pendingTrade.tradeType,
                      liveRate: askPrice.toStringAsFixed(2),
                      color: Colors.green,
                      quantity: pendingTrade.quantity,
                      openingRateText: 'Trigger Rate: ',
                      openingRate:
                          pendingTrade.pendingTradeTriggerRate.toString(),
                    );
                  }),
                );

              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }

  _getCloseTrade() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<CompleteTradeBloc, CompleteTradeState>(
          builder: (context, state) {
            switch (state.allCompleteTrade.status) {
              case Status.loading:
                return Center(
                  child: TradeCardSkelton(),
                );
              case Status.error:
                return _buildErrorWidget(
                  state.allCompleteTrade.message.toString(),
                  onRetry: () => context.read<CompleteTradeBloc>().add(
                      FetchCompleteTradeEvent(vendorId: vendorId.toString())),
                );
              case Status.completed:
                // final completeTrade = state.allCompleteTrade.data!.data!.result;
                final result = state.allCompleteTrade.data?.data?.result;

                if (result == null || result.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('No complete trades available.'),
                    ),
                  );
                }

                return Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column only takes as much space as it needs
                  children: List.generate(
                      min(2, state.allCompleteTrade.data!.data!.result.length),
                      (index) {
                    final completeTrade =
                        state.allCompleteTrade.data!.data!.result[index];
                    return TradeCardWidget(
                      right: 0,
                      left: 0,
                      isCloseTrade: true,
                      id: completeTrade.id,
                      metal_type: completeTrade.metalType,
                      tradeType: completeTrade.tradeType,
                      liveRateText: 'Opening Rate: ',
                      liveRate: completeTrade.executedTradeOpenRate.toString(),
                      color: Colors.green,
                      quantity: completeTrade.quantity,
                      openingRateText: 'Close Rate: ',
                      openingRate:
                          completeTrade.executedTradeCloseRate.toString(),
                    );
                  }),
                );

              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}

class ChartData {
  final DateTime time;
  final double value;

  ChartData(this.time, this.value);
}
