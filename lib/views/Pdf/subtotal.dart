import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Subtotal extends pw.StatelessWidget {
  final double totalOnz, totalPlValue;
  final PdfColor backgroundColor;

  Subtotal({
    required this.totalOnz,
    required this.totalPlValue,
    this.backgroundColor = PdfColors.grey300, // Default color
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      color: backgroundColor,
      padding: const pw.EdgeInsets.all(8),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.end,
        children: [
          pw.Row(children: [
            pw.Text(
              "Subtotal",
              style: pw.TextStyle(
                fontSize: 12,
                fontWeight: pw.FontWeight.bold,
                decoration: pw.TextDecoration.underline,
              ),
            )
          ]),
          pw.Text(
            "$totalOnz",
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal),
          ),
          pw.Text(
            "$totalPlValue",
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
