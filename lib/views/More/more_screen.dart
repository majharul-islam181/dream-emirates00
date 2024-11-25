// ignore_for_file: unused_import

import 'dart:async';
import 'dart:io';
import 'package:dream_emirates/bloc/bloc_barrel.dart';
import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/services/storage/local_storage.dart';
import 'package:dream_emirates/views/Account/widgets/account_card_skelton.dart';
import 'package:dream_emirates/views/Dashboard/dashboard_screen.dart';
import 'package:dream_emirates/views/More/more_barrel.dart';
import 'package:dream_emirates/views/More/widgets/profile_details.dart';
import 'package:dream_emirates/views/Pdf/pdf_generate.dart';
import 'package:dream_emirates/views/Pdf/subtotal.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:pdf/pdf.dart';
import 'package:dream_emirates/views/Pdf/label_row.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../config/config_barrel.dart';
import '../../utils/utils_barrel.dart';
import '../Trade/widgets/widgets.dart';
import 'widgets/widgets.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  late TabController tabController;
  // late PriceBloc priceBloc;
  late UserProfileBloc userProfileBloc;

  late StatementBloc statementBloc;
  String pageTitle = "";

  final currentDate = DateFormat('dd-MMMM-yyyy').format(DateTime.now());

  final currentTime = DateFormat('hh:mm a').format(DateTime.now());
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    statementBloc = StatementBloc(getUserStatementRepo: getIt())
      ..add(FetchStatementEvent(vendorId: '1'));

    userProfileBloc = UserProfileBloc(userProfileRepository: getIt())
      ..add(FetchUserProfileEvent());
  }

  Future<void> _clearCachedProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('cachedUserName');
    await prefs.remove('cachedImageUrl');
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
    statementBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: MultiBlocProvider(
          providers: [
            // BlocProvider.value(value: priceBloc),
            BlocProvider.value(value: statementBloc),
            BlocProvider.value(value: GetIt.instance<PriceBloc>()),
          ],
          child: Column(
            children: [
              _getAppBar(),
              const SizedBox(
                height: 20,
              ),
              Expanded(child: _getBody()),
            ],
          ),
        ));
  }

  _getAppBar() {
    return BlocBuilder<PriceBloc, PriceState>(
      builder: (context, priceState) {
        String buyRate = '';
        String sellRate = '';
        if (priceState is PriceUpdated) {
          buyRate = priceState.askPrice.toString();
          sellRate = priceState.bidPrice.toString();
        }

        return ContainerWidet(
          initialHeight: height * .16,
          initialWidth: width,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 54.0, left: 16, right: 16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AccountActionsWidget(),
                  ],
                ),
                20.h,
                //p/l
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //p/L
                    const PLWidget(
                      amount: '0.00',
                    ),
                    //buy and sell
                    BuySellActionsWidget(
                      buyAmount: buyRate,
                      sellAmount: sellRate,
                    ),
                  ],
                ),
                5.h,
              ],
            ),
          ),
        );
      },
    );
  }

  _getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<UserProfileBloc, UserProfileState>(
            builder: (context, state) {
              switch (state.getUserProfileData.status) {
                case Status.loading:
                  return const Center(child: LoadingWidget());

                case Status.error:
                  return const Text('error');
                case Status.completed:
                  final getProfileData =
                      state.getUserProfileData.data!.data!.user;

                  return ProfileDetails(
                    city: getProfileData!.city,
                    country: getProfileData.country,
                    email: getProfileData.email.toString(),
                    phoneNumber: getProfileData.phoneNumber,
                    userName: getProfileData.name,
                    account_verify: getProfileData.accountVerify,
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
          ),

          15.h,

          //statement Affilications Calculator MoreServices
          ContainerWidet(
            initialHeight: height * .26,
            initialWidth: width * .9,
            backgroundColor: Colors.white,
            borderRadious: 10,
            borderColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //for pdf Must needed
                  /*
                  BlocBuilder<StatementBloc, StatementState>(
                    builder: (context, state) {
                      switch (state.getStatement.status) {
                        case Status.loading:
                          return const Center(child: LoadingWidget()
                              // _loadingCardMorePage()

                              );

                        case Status.error:
                          return const Text('error');
                        case Status.completed:
                          String userName = state
                              .getStatement.data!.data.summary.name
                              .toString();
                          String marketPrice = state
                              .getStatement.data!.data.goldPrice.askPrice
                              .toString();
                          String marginLimit = state
                              .getStatement.data!.data.goldPrice.bidPrice
                              .toString();

                          double balance =
                              state.getStatement.data!.data.summary.balance;

                          double deposite = state.getStatement.data!.data
                              .transactionSummary.totalDeposit;
                          double withDraw = state.getStatement.data!.data
                              .transactionSummary.totalWithdraw;
                          double profitLoss = state
                              .getStatement.data!.data.summary.netProfitLoss;
                          double totall = state
                              .getStatement.data!.data.summary.netOpenPrice;
                          double currentValueUSD = state
                              .getStatement.data!.data.summary.currentValueUSD;
                          double currentProfitLossUSD = state.getStatement.data!
                              .data.summary.currentProfitLossUSD;
                          double currentProfitLossAED = state.getStatement.data!
                              .data.summary.currentProfitLossAED;
                          double netBalance =
                              state.getStatement.data!.data.summary.netBalance;
                          double withDrawableBalance = state.getStatement.data!
                              .data.summary.withdrawableBalance;

                          //active trade
                          int activeTableLength = state
                              .getStatement.data!.data.activeTradeArray.length;
                          double buyWeight = state.getStatement.data!.data
                              .activeTradeSummary.buyWeight;
                          double sellWeight = state.getStatement.data!.data
                              .activeTradeSummary.sellWeight;
                          double activeTradePnl = state.getStatement.data!.data
                              .activeTradeSummary.profitLossAED;

                          List<ActiveTrade> activeTradeArray = state
                              .getStatement.data!.data.activeTradeArray
                              .map((trade) {
                            return ActiveTrade(
                              serialNo: trade.id.toString(),
                              createdAt: trade.createdAt,
                              item: trade.metalType,
                              pcs: trade.quantity,
                              buySell: trade.tradeType,
                              qtyOnz: trade.quantity / 0.0374620,
                              openRate: trade.executedTradeOpenRate,
                              totalOnz: trade.quantity * 3.75,
                              pnlAed: trade.profitLossAED,
                            );
                          }).toList();

                          //complete trade

                          List<CompleteTrade> completeTradeArray = state
                              .getStatement.data!.data.completedTradeArray
                              .map((trade) {
                            return CompleteTrade(
                                serialNo: trade.id.toString(),
                                item: trade.metalType,
                                createdAt: trade.createdAt,
                                pcs: trade.quantity,
                                buySell: trade.tradeType,
                                openRate: trade.executedTradeOpenRate,
                                accountDateTime: trade.account.createdAt,
                                oppositeBuySell:
                                    trade.tradeType == 'BUY' ? 'SELL' : 'BUY',
                                closeRate: trade.executedTradeCloseRate,
                                pnlAed: trade.account.amount);
                          }).toList();

                          int completeTableLength = state.getStatement.data!
                              .data.completedTradeArray.length;
                          double combuyWeight = state.getStatement.data!.data
                              .completedTradeSummary.buyWeight;
                          double comsellWeight = state.getStatement.data!.data
                              .completedTradeSummary.sellWeight;
                          double comactiveTradePnl = state.getStatement.data!
                              .data.completedTradeSummary.netProfit;

                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ActionButtonWidget(
                                title: AppStrings.statement,
                                imageSVG: 'assets/icons/statements.svg',
                                onPressed: () {
                                  //context.go('/more/statement');
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          const StatementScreen(),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        return FadeTransition(
                                          opacity: animation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );

// await
                                  // final pdfFile = await _generatePdf(
                                  //     userName,
                                  //     marketPrice,
                                  //     marginLimit,
                                  //     activeTableLength,
                                  //     buyWeight,
                                  //     sellWeight,
                                  //     activeTradePnl,
                                  //     balance,
                                  //     deposite,
                                  //     withDraw,
                                  //     profitLoss,
                                  //     totall,
                                  //     currentValueUSD,
                                  //     currentProfitLossUSD,
                                  //     currentProfitLossAED,
                                  //     netBalance,
                                  //     withDrawableBalance,
                                  //     activeTradeArray,
                                  //     completeTableLength,
                                  //     completeTradeArray,
                                  //     combuyWeight,
                                  //     comsellWeight,
                                  //     comactiveTradePnl);
                                  // // Close the loading dialog
                                  // //  Navigator.of(context).pop(); // Pass pageTitle
                                  // await Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         PdfPreviewPage(pdfFile: pdfFile),
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          );
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                  ),
*/

                  ActionButtonWidget(
                    title: AppStrings.statement,
                    imageSVG: 'assets/icons/statements.svg',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const StatementScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),

                  // affilitions
                  ActionButtonWidget(
                    title: AppStrings.affilitions,
                    imageSVG: 'assets/icons/affiliations.svg',
                    onPressed: () {
                      FlashBarHelper.flushBarErrorMessage(
                          'This will coming soon', context);
                    },
                  ),
                  // calculator

                  ActionButtonWidget(
                    title: AppStrings.calculator,
                    imageSVG: 'assets/icons/calculator.svg',
                    onPressed: () {
                      //will changed
                      FlashBarHelper.flushBarErrorMessage(
                          'This will coming soon', context);
                    },
                  ),
                  // more services
                  ActionButtonWidget(
                    title: AppStrings.moreServices,
                    imageSVG: 'assets/icons/more_services.svg',
                    onPressed: () {
                      FlashBarHelper.flushBarErrorMessage(
                          'This will coming soon', context);
                    },
                  ),
                ],
              ),
            ),
          ),

          50.h,

          Padding(
            padding: const EdgeInsets.only(right: 40.0, left: 30),
            child: ActionButtonWidget(
              borderWidth: 0,
              title: AppStrings.logout,
              imageColor: AppColors.red,
              textColor: AppColors.red,
              imageSVG: 'assets/icons/logout.svg',
              onPressed: () {
                _showConfirmLogout();
              },
            ),
          ),

          80.h,
        ],
      ),
    );
  }

  _showConfirmLogout() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        message: const Text("Would you like to log out?"),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              // Show loading indicator
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const Center(
                    child: CupertinoActivityIndicator(
                      color: AppColors.purple,
                    ), // Show loading indicator
                  );
                },
              );

              LocalStorage localStorage = LocalStorage();

              // Clear stored values
              localStorage.clearValue('token').then((_) {
                localStorage.clearValue('isLogin').then((_) {
                  // Clear cached user profile data
                  _clearCachedProfileData().then((_) {
                    Timer(
                      const Duration(seconds: 2),
                      () {
                        Navigator.of(context).pop();
                        context.go('/login');
                      },
                    );
                  });
                });
              });
            },
            child: const Text(
              "Log Out",
            ),
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  Future<File> _generatePdf(
    String title,
    String marketPrice,
    String marginLimit,
    int activeTableLength,
    double buyWeight,
    double sellWeight,
    double activeTradePnl,
    double balance,
    double deposite,
    double withDraw,
    double profitLoss,
    double totall,
    double currentValueUSD,
    double currentProfitLossUSD,
    double currentProfitLossAED,
    double netBalance,
    double withDrawableBalance,
    List<ActiveTrade> activeTradeArray,
    int completeTableLength,
    List<CompleteTrade> completeTradeArray,
    double combuyWeight,
    double comsellWeight,
    double comactiveTradePnl,
  ) async {
    double buyQuantity = buyWeight / 116.52;
    double sellQuantity = sellWeight / 116.52;
    double netQuantity = buyQuantity - sellQuantity;
    String typePositon = netQuantity >= 0 ? "BUY" : "SELL";

    //complete trade quantity
    double combuyQuantity = combuyWeight / 116.52;
    double comsellQuantity = comsellWeight / 116.52;
    double comnetQuantity = combuyQuantity - sellQuantity;
    String comtypePositon = comnetQuantity >= 0 ? "BUY" : "SELL";

    double goldOnz = (buyWeight - sellWeight) / 31.11348464;
    double goldTTB = (buyWeight - sellWeight) / 116.52;

    List<String> dataValue = [
      balance.toString(),
      deposite.toString(),
      withDraw.toString(),
      profitLoss.toString(),
      goldOnz.toString(),
      goldTTB.toString(),
      totall.toString(),
      currentValueUSD.toString(),
      currentProfitLossUSD.toString(),
      currentProfitLossAED.toString(),
      netBalance.toString(),
      withDrawableBalance.toString()

      // Including deposit in the data
    ];

    final List<List<String>> activeTableData = activeTradeArray.map((trade) {
      return [
        trade.serialNo,
        formatDateTime(
          trade.createdAt,
        ),
        // Ensure createdAt is formatted as a string
        trade.item,
        trade.pcs.toString(),
        trade.buySell,
        trade.qtyOnz.toString(),
        trade.openRate.toString(),
        trade.totalOnz.toString(),
        trade.pnlAed.toString(),
      ];
    }).toList();

// Generating the table data
    final List<List<String>> completeTableData =
        completeTradeArray.map((trade) {
      return [
        trade.serialNo,
        trade.item,

        formatDateTime(trade.createdAt.toString()),
        // Ensure createdAt is formatted as a string
        trade.pcs.toString(),
        trade.buySell,
        trade.openRate.toString(),
        formatDateTime(
          trade.accountDateTime.toString(),
        ),
        // Ensure accountDateTime is formatted as a string
        trade.oppositeBuySell,
        trade.closeRate.toString(),
        trade.pnlAed.toString(), // Ensure pnlAed is formatted as a string
      ];
    }).toList();

    final pdf = pw.Document();
    final List<List<String>> tableDataMainCard =
        List.generate(1, (_) => dataValue);
//  final List<List<String>> tableDataMainCard = [dataValue];

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a3,
        build: (pw.Context context) => [
          //name and date
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                title,
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Column(children: [
                pw.Text(
                  currentDate,
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.normal),
                ),
                pw.SizedBox(width: 5),
                pw.Text(
                  currentTime,
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.normal),
                ),
              ]),
            ],
          ),
          pw.Text("Statement from AllTime",
              style: const pw.TextStyle(fontSize: 14)),

          pw.SizedBox(height: 20),
          pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text("Market Price: $marketPrice",
                    style: pw.TextStyle(
                        fontSize: 12, fontWeight: pw.FontWeight.bold)),
                pw.Text("Margin Limit: $marginLimit",
                    style: pw.TextStyle(
                        fontSize: 12, fontWeight: pw.FontWeight.bold)),
              ]),

          pw.SizedBox(height: 20),
          pw.Table.fromTextArray(
            headers: [
              'Balance',
              'Deposite',
              'Withdraw',
              'Profit-Loss',
              'Gold (Onz)',
              'Gold (TTB)',
              r'Total ($)',
              r'Current Value ($)',
              r'P & L ($)',
              r'P&L (AED)',
              r'Net Balance (AED)',
              'Withdraw-able'
            ],
            data: tableDataMainCard,
            headerStyle: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.white, // Text color for headers
            ),
            headerDecoration: const pw.BoxDecoration(
              color: PdfColors.grey800, // Background color for headers
            ),
            cellStyle: const pw.TextStyle(
              fontSize: 10,
            ),
            cellAlignment: pw.Alignment.center,
          ),

          pw.SizedBox(height: 20),

          //Active trade:
          LabeledRow(
              tradeType: 'Active',
              buyQtyValue: buyQuantity,
              sellQtyValue: sellQuantity,
              netQtyValue: netQuantity,
              plValue: activeTradePnl,
              typePositon: typePositon),

          pw.Table.fromTextArray(
            headers: [
              'S/No',
              'Date - Time',
              'Item',
              'PCS',
              'B/S',
              'QTY Onz',
              'Open Rate',
              'Total Onz',
              'P&L-AED'
            ],
            data: activeTableData,
            headerStyle: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.white, // Text color for headers
            ),
            headerDecoration: const pw.BoxDecoration(
              color: PdfColors.grey800, // Background color for headers
            ),
            cellStyle: const pw.TextStyle(
              fontSize: 10,
            ),
            cellAlignment: pw.Alignment.center,
          ),

          pw.SizedBox(height: 20),

          // (comsellWeight * 100).round() / 100;

          //Completed trade:
          LabeledRow(
              tradeType: 'Completed',
              buyQtyValue: (combuyQuantity * 100).round() / 100,
              sellQtyValue: (comsellQuantity * 100).round() / 100,
              netQtyValue: (comnetQuantity * 100).round() / 100,
              plValue: (comactiveTradePnl * 100).round() / 100,
              typePositon: comtypePositon),

          pw.Table.fromTextArray(
            headers: [
              'S/No',
              'Item',
              'Date - Time',
              'QTY',
              'B/S',
              'Open Rate',
              'Date - Time',
              'B/S',
              'Close Rate',
              'P&L-AED'
            ],
            data: completeTableData,
            headerStyle: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.white, // Text color for headers
            ),
            headerDecoration: const pw.BoxDecoration(
              color: PdfColors.grey800, // Background color for headers
            ),
            cellStyle: const pw.TextStyle(
              fontSize: 10,
            ),
            cellAlignment: pw.Alignment.center,
          ),

          pw.SizedBox(height: 20),

          DisclaimerSection(),

          pw.SizedBox(height: 20),
        ],
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File("${output.path}/statement.pdf");
    await file.writeAsBytes(await pdf.save());
    return file;
  }

  String formatDateTime(String isoDate) {
    DateTime dateTime = DateTime.parse(isoDate);

    // Format the date as "24-October-2024"
    String formattedDate = DateFormat("dd-MMMM-yyyy").format(dateTime);

    // Format the time as "12:08:18 AM"
    String formattedTime = DateFormat("hh:mm:ss a").format(dateTime);

    return "$formattedDate $formattedTime";
  }

  // _loadingCardMorePage() {
  //   return Column(
  //     children: [
  //       Skelton(
  //         height: height * .04,
  //         width: width * .85,
  //         borderRadious: 8,
  //       ),
  //       // 12.h,
  //     ],
  //   );
  // }
}

class ActiveTrade {
  final String serialNo;
  final String createdAt;
  final String item;
  final int pcs;
  final String buySell;
  final double qtyOnz;
  final double openRate;
  final double totalOnz;
  final double pnlAed;

  ActiveTrade({
    required this.serialNo,
    required this.createdAt,
    required this.item,
    required this.pcs,
    required this.buySell,
    required this.qtyOnz,
    required this.openRate,
    required this.totalOnz,
    required this.pnlAed,
  });
}

class CompleteTrade {
  final String serialNo;
  final String item;
  final String createdAt;

  final int pcs;
  final String buySell;
  final double openRate;
  final String accountDateTime;
  final String oppositeBuySell;
  final double closeRate;

  final double pnlAed;

  CompleteTrade({
    required this.serialNo,
    required this.item,
    required this.createdAt,
    required this.pcs,
    required this.buySell,
    required this.openRate,
    required this.accountDateTime,
    required this.oppositeBuySell,
    required this.closeRate,
    required this.pnlAed,
  });
}
