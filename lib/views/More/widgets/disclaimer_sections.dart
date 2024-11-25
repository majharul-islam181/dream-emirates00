import 'package:pdf/widgets.dart'
    as pw; // Ensure you import the pdf package correctly

class DisclaimerSection extends pw.StatelessWidget {
  @override // Correctly override the build method
  pw.Widget build(pw.Context context) {
    return pw.Center(
      child: pw.Column(
        children: [
          pw.Padding(
            padding: const pw.EdgeInsets.symmetric(horizontal: 40),
            child: pw.Text(
              '''Profit / loss for the outstanding position is calculated based on the market price at the time of this report generation. Margin Limit varies depending upon the financial transactions and other buy or sell of positions in the account.''',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(fontSize: 10),
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            '''@2023 Dream Emirates Trading LLC''',
            textAlign: pw.TextAlign.center,
            style: const pw.TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
