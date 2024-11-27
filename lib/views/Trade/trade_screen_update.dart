// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/components/internet_exception_widget.dart';
import 'package:dream_emirates/models/activeTrade/active_trade_model.dart';
import 'package:dream_emirates/models/completeTrade/complete_trade_model.dart';
// import 'package:dream_emirates/models/activeTrade/active_trade_model.dart';
import 'package:dream_emirates/models/pendingTrade/pending_trade_model.dart';
import 'package:dream_emirates/models/vendors/vendors_model.dart';
import 'package:flutter/material.dart';
// import 'package:dream_emirates/models/models_barrel.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:dream_emirates/views/Trade/widgets/activetrade_card_skelton.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../bloc/bloc_barrel.dart';
import 'widgets/widgets.dart';
import 'dart:async';

class TradeScreenUpdate extends StatefulWidget {
  TradeScreenUpdate({
    super.key,
    required this.dashboardVendorId,
    required this.selectedAccountIndex,
  });
  String dashboardVendorId = '3';
  int selectedAccountIndex;

  @override
  State<TradeScreenUpdate> createState() => _TradeScreenUpdateState();
}

/*
class _TradeScreenUpdateState extends State<TradeScreenUpdate>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  late TabController tabController;
  // late ActiveTradeBloc activeTradeBloc;
  // late CompleteTradeBloc completeTradeBloc;
  // late PendingTradeBloc pendingTradeBloc;
  late VendorsAccountBloc vendorsAccountBloc;
  late int vendorId;
  late PriceBloc priceBloc;
  List<String> cachedAccountNames = [];
  List<String> cachedImageUrls = [];
  List<TradeResult> cachedActiveTrades = [];

  final StreamController<double> _plValueStreamController =
      StreamController<double>.broadcast();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    // vendorsAccountBloc = VendorsAccountBloc(vendorsRepository: getIt());
    // vendorsAccountBloc.add(const FetchVendorsAccountEvent());

    // activeTradeBloc = ActiveTradeBloc(activeTradeRepository: getIt());
    // completeTradeBloc = CompleteTradeBloc(completeTradeRepository: getIt());
    // pendingTradeBloc = PendingTradeBloc(pendingTradeRepository: getIt());
    priceBloc = GetIt.instance<PriceBloc>();

    _loadCachedVendorData();
    _loadCachedActiveTrades();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  void dispose() {
    tabController.dispose();
    vendorsAccountBloc.close();
    // activeTradeBloc.close();
    // completeTradeBloc.close();
    // pendingTradeBloc.close();
    _plValueStreamController.close();
    super.dispose();
  }

  Future<void> _loadCachedVendorData() async {
    final prefs = await SharedPreferences.getInstance();
    cachedAccountNames.clear();
    cachedImageUrls.clear();

    for (int i = 0; i < 10; i++) {
      final name = prefs.getString('vendor_${i}_name') ?? '';
      final imageUrl = prefs.getString('vendor_${i}_image') ?? '';
      if (name.isNotEmpty) cachedAccountNames.add(name);
      if (imageUrl.isNotEmpty) cachedImageUrls.add(imageUrl);
    }

    setState(() {});
  }

  void _cacheVendorData(List<Company> vendors) async {
    final prefs = await SharedPreferences.getInstance();
    for (var i = 0; i < vendors.length; i++) {
      final name = vendors[i].name ?? '';
      final imageUrl = vendors[i].logo?.path ?? '';
      await prefs.setString('vendor_${i}_name', name);
      await prefs.setString('vendor_${i}_image', imageUrl);
    }
  }

  Future<void> _cacheActiveTrades(List<TradeResult> activeTrades) async {
    final prefs = await SharedPreferences.getInstance();
    final tradesData =
        activeTrades.map((trade) => jsonEncode(trade.toJson())).toList();
    await prefs.setStringList('cachedActiveTrades', tradesData);
  }

  Future<void> _loadCachedActiveTrades() async {
    final prefs = await SharedPreferences.getInstance();
    final tradesData = prefs.getStringList('cachedActiveTrades');
    if (tradesData != null) {
      cachedActiveTrades = tradesData
          .map((trade) => TradeResult.fromJson(jsonDecode(trade)))
          .toList();
    }
    setState(() {});
  }

  void updateTotalPlValue(List<TradeResult> activeTrades) {
    double sum = 0.0;
    for (var trade in activeTrades) {
      String buyRate = '';
      String sellRate = '';
      if (priceBloc.state is PriceUpdated) {
        buyRate = (priceBloc.state as PriceUpdated).askPrice.toString();
        sellRate = (priceBloc.state as PriceUpdated).bidPrice.toString();
      }
      double executedTradeOpenRate = trade.executedTradeOpenRate;
      double quantity = trade.quantity.toDouble();
      double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
      double ttbToOZ = (quantity * 3.7462040);
      double tradingFee = 1 * ttbToOZ;
      double plValue = trade.tradeType == "BUY"
          ? (((double.tryParse(sellRate) ?? 0.0) * ttbToOZ) - totalValue) -
              tradingFee
          : (totalValue - ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ)) -
              tradingFee;
      sum += plValue;
    }
    _plValueStreamController.add(sum);
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: GetIt.instance<ActiveTradeBloc>()),
          BlocProvider.value(value: GetIt.instance<CompleteTradeBloc>()),
          BlocProvider.value(value: GetIt.instance<PendingTradeBloc>()),
          BlocProvider.value(value: GetIt.instance<VendorsAccountBloc>()),
          BlocProvider.value(value: priceBloc),
        ],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<VendorsAccountBloc, VendorsAccountState>(
              builder: (context, state) {
                List<Company>? allAccountList;

                if (state.allVendorAccountList.status == Status.completed) {
                  allAccountList = state.allVendorAccountList.data!.data;
                  _cacheVendorData(allAccountList);

                  vendorId = widget.dashboardVendorId == '0' ||
                          widget.dashboardVendorId.isEmpty
                      ? allAccountList[0].id
                      : int.parse(widget.dashboardVendorId);

                  // activeTradeBloc.add(
                  //     FetchActiveTradeEvent(vendorId: vendorId.toString()));
                  // pendingTradeBloc.add(
                  //     FetchPendingTradeEvent(vendorId: vendorId.toString()));
                  // completeTradeBloc.add(
                  //     FetchCompleteTradeEvent(vendorId: vendorId.toString()));
                }

                return BlocBuilder<PriceBloc, PriceState>(
                  builder: (context, priceState) {
                    String buyRate = '';
                    String sellRate = '';
                    if (priceState is PriceUpdated) {
                      buyRate = priceState.askPrice.toString();
                      sellRate = priceState.bidPrice.toString();
                    }

                    return StreamBuilder<double>(
                      stream: _plValueStreamController.stream,
                      initialData: 0.0,
                      builder: (context, snapshot) {
                        double totalPlValue = snapshot.data ?? 0.0;
                        print('Total accounts: ${allAccountList?.length ?? 0}');

                        return AppBarWidget(
                          accountsWidget: Accountswidget(
                            selectedAccountIndex: widget.selectedAccountIndex,
                            imageURl: cachedImageUrls,
                            accountName: cachedAccountNames,
                            accountCount: cachedAccountNames.length,
                            activeTradeBloc: activeTradeBloc,
                            pendingTradeBloc: pendingTradeBloc,
                            completeTradeBloc: completeTradeBloc,
                            allAccountList: allAccountList ?? [],
                          ),
                          tabController: tabController,
                          pLValue: totalPlValue.toStringAsFixed(2),
                          buyAmount: buyRate,
                          sellAmount: sellRate,
                        );
                      },
                    );
                  },
                );
              },
            ),

            ///
            ///
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  //active trade
                  BlocBuilder<ActiveTradeBloc, ActiveTradeState>(
                    builder: (context, state) {
                      if (state.allActiveTrade.status == Status.completed) {
                        final allTradeDetails = state.allActiveTrade.data;
                        var activeTraderesult = allTradeDetails!.data!.result;
                        _cacheActiveTrades(
                            activeTraderesult); // Cache active trades here
                        updateTotalPlValue(activeTraderesult);

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: activeTraderesult.length,
                          itemBuilder: (context, index) {
                            return BlocBuilder<PriceBloc, PriceState>(
                              builder: (context, priceState) {
                                String buyRate = '';
                                String sellRate = '';
                                if (priceState is PriceUpdated) {
                                  buyRate = priceState.askPrice.toString();
                                  sellRate = priceState.bidPrice.toString();
                                }

                                double executedTradeOpenRate =
                                    activeTraderesult[index]
                                        .executedTradeOpenRate;
                                double quantity = activeTraderesult[index]
                                    .quantity
                                    .toDouble();
                                double totalValue = executedTradeOpenRate *
                                    (quantity * 3.7462040);
                                double ttbToOZ = (quantity * 3.7462040);
                                double tradingFee = 1 * ttbToOZ;

                                double plValue =
                                    activeTraderesult[index].tradeType == "BUY"
                                        ? (((double.tryParse(sellRate) ?? 0.0) *
                                                    ttbToOZ) -
                                                totalValue) -
                                            tradingFee
                                        : (totalValue -
                                                ((double.tryParse(buyRate) ??
                                                        0.0) *
                                                    ttbToOZ)) -
                                            tradingFee;

                                double currentValue =
                                    activeTraderesult[index].tradeType == "BUY"
                                        ? ((double.tryParse(sellRate) ?? 0.0) *
                                            ttbToOZ)
                                        : ((double.tryParse(buyRate) ?? 0.0) *
                                            ttbToOZ);

                                return TabContentAction(
                                  id: activeTraderesult[index].id,
                                  metalType: activeTraderesult[index].metalType,
                                  quantity: quantity.toInt(),
                                  openingRate: executedTradeOpenRate.toString(),
                                  openingDate:
                                      activeTraderesult[index].createdAt,
                                  tradeType: activeTraderesult[index].tradeType,
                                  liveRate:
                                      activeTraderesult[index].tradeType ==
                                              "BUY"
                                          ? sellRate
                                          : buyRate,
                                  pLvalue: plValue.toStringAsFixed(2),
                                  plColor: activeTraderesult[index].tradeType ==
                                          "BUY"
                                      ? AppColors.green
                                      : const Color.fromARGB(255, 243, 9, 9),
                                  isOpenTrade: true,
                                  totalValue: totalValue.toStringAsFixed(2),
                                  currentValue: currentValue.toStringAsFixed(2),
                                );
                              },
                            );
                          },
                        );
                      } else {
                        return Center(
                            child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: 5,
                          itemBuilder: (context, index) =>
                              ActivetradeCardSkelton(),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                        ));

                        //  Center(child: ActivetradeCardSkelton());
                      }
                    },
                  ),

                  //       //pending trade
                  BlocBuilder<PendingTradeBloc, PendingTradeState>(
                    builder: (context, state) {
                      switch (state.allPendingTrade.status) {
                        case Status.error:
                          if (state.allPendingTrade.message ==
                              "No Internet Connection") {
                            return InterNetExceptionWidget(
                              onPress: () => pendingTradeBloc.add(
                                  FetchPendingTradeEvent(
                                      vendorId: vendorId.toString())),
                            );
                          }
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(state.allPendingTrade.message.toString()),
                              ],
                            ),
                          );
                        case Status.completed:
                          final allTradeDetails = state.allPendingTrade.data;
                          var activeTraderesult = allTradeDetails!.data!.result;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: activeTraderesult.length,
                            itemBuilder: (context, index) {
                              return BlocBuilder<PriceBloc, PriceState>(
                                builder: (context, priceState) {
                                  String buyAmount = '';
                                  String sellAmount = '';
                                  if (priceState is PriceUpdated) {
                                    buyAmount = priceState.askPrice.toString();
                                    sellAmount = priceState.bidPrice.toString();
                                  }

                                  return TabContentAction(
                                    id: activeTraderesult[index].id,
                                    metalType:
                                        activeTraderesult[index].metalType,
                                    quantity: activeTraderesult[index].quantity,

                                    openingRateText: 'Trigger Rate :',

                                    openingRate: activeTraderesult[index]
                                        .pendingTradeTriggerRate
                                        .toString(),
                                    openingDate:
                                        activeTraderesult[index].createdAt,
                                    tradeType:
                                        activeTraderesult[index].tradeType,
                                    // Set liveRate based on trade type
                                    liveRate:
                                        activeTraderesult[index].tradeType ==
                                                "BUY"
                                            ? sellAmount
                                            : buyAmount,

                                    plColor: activeTraderesult[index]
                                                .tradeType ==
                                            "BUY"
                                        ? AppColors.green
                                        : const Color.fromARGB(255, 243, 9, 9),

                                    pLvalue: '',
                                    isPendingTrade: true,
                                  );
                                },
                              );
                            },
                          );
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                  ),
                  //close trade.
                  BlocBuilder<CompleteTradeBloc, CompleteTradeState>(
                    builder: (context, state) {
                      switch (state.allCompleteTrade.status) {
                        // case Status.loading:
                        //   return const Center(child: LoadingWidget());
                        case Status.error:
                          if (state.allCompleteTrade.message ==
                              "No Internet Connection") {
                            return InterNetExceptionWidget(
                              onPress: () => completeTradeBloc.add(
                                  FetchCompleteTradeEvent(
                                      vendorId: vendorId.toString())),
                            );
                          }
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(state.allCompleteTrade.message.toString()),
                              ],
                            ),
                          );
                        case Status.completed:
                          final allTradeDetails = state.allCompleteTrade.data;
                          var activeTraderesult = allTradeDetails!.data!.result;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: activeTraderesult.length,
                            itemBuilder: (context, index) {
                              return BlocBuilder<PriceBloc, PriceState>(
                                builder: (context, priceState) {
                                  // Get buyAmount and sellAmount from PriceBloc state if available

                                  String buyRate = '';
                                  String sellRate = '';
                                  if (priceState is PriceUpdated) {
                                    buyRate = priceState.askPrice.toString();
                                    sellRate = priceState.bidPrice.toString();
                                  }

                                  double executedTradeOpenRate =
                                      activeTraderesult[index]
                                          .executedTradeOpenRate;
                                  double quantity = activeTraderesult[index]
                                      .quantity
                                      .toDouble();
                                  double totalValue = executedTradeOpenRate *
                                      (quantity * 3.7462040);
                                  double ttbToOZ = (quantity * 3.7462040);
                                  double tradingFee = 1 * ttbToOZ;

                                  return TabContentAction(
                                    id: activeTraderesult[index].id,
                                    metalType:
                                        activeTraderesult[index].metalType,
                                    quantity: activeTraderesult[index].quantity,
                                    // openingRate: activeTraderesult[index]
                                    //     .executedTradeOpenRate
                                    //     .toString(),

                                    openingDate:
                                        activeTraderesult[index].createdAt,
                                    tradeType:
                                        activeTraderesult[index].tradeType,
                                    // Set liveRate based on trade type
                                    liveRateText: 'Opening Rate : ',

                                    liveRate: activeTraderesult[index]
                                        .executedTradeOpenRate
                                        .toStringAsFixed(2),
                                    openingRateForCloseTrade:
                                        activeTraderesult[index]
                                            .executedTradeOpenRate
                                            .toStringAsFixed(2),

                                    pLvalue: activeTraderesult[index]
                                        .account!
                                        .amount
                                        .toStringAsFixed(2),
                                    openingRateText: 'Closed Rate: ',
                                    openingRate: activeTraderesult[index]
                                        .executedTradeCloseRate
                                        .toString(),

                                    plColor: activeTraderesult[index]
                                                .tradeType ==
                                            "BUY"
                                        ? AppColors.green
                                        : const Color.fromARGB(255, 243, 9, 9),
                                    isCloseTrade: true,
                                    closingPl: activeTraderesult[index]
                                        .account!
                                        .amount
                                        .toStringAsFixed(2),
                                  );
                                },
                              );
                            },
                          );
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */

class _TradeScreenUpdateState extends State<TradeScreenUpdate>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  late TabController tabController;
  late PriceBloc priceBloc;
  late String currentVendorId;

  List<String> cachedAccountNames = [];
  List<String> cachedImageUrls = [];
  List<TradeResult> cachedActiveTrades = [];

  final StreamController<double> _plValueStreamController =
      StreamController<double>.broadcast();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    priceBloc = GetIt.instance<PriceBloc>();

    // currentVendorId = widget.dashboardVendorId.isEmpty
    //     ? '1' // Default to Vendor 1 if no ID is passed
    //     : widget.dashboardVendorId;

    _loadCachedVendorData();
    _loadCachedActiveTrades();
  }

  @override
  void dispose() {
    tabController.dispose();
    _plValueStreamController.close();
    super.dispose();
  }

  Future<void> _loadCachedVendorData() async {
    final prefs = await SharedPreferences.getInstance();
    cachedAccountNames.clear();
    cachedImageUrls.clear();

    for (int i = 0; i < 10; i++) {
      final name = prefs.getString('vendor_${i}_name') ?? '';
      final imageUrl = prefs.getString('vendor_${i}_image') ?? '';
      if (name.isNotEmpty) cachedAccountNames.add(name);
      if (imageUrl.isNotEmpty) cachedImageUrls.add(imageUrl);
    }
    setState(() {});
  }

  Future<void> _cacheVendorData(List<Company> vendors) async {
    final prefs = await SharedPreferences.getInstance();
    for (var i = 0; i < vendors.length; i++) {
      await prefs.setString('vendor_${i}_name', vendors[i].name ?? '');
      await prefs.setString('vendor_${i}_image', vendors[i].logo?.path ?? '');
    }
  }

  Future<void> _loadCachedActiveTrades() async {
    final prefs = await SharedPreferences.getInstance();
    final tradesData = prefs.getStringList('cachedActiveTrades');
    if (tradesData != null) {
      cachedActiveTrades = tradesData
          .map((trade) => TradeResult.fromJson(jsonDecode(trade)))
          .toList();
    }
    setState(() {});
  }

  Future<void> _cacheActiveTrades(List<TradeResult> activeTrades) async {
    final prefs = await SharedPreferences.getInstance();
    final tradesData =
        activeTrades.map((trade) => jsonEncode(trade.toJson())).toList();
    await prefs.setStringList('cachedActiveTrades', tradesData);
  }

  void updateTotalPlValue(List<TradeResult> activeTrades) {
    double sum = 0.0;
    for (var trade in activeTrades) {
      String buyRate = '';
      String sellRate = '';
      if (priceBloc.state is PriceUpdated) {
        buyRate = (priceBloc.state as PriceUpdated).askPrice.toString();
        sellRate = (priceBloc.state as PriceUpdated).bidPrice.toString();
      }
      double executedTradeOpenRate = trade.executedTradeOpenRate;
      double quantity = trade.quantity.toDouble();
      double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
      double ttbToOZ = (quantity * 3.7462040);
      double tradingFee = 1 * ttbToOZ;

      double plValue = trade.tradeType == "BUY"
          ? (((double.tryParse(sellRate) ?? 0.0) * ttbToOZ) - totalValue) -
              tradingFee
          : (totalValue - ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ)) -
              tradingFee;

      sum += plValue;
    }
    _plValueStreamController.add(sum);
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: GetIt.instance<ActiveTradeBloc>()),
          BlocProvider.value(value: GetIt.instance<CompleteTradeBloc>()),
          BlocProvider.value(value: GetIt.instance<PendingTradeBloc>()),
          BlocProvider.value(value: GetIt.instance<VendorsAccountBloc>()),
          BlocProvider.value(value: GetIt.instance<PriceBloc>()),
        ],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<VendorsAccountBloc, VendorsAccountState>(
              builder: (context, state) {
                List<Company>? allAccountList;

                if (state.allVendorAccountList.status == Status.completed) {
                  allAccountList = state.allVendorAccountList.data!.data;
                  _cacheVendorData(allAccountList);

                  final vendorId = widget.dashboardVendorId == '0' ||
                          widget.dashboardVendorId.isEmpty
                      ? allAccountList[0].id
                      : int.parse(widget.dashboardVendorId);

                  // context.read<ActiveTradeBloc>().add(
                  //     FetchActiveTradeEvent(vendorId: vendorId.toString()));

                  print("Vendor ID used for fetching trades: $vendorId");
                }

                return BlocBuilder<PriceBloc, PriceState>(
                  builder: (context, priceState) {
                    String buyRate = '';
                    String sellRate = '';
                    if (priceState is PriceUpdated) {
                      buyRate = priceState.askPrice.toString();
                      sellRate = priceState.bidPrice.toString();
                    }

                    print('Select index ${widget.selectedAccountIndex}');

                    return StreamBuilder<double>(
                      stream: _plValueStreamController.stream,
                      initialData: 0.0,
                      builder: (context, snapshot) {
                        double totalPlValue = snapshot.data ?? 0.0;

                        return AppBarWidget(
                          accountsWidget: Accountswidget(
                            selectedAccountIndex: widget.selectedAccountIndex,
                            imageURl: cachedImageUrls,
                            accountName: cachedAccountNames,
                            accountCount: cachedAccountNames.length,
                            allAccountList: allAccountList ?? [],
                            activeTradeBloc: GetIt.instance<
                                ActiveTradeBloc>(), // Retrieve from GetIt
                            pendingTradeBloc: GetIt.instance<
                                PendingTradeBloc>(), // Retrieve from GetIt
                            completeTradeBloc: GetIt.instance<
                                CompleteTradeBloc>(), // Retrieve from GetIt
                          ),
                          tabController: tabController,
                          pLValue: totalPlValue.toStringAsFixed(2),
                          buyAmount: buyRate,
                          sellAmount: sellRate,
                        );
                      },
                    );
                  },
                );
              },
            ),

            ///
            ///
            ///
            ///

            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  _buildActiveTradeTab(),
                  _buildPendingTradeTab(),
                  _buildCompleteTradeTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  ///

  Widget _buildActiveTradeTab() {
    return BlocBuilder<ActiveTradeBloc, ActiveTradeState>(
      builder: (context, state) {
        // Directly access preloaded active trades
        final activeTrades = state.allActiveTrade.data?.data?.result ?? [];

        // Update the total PL value
        updateTotalPlValue(activeTrades);

        // Cache active trades if the vendor ID matches
        //   if (currentVendorId == '1') {
        _cacheActiveTrades(activeTrades);
        //  }

        // Render the trade cards
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: activeTrades.length,
          itemBuilder: (context, index) {
            return _buildTradeCard(activeTrades[index]);
          },
        );
      },
    );
  }

/* 
  Widget _buildActiveTradeTab() {
    return BlocBuilder<ActiveTradeBloc, ActiveTradeState>(
      builder: (context, state) {
        if (state.allActiveTrade.status == Status.completed) {
          final activeTrades = state.allActiveTrade.data!.data!.result;
          //_cacheActiveTrades(activeTrades);
          updateTotalPlValue(activeTrades);

          // Cache the fetched data only if the vendor ID matches
          if (currentVendorId == '1') {
            // _cacheActiveTrades(activeTrades);
          }

          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: activeTrades.length,
            itemBuilder: (context, index) {
              return _buildTradeCard(activeTrades[index]);
            },
          );
        }
        return const Center(child: Text("No Active Trades Available"));

/*
        if (cachedActiveTrades.isNotEmpty && currentVendorId == '1') {
          // Use cached/preloaded data
          updateTotalPlValue(cachedActiveTrades);
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: cachedActiveTrades.length,
            itemBuilder: (context, index) {
              return _buildTradeCard(cachedActiveTrades[index]);
            },
          );
        } else {
          // Fallback in case preloaded data isn't available
          return BlocBuilder<ActiveTradeBloc, ActiveTradeState>(
            builder: (context, state) {
              if (state.allActiveTrade.status == Status.completed) {
                final activeTrades = state.allActiveTrade.data!.data!.result;
                //_cacheActiveTrades(activeTrades);
                updateTotalPlValue(activeTrades);

                // Cache the fetched data only if the vendor ID matches
                if (currentVendorId == '1') {
                  _cacheActiveTrades(activeTrades);
                }

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: activeTrades.length,
                  itemBuilder: (context, index) {
                    return _buildTradeCard(activeTrades[index]);
                  },
                );
              }
              return const Center(child: Text("No Active Trades Available"));
            },
          );
        }


        */
      },
    );
  }
*/

  Widget _buildTradeCard(TradeResult trade) {
    return BlocBuilder<PriceBloc, PriceState>(
      builder: (context, priceState) {
        String buyRate = '';
        String sellRate = '';
        if (priceState is PriceUpdated) {
          buyRate = priceState.askPrice.toString();
          sellRate = priceState.bidPrice.toString();
        }

        double executedTradeOpenRate = trade.executedTradeOpenRate;
        print('executedTradeOpenRate 00: $executedTradeOpenRate');

        double quantity = trade.quantity.toDouble();
        double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
        double ttbToOZ = (quantity * 3.7462040);
        double tradingFee = 1 * ttbToOZ;

        double plValue = trade.tradeType == "BUY"
            ? (((double.tryParse(sellRate) ?? 0.0) * ttbToOZ) - totalValue) -
                tradingFee
            : (totalValue - ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ)) -
                tradingFee;

        double currentValue = trade.tradeType == "BUY"
            ? ((double.tryParse(sellRate) ?? 0.0) * ttbToOZ)
            : ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ);

        return TabContentAction(
          id: trade.id,
          metalType: trade.metalType,
          quantity: quantity.toInt(),
          openingRate: executedTradeOpenRate.toString(),
          openingDate: trade.createdAt,
          tradeType: trade.tradeType,
          liveRate: trade.tradeType == "BUY" ? sellRate : buyRate,
          pLvalue: plValue.toStringAsFixed(2),
          plColor: trade.tradeType == "BUY"
              ? AppColors.green
              : const Color.fromARGB(255, 243, 9, 9),
          isOpenTrade: true,
          totalValue: totalValue.toStringAsFixed(2),
          currentValue: currentValue.toStringAsFixed(2),
        );
      },
    );
  }

  // Widget _buildPendingTradeTab() {
  //   // Add pending trades UI here
  //   return const SizedBox();
  // }

  Widget _buildPendingTradeTab() {
    return BlocBuilder<PendingTradeBloc, PendingTradeState>(
      builder: (context, state) {
        // Directly access preloaded active trades
        final activeTrades = state.allPendingTrade.data?.data?.result ?? [];

        // Update the total PL value
        // updateTotalPlValue(activeTrades);

        // Cache active trades if the vendor ID matches
        //   if (currentVendorId == '1') {
        // _cacheActiveTrades(activeTrades);
        //  }

        // Render the trade cards
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: activeTrades.length,
          itemBuilder: (context, index) {
            return _buildPendingTradeCard(activeTrades[index]);
          },
        );
      },
    );
  }

  Widget _buildPendingTradeCard(PendingTradeResult trade) {
    return BlocBuilder<PriceBloc, PriceState>(
      builder: (context, priceState) {
        String buyRate = '';
        String sellRate = '';
        print('comingggggggggggggggggggggggggggggg');

        if (priceState is PriceUpdated) {
          buyRate = priceState.askPrice.toString();
          sellRate = priceState.bidPrice.toString();
        }

        double executedTradeOpenRate = trade.pendingTradeTriggerRate;
        print('executedTradeOpenRate 00: $executedTradeOpenRate');

        double quantity = trade.quantity.toDouble();
        double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
        double ttbToOZ = (quantity * 3.7462040);
        double tradingFee = 1 * ttbToOZ;

        double plValue = trade.tradeType == "BUY"
            ? (((double.tryParse(sellRate) ?? 0.0) * ttbToOZ) - totalValue) -
                tradingFee
            : (totalValue - ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ)) -
                tradingFee;

        double currentValue = trade.tradeType == "BUY"
            ? ((double.tryParse(sellRate) ?? 0.0) * ttbToOZ)
            : ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ);

        return TabContentAction(
          id: trade.id,
          metalType: trade.metalType,
          quantity: quantity.toInt(),
          openingRate: executedTradeOpenRate.toString(),
          openingDate: trade.createdAt,
          tradeType: trade.tradeType,
          liveRate: trade.tradeType == "BUY" ? sellRate : buyRate,
          pLvalue: plValue.toStringAsFixed(2),
          plColor: trade.tradeType == "BUY"
              ? AppColors.green
              : const Color.fromARGB(255, 243, 9, 9),
          isOpenTrade: true,
          totalValue: totalValue.toStringAsFixed(2),
          currentValue: currentValue.toStringAsFixed(2),
        );
      },
    );
  }

/*
  Widget _buildCompleteTradeTab() {
    return BlocBuilder<CompleteTradeBloc, CompleteTradeState>(
      builder: (context, state) {
        // Directly access preloaded active trades
        final completeTrades = state.allCompleteTrade.data?.data?.result ?? [];
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: completeTrades.length,
          itemBuilder: (context, index) {
            return _buildCompleteTradeCard(completeTrades[index]);
          },
        );
      },
    );
  }

  Widget _buildCompleteTradeCard(CompleteTradeResult trade) {
    return BlocBuilder<PriceBloc, PriceState>(
      builder: (context, priceState) {
        String buyRate = '';
        String sellRate = '';
        print('comingggggggggggggggggggggggggggggg');

        if (priceState is PriceUpdated) {
          buyRate = priceState.askPrice.toString();
          sellRate = priceState.bidPrice.toString();
        }

        double executedTradeOpenRate = trade.executedTradeOpenRate;
        print('executedTradeOpenRate 00: $executedTradeOpenRate');

        double quantity = trade.quantity.toDouble();
        double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
        double ttbToOZ = (quantity * 3.7462040);
        double tradingFee = 1 * ttbToOZ;

        double plValue = trade.tradeType == "BUY"
            ? (((double.tryParse(sellRate) ?? 0.0) * ttbToOZ) - totalValue) -
                tradingFee
            : (totalValue - ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ)) -
                tradingFee;

        double currentValue = trade.tradeType == "BUY"
            ? ((double.tryParse(sellRate) ?? 0.0) * ttbToOZ)
            : ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ);

        return
        
         TabContentAction(
          id: trade.id,
          metalType: trade.metalType,
          quantity: quantity.toInt(),
          openingRate: executedTradeOpenRate.toString(),
          openingDate: trade.createdAt,
          tradeType: trade.tradeType,
          liveRate: trade.tradeType == "BUY" ? sellRate : buyRate,
          pLvalue: plValue.toStringAsFixed(2),
          plColor: trade.tradeType == "BUY"
              ? AppColors.green
              : const Color.fromARGB(255, 243, 9, 9),
          isOpenTrade: true,
          totalValue: totalValue.toStringAsFixed(2),
          currentValue: currentValue.toStringAsFixed(2),
        );



      },
    );
  }
*/

  Widget _buildCompleteTradeTab() {
    return BlocBuilder<CompleteTradeBloc, CompleteTradeState>(
      builder: (context, state) {
        switch (state.allCompleteTrade.status) {
          // case Status.error:
          //   if (state.allCompleteTrade.message == "No Internet Connection") {
          //     return InterNetExceptionWidget(
          //       onPress: () => context.read<CompleteTradeBloc>().add(
          //             FetchCompleteTradeEvent(vendorId: vendorId.toString()),
          //           ),
          //     );
          //   }
          //   return Center(
          //     child:
          //         Text(state.allCompleteTrade.message ?? "An error occurred"),
          //   );

          case Status.completed:
            // Access completed trades directly
            final completeTrades =
                state.allCompleteTrade.data?.data?.result ?? [];

            // Render the trade cards
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: completeTrades.length,
              itemBuilder: (context, index) {
                return _buildCompleteTradeCard(completeTrades[index]);
              },
            );

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildCompleteTradeCard(CompleteTradeResult trade) {
    return BlocBuilder<PriceBloc, PriceState>(
      builder: (context, priceState) {
        String buyRate = '';
        String sellRate = '';

        if (priceState is PriceUpdated) {
          buyRate = priceState.askPrice.toString();
          sellRate = priceState.bidPrice.toString();
        }

        double executedTradeOpenRate = trade.executedTradeOpenRate;
        double quantity = trade.quantity.toDouble();
        double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
        double ttbToOZ = (quantity * 3.7462040);
        double tradingFee = 1 * ttbToOZ;

        double plValue = trade.tradeType == "BUY"
            ? (((double.tryParse(sellRate) ?? 0.0) * ttbToOZ) - totalValue) -
                tradingFee
            : (totalValue - ((double.tryParse(buyRate) ?? 0.0) * ttbToOZ)) -
                tradingFee;

        return TabContentAction(
          id: trade.id,
          metalType: trade.metalType,
          quantity: trade.quantity,
          openingRate: executedTradeOpenRate.toString(),
          openingDate: trade.createdAt,
          tradeType: trade.tradeType,
          liveRate: trade.tradeType == "BUY" ? sellRate : buyRate,
          pLvalue: plValue.toStringAsFixed(2),
          plColor: trade.tradeType == "BUY"
              ? AppColors.green
              : const Color.fromARGB(255, 243, 9, 9),
          isCloseTrade: true,
          closingPl: trade.account?.amount?.toStringAsFixed(2) ?? '0.00',
        );
      },
    );
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
}

// Widget _buildSkeletonList() {
//   return Center(
//     child: ListView.separated(
//       padding: EdgeInsets.zero,
//       itemCount: 5,
//       itemBuilder: (context, index) => ActivetradeCardSkelton(),
//       separatorBuilder: (context, index) => const SizedBox(height: 10),
//     ),
//   );
// }
