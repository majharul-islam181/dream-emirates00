import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class LabeledRow extends pw.StatelessWidget {
  final double buyQtyValue;
  final double sellQtyValue;
  final double netQtyValue, plValue;
  final String tradeType, typePositon;
  final PdfColor backgroundColor;

  LabeledRow({
    required this.tradeType,
    required this.buyQtyValue,
    required this.sellQtyValue,
    required this.netQtyValue,
    required this.plValue,
    required this.typePositon,
    this.backgroundColor = PdfColors.grey300, // Default color
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      color: backgroundColor,
      padding: const pw.EdgeInsets.all(8),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Row(children: [
            pw.Text(
              "$tradeType Positions",
              style: pw.TextStyle(
                fontSize: 12,
                fontWeight: pw.FontWeight.bold,
                decoration: pw.TextDecoration.underline,
              ),
            )
          ]),
          pw.Text(
            "Buy QTY: $buyQtyValue",
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal),
          ),
          pw.Text(
            "Sell QTY: $sellQtyValue",
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal),
          ),
          pw.Text(
            "Net QTY: $netQtyValue ($typePositon Position)",
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal),
          ),
          pw.Text(
            "P&L-AED: $plValue",
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
