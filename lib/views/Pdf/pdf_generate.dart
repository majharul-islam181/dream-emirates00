import 'dart:ffi';
import 'dart:io';
import 'package:dream_emirates/bloc/statement/statement_bloc.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/components/loading_widget.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:dream_emirates/views/Pdf/label_row.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter_pdfview/flutter_pdfview.dart';

// class ActiveTrade {
//   final String serialNo;
//   final String createdAt; // Date and time in String format
//   final String item;
//   final int pcs; // Pieces as int
//   final String buySell; // "BUY" or "SELL"
//   final double qtyOnz; // Quantity in Ounces
//   final double openRate; // Opening rate
//   final double totalOnz; // Total Ounces
//   final double pnlAed; // Profit & Loss in AED

//   ActiveTrade({
//     required this.serialNo,
//     required this.createdAt,
//     required this.item,
//     required this.pcs,
//     required this.buySell,
//     required this.qtyOnz,
//     required this.openRate,
//     required this.totalOnz,
//     required this.pnlAed,
//   });
// }

// class CompleteTrade {
//   final String serialNo;
//   final String item;
//   final String createdAt; // Date and time in String format

//   final int pcs; // Pieces as int
//   final String buySell; // "BUY" or "SELL"//trade type
//   final double openRate; // Opening rate
//   final String accountDateTime;
//   final String oppositeBuySell;
//   final double closeRate;

//   final double pnlAed; // Profit & Loss in AED

//   CompleteTrade({
//     required this.serialNo,
//     required this.item,
//     required this.createdAt,
//     required this.pcs,
//     required this.buySell,
//     required this.openRate,
//     required this.accountDateTime,
//     required this.oppositeBuySell,
//     required this.closeRate,
//     required this.pnlAed,
//   });
// }

// class PdfGeneratorPage extends StatefulWidget {
//   const PdfGeneratorPage({super.key});

//   @override
//   State<PdfGeneratorPage> createState() => _PdfGeneratorPageState();
// }

// class _PdfGeneratorPageState extends State<PdfGeneratorPage> {
//   late StatementBloc statementBloc;
//   String pageTitle = "";

//   final currentDate = DateFormat('dd-MMMM-yyyy').format(DateTime.now());

//   final currentTime = DateFormat('hh:mm a').format(DateTime.now());

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     statementBloc = StatementBloc(getUserStatementRepo: getIt())
//       ..add(FetchStatementEvent(vendorId: '1'));
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     statementBloc.close();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Generate PDF"),
//         ),
//         body: MultiBlocProvider(
//           providers: [
//             BlocProvider.value(value: statementBloc),
//           ],
//           child: BlocBuilder<StatementBloc, StatementState>(
//             builder: (context, state) {
//               switch (state.getStatement.status) {
//                 case Status.loading:
//                   return const Center(child: LoadingWidget());

//                 case Status.error:
//                   return const Text('error');
//                 case Status.completed:
//                   String userName =
//                       state.getStatement.data!.data.summary.name.toString();
//                   String marketPrice = state
//                       .getStatement.data!.data.goldPrice.askPrice
//                       .toString();
//                   String marginLimit = state
//                       .getStatement.data!.data.goldPrice.bidPrice
//                       .toString();

//                   double balance =
//                       state.getStatement.data!.data.summary.balance;

//                   double deposite = state
//                       .getStatement.data!.data.transactionSummary.totalDeposit;
//                   double withDraw = state
//                       .getStatement.data!.data.transactionSummary.totalWithdraw;
//                   double profitLoss =
//                       state.getStatement.data!.data.summary.netProfitLoss;
//                   double totall =
//                       state.getStatement.data!.data.summary.netOpenPrice;
//                   double currentValueUSD =
//                       state.getStatement.data!.data.summary.currentValueUSD;
//                   double currentProfitLossUSD = state
//                       .getStatement.data!.data.summary.currentProfitLossUSD;
//                   double currentProfitLossAED = state
//                       .getStatement.data!.data.summary.currentProfitLossAED;
//                   double netBalance =
//                       state.getStatement.data!.data.summary.netBalance;
//                   double withDrawableBalance =
//                       state.getStatement.data!.data.summary.withdrawableBalance;

//                   //active trade
//                   int activeTableLength =
//                       state.getStatement.data!.data.activeTradeArray.length;
//                   double buyWeight = state
//                       .getStatement.data!.data.activeTradeSummary.buyWeight;
//                   double sellWeight = state
//                       .getStatement.data!.data.activeTradeSummary.sellWeight;
//                   double activeTradePnl = state
//                       .getStatement.data!.data.activeTradeSummary.profitLossAED;

//                   List<ActiveTrade> activeTradeArray = state
//                       .getStatement.data!.data.activeTradeArray
//                       .map((trade) {
//                     return ActiveTrade(
//                       serialNo: trade.id.toString(),
//                       createdAt: trade.createdAt,
//                       item: trade.metalType,
//                       pcs: trade.quantity,
//                       buySell: trade.tradeType,
//                       qtyOnz: trade.quantity / 0.0374620,
//                       openRate: trade.executedTradeOpenRate,
//                       totalOnz: trade.quantity * 3.75,
//                       pnlAed: trade.profitLossAED,
//                     );
//                   }).toList();

//                   //complete trade

//                   List<CompleteTrade> completeTradeArray = state
//                       .getStatement.data!.data.completedTradeArray
//                       .map((trade) {
//                     return CompleteTrade(
//                         serialNo: trade.id.toString(),
//                         item: trade.metalType,
//                         createdAt: trade.createdAt,
//                         pcs: trade.quantity,
//                         buySell: trade.tradeType,
//                         openRate: trade.executedTradeOpenRate,
//                         accountDateTime: trade.account.createdAt,
//                         oppositeBuySell:
//                             trade.tradeType == 'BUY' ? 'SELL' : 'BUY',
//                         closeRate: trade.executedTradeCloseRate,
//                         pnlAed: trade.account.amount);
//                   }).toList();

//                   int completeTableLength =
//                       state.getStatement.data!.data.completedTradeArray.length;
//                   double combuyWeight = state
//                       .getStatement.data!.data.completedTradeSummary.buyWeight;
//                   double comsellWeight = state
//                       .getStatement.data!.data.completedTradeSummary.sellWeight;
//                   double comactiveTradePnl = state
//                       .getStatement.data!.data.completedTradeSummary.netProfit;

//                   // double sellWeight =
//                   //     state.getStatement.data!.data.summary.sellWeight;
//                   // double activeTradePnl = state
//                   //     .getStatement.data!.data.activeTradeSummary.profitLossAED;

//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () async {
//                           final pdfFile = await _generatePdf(
//                               userName,
//                               marketPrice,
//                               marginLimit,
//                               activeTableLength,
//                               buyWeight,
//                               sellWeight,
//                               activeTradePnl,
//                               balance,
//                               deposite,
//                               withDraw,
//                               profitLoss,
//                               totall,
//                               currentValueUSD,
//                               currentProfitLossUSD,
//                               currentProfitLossAED,
//                               netBalance,
//                               withDrawableBalance,
//                               activeTradeArray,
//                               completeTableLength,
//                               completeTradeArray,
//                               combuyWeight,
//                               comsellWeight,
//                               comactiveTradePnl); // Pass pageTitle
//                           await Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   PdfPreviewPage(pdfFile: pdfFile),
//                             ),
//                           );
//                         },
//                         child: const Text("Generate PDF"),
//                       ),
//                     ],
//                   );
//                 default:
//                   return const SizedBox.shrink();
//               }
//             },
//           ),
//         ));
//   }

//   Future<File> _generatePdf(
//     String title,
//     String marketPrice,
//     String marginLimit,
//     int activeTableLength,
//     double buyWeight,
//     double sellWeight,
//     double activeTradePnl,
//     double balance,
//     double deposite,
//     double withDraw,
//     double profitLoss,
//     double totall,
//     double currentValueUSD,
//     double currentProfitLossUSD,
//     double currentProfitLossAED,
//     double netBalance,
//     double withDrawableBalance,
//     List<ActiveTrade> activeTradeArray,
//     int completeTableLength,
//     List<CompleteTrade> completeTradeArray,
//     double combuyWeight,
//     double comsellWeight,
//     double comactiveTradePnl,
//   ) async {
//     double buyQuantity = buyWeight / 116.52;
//     double sellQuantity = sellWeight / 116.52;
//     double netQuantity = buyQuantity - sellQuantity;
//     String typePositon = netQuantity >= 0 ? "BUY" : "SELL";

//     //complete trade quantity
//     double combuyQuantity = combuyWeight / 116.52;
//     double comsellQuantity = comsellWeight / 116.52;
//     double comnetQuantity = combuyQuantity - sellQuantity;
//     String comtypePositon = comnetQuantity >= 0 ? "BUY" : "SELL";

//     double goldOnz = (buyWeight - sellWeight) / 31.11348464;
//     double goldTTB = (buyWeight - sellWeight) / 116.52;

//     List<String> dataValue = [
//       balance.toString(),
//       deposite.toString(),
//       withDraw.toString(),
//       profitLoss.toString(),
//       goldOnz.toString(),
//       goldTTB.toString(),
//       totall.toString(),
//       currentValueUSD.toString(),
//       currentProfitLossUSD.toString(),
//       currentProfitLossAED.toString(),
//       netBalance.toString(),
//       withDrawableBalance.toString()

//       // Including deposit in the data
//     ];

//     final List<List<String>> activeTableData = activeTradeArray.map((trade) {
//       return [
//         trade.serialNo,
//         trade.createdAt, // Ensure createdAt is formatted as a string
//         trade.item,
//         trade.pcs.toString(),
//         trade.buySell,
//         trade.qtyOnz.toString(),
//         trade.openRate.toString(),
//         trade.totalOnz.toString(),
//         trade.pnlAed.toString(),
//       ];
//     }).toList();

// // Generating the table data
//     final List<List<String>> completeTableData =
//         completeTradeArray.map((trade) {
//       return [
//         trade.serialNo,
//         trade.item,
//         trade.createdAt.toString(), // Ensure createdAt is formatted as a string
//         trade.pcs.toString(),
//         trade.buySell,
//         trade.openRate.toString(),
//         trade.accountDateTime
//             .toString(), // Ensure accountDateTime is formatted as a string
//         trade.oppositeBuySell,
//         trade.closeRate.toString(),
//         trade.pnlAed.toString(), // Ensure pnlAed is formatted as a string
//       ];
//     }).toList();

//     final pdf = pw.Document();
//     final List<List<String>> tableDataMainCard =
//         List.generate(1, (_) => dataValue);
// //  final List<List<String>> tableDataMainCard = [dataValue];

//     pdf.addPage(
//       pw.MultiPage(
//         pageFormat: PdfPageFormat.a3,
//         build: (pw.Context context) => [
//           //name and date
//           pw.Row(
//             mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//             children: [
//               pw.Text(
//                 title,
//                 style:
//                     pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
//               ),
//               pw.Column(children: [
//                 pw.Text(
//                   currentDate,
//                   style: pw.TextStyle(
//                       fontSize: 18, fontWeight: pw.FontWeight.normal),
//                 ),
//                 pw.SizedBox(width: 5),
//                 pw.Text(
//                   currentTime,
//                   style: pw.TextStyle(
//                       fontSize: 18, fontWeight: pw.FontWeight.normal),
//                 ),
//               ]),
//             ],
//           ),
//           pw.Text("Statement from AllTime",
//               style: const pw.TextStyle(fontSize: 14)),
//           pw.SizedBox(height: 20),
//           pw.Row(
//               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//               children: [
//                 pw.Text("Market Price: $marketPrice",
//                     style: pw.TextStyle(
//                         fontSize: 12, fontWeight: pw.FontWeight.bold)),
//                 pw.Text("Margin Limit: $marginLimit",
//                     style: pw.TextStyle(
//                         fontSize: 12, fontWeight: pw.FontWeight.bold)),
//               ]),

//           pw.SizedBox(height: 20),
//           pw.Table.fromTextArray(
//             headers: [
//               'Balance',
//               'Deposite',
//               'Withdraw',
//               'Profit-Loss',
//               'Gold (Onz)',
//               'Gold (TTB)',
//               r'Total ($)',
//               r'Current Value ($)',
//               r'P & L ($)',
//               r'P&L (AED)',
//               r'Net Balance (AED)',
//               'Withdraw-able'
//             ],
//             data: tableDataMainCard,
//             headerStyle: pw.TextStyle(
//               fontWeight: pw.FontWeight.bold,
//               color: PdfColors.white, // Text color for headers
//             ),
//             headerDecoration: const pw.BoxDecoration(
//               color: PdfColors.grey800, // Background color for headers
//             ),
//             cellStyle: const pw.TextStyle(
//               fontSize: 10,
//             ),
//           ),

//           pw.SizedBox(height: 20),

//           //Active trade:
//           LabeledRow(
//               tradeType: 'Active',
//               buyQtyValue: buyQuantity,
//               sellQtyValue: sellQuantity,
//               netQtyValue: netQuantity,
//               plValue: activeTradePnl,
//               typePositon: typePositon),

//           pw.Table.fromTextArray(
//             headers: [
//               'S/No',
//               'Date - Time',
//               'Item',
//               'PCS',
//               'B/S',
//               'QTY Onz',
//               'Open Rate',
//               'Total Onz',
//               'P&L-AED'
//             ],
//             data: activeTableData,
//             headerStyle: pw.TextStyle(
//               fontWeight: pw.FontWeight.bold,
//               color: PdfColors.white, // Text color for headers
//             ),
//             headerDecoration: const pw.BoxDecoration(
//               color: PdfColors.grey800, // Background color for headers
//             ),
//             cellStyle: const pw.TextStyle(
//               fontSize: 10,
//             ),
//           ),

//           pw.SizedBox(height: 20),

//           // (comsellWeight * 100).round() / 100;

//           //Completed trade:
//           LabeledRow(
//               tradeType: 'Completed',
//               buyQtyValue: (combuyQuantity * 100).round() / 100,
//               sellQtyValue: (comsellQuantity * 100).round() / 100,
//               netQtyValue: (comnetQuantity * 100).round() / 100,
//               plValue: (comactiveTradePnl * 100).round() / 100,
//               typePositon: comtypePositon),

//           pw.Table.fromTextArray(
//             headers: [
//               'S/No',
//               'Item',
//               'Date - Time',
//               'QTY',
//               'B/S',
//               'Open Rate',
//               'Date - Time',
//               'B/S',
//               'Close Rate',
//               'P&L-AED'
//             ],
//             data: completeTableData,
//             headerStyle: pw.TextStyle(
//               fontWeight: pw.FontWeight.bold,
//               color: PdfColors.white, // Text color for headers
//             ),
//             headerDecoration: const pw.BoxDecoration(
//               color: PdfColors.grey800, // Background color for headers
//             ),
//             cellStyle: const pw.TextStyle(
//               fontSize: 10,
//             ),
//           ),

//           pw.SizedBox(height: 20),
//         ],
//       ),
//     );

//     final output = await getTemporaryDirectory();
//     final file = File("${output.path}/statement.pdf");
//     await file.writeAsBytes(await pdf.save());
//     return file;
//   }
// }

/*
// next page // pdf showing page
class PdfPreviewPage extends StatelessWidget {
  final File pdfFile;

  const PdfPreviewPage({super.key, required this.pdfFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GlobalTextWidget(
          title: 'Statement',
          fontSize: 18,
          color: Colors.white,
          fontWeight: 200,
        ),
        actions: [
          SvgPicture.asset(
            'assets/icons/save-statement.svg',
            height: 20,
            color: Colors.white,
          ),
          15.w,
        ],
        centerTitle: true,
        backgroundColor: AppColors.purple,
      ),
      body: PDFView(
        filePath: pdfFile.path,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: false,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
      ),
    );
  }
}
*/
/*
class PdfPreviewPage extends StatefulWidget {
  final File pdfFile;

  const PdfPreviewPage({super.key, required this.pdfFile});

  @override
  State<PdfPreviewPage> createState() => _PdfPreviewPageState();
}

class _PdfPreviewPageState extends State<PdfPreviewPage> {
  bool _isDownloading = false;
  double _progress = 0.0;

  Future<void> _savePdf() async {
    setState(() {
      _isDownloading = true;
      _progress = 0.0;
    });

    // Simulate a 3-4 second download with incremental progress
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(const Duration(milliseconds: 30), () {
        setState(() {
          _progress = i / 100;
        });
      });
    }

    try {
      final directory = await getExternalStorageDirectory();
      final filePath = '${directory!.path}/statement.pdf';
      final newFile = File(filePath);

      await newFile.writeAsBytes(await widget.pdfFile.readAsBytes());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("PDF saved successfully at $filePath"),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to save PDF: $e"),
        ),
      );
    } finally {
      setState(() {
        _isDownloading = false;
        _progress = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statement',
            style: TextStyle(fontSize: 18, color: Colors.white)),
        backgroundColor: AppColors.purple,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/save-statement.svg',
              height: 20,
              color: Colors.white,
            ),
            onPressed: _savePdf,
          ),
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PDFView(
            filePath: widget.pdfFile.path,
            enableSwipe: true,
            swipeHorizontal: false,
            autoSpacing: false,
            pageFling: false,
            onError: (error) {
              print(error.toString());
            },
            onPageError: (page, error) {
              print('$page: ${error.toString()}');
            },
          ),
          if (_isDownloading)
            Container(
              color: Colors.black.withOpacity(0.5), // Dimmed overlay
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GlobalTextWidget(
                      title: 'Downloading...',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(value: _progress),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${(_progress * 100).toStringAsFixed(0)}%", // Shows percentage
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
*/

/*
class PdfPreviewPage extends StatefulWidget {
  final File pdfFile;

  const PdfPreviewPage({super.key, required this.pdfFile});

  @override
  State<PdfPreviewPage> createState() => _PdfPreviewPageState();
}

class _PdfPreviewPageState extends State<PdfPreviewPage> {
  bool _isLoading = true;
  bool _isDownloading = false;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  Future<void> _startLoading() async {
    // Simulate 3-second loading for "Generating PDF"
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _savePdf() async {
    setState(() {
      _isDownloading = true;
      _progress = 0.0;
    });

    // Simulate a 3-4 second download with incremental progress
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(const Duration(milliseconds: 40), () {
        setState(() {
          _progress = i / 100;
        });
      });
    }

    try {
      final directory = await getExternalStorageDirectory();
      final filePath = '${directory!.path}/statement.pdf';
      final newFile = File(filePath);

      await newFile.writeAsBytes(await widget.pdfFile.readAsBytes());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("PDF saved successfully at $filePath"),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to save PDF: $e"),
        ),
      );
    } finally {
      setState(() {
        _isDownloading = false;
        _progress = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Statement',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: AppColors.purple,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/save-statement.svg',
              height: 20,
              color: Colors.white,
            ),
            onPressed: _savePdf,
          ),
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          if (_isLoading)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/lottie/generate_pdf.json',
                    width: 250,
                    height: 250,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Generating PDF...",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            )
          else
            PDFView(
              filePath: widget.pdfFile.path,
              enableSwipe: true,
              swipeHorizontal: false,
              autoSpacing: false,
              pageFling: false,
              onError: (error) {
                print(error.toString());
              },
              onPageError: (page, error) {
                print('$page: ${error.toString()}');
              },
            ),
          if (_isDownloading)
            Container(
              color: Colors.black.withOpacity(0.5), // Dimmed overlay
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GlobalTextWidget(
                      title: 'Downloading...',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(value: _progress),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${(_progress * 100).toStringAsFixed(0)}%", // Shows percentage
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

*/

class PdfPreviewPage extends StatefulWidget {
  final File pdfFile;

  const PdfPreviewPage({super.key, required this.pdfFile});

  @override
  State<PdfPreviewPage> createState() => _PdfPreviewPageState();
}

class _PdfPreviewPageState extends State<PdfPreviewPage> {
  bool _isLoading = true;
  bool _isDownloading = false;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  Future<void> _startLoading() async {
    // Simulate 3-second loading for "Generating PDF"
    await Future.delayed(const Duration(seconds: 4));
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _savePdf() async {
    setState(() {
      _isDownloading = true;
      _progress = 0.0;
    });

    // Simulate a 3-4 second download with incremental progress
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(const Duration(milliseconds: 40), () {
        setState(() {
          _progress = i / 100;
        });
      });
    }

    try {
      final directory = await getExternalStorageDirectory();
      final filePath = '${directory!.path}/statement.pdf';
      final newFile = File(filePath);

      await newFile.writeAsBytes(await widget.pdfFile.readAsBytes());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("PDF saved successfully at $filePath"),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to save PDF: $e"),
        ),
      );
    } finally {
      setState(() {
        _isDownloading = false;
        _progress = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GlobalTextWidget(
          title: 'Statement',
          fontSize: 16,
          fontWeight: 400,
          color: Colors.white,
        ),
        backgroundColor: AppColors.purple,
        actions: [
          _isLoading
              ? const SizedBox.shrink()
              : IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/save-statement.svg',
                    height: 18,
                    color: Colors.white,
                  ),
                  onPressed:
                      _isLoading ? null : _savePdf, // Disable while loading
                ),
          10.w,
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          if (_isLoading)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/lottie/generate_pdf.json',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Generating PDF...",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            )
          else
            PDFView(
              filePath: widget.pdfFile.path,
              enableSwipe: true,
              swipeHorizontal: false,
              autoSpacing: false,
              pageFling: false,
              onError: (error) {
                print(error.toString());
              },
              onPageError: (page, error) {
                print('$page: ${error.toString()}');
              },
            ),
          if (_isDownloading)
            Container(
              color: Colors.black.withOpacity(0.5), // Dimmed overlay
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GlobalTextWidget(
                      title: 'Downloading...',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(value: _progress),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${(_progress * 100).toStringAsFixed(0)}%", // Shows percentage
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
