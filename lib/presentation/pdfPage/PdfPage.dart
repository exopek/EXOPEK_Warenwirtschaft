import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventory_app/domain/models/Inventory.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfPage extends StatelessWidget {
  String date;
  List<Inventory> inventoryList;
  PdfPage(this.date, this.inventoryList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }

  Future<Uint8List> makePdf() async {
    final pdf = pw.Document();
    /* final ByteData bytes = await rootBundle.load('assets/phone.png');
    final Uint8List byteList = bytes.buffer.asUint8List(); */
    pdf.addPage(pw.Page(
        margin: const pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Header(
                          text: "Lagerstand: ${date.split(" ")[0]}", level: 1),
                      /* pw.Image(pw.MemoryImage(byteList),
                          fit: pw.BoxFit.fitHeight, height: 100, width: 100) */
                    ]),
                pw.Divider(borderStyle: pw.BorderStyle.dashed),
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      /* pw.Paragraph(text: "Name"),
                      pw.Paragraph(text: "Anzahl"),
                      pw.Paragraph(text: "Preis in Euro"), */
                      pw.Container(width: 250, child: pw.Text("Name")),
                      pw.Container(width: 250, child: pw.Text("Anzahl")),
                      pw.Container(width: 250, child: pw.Text("Preis in Euro")),
                    ]),
                pw.Column(children: [
                  for (var inventory in inventoryList)
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Container(
                              width: 250, child: pw.Text(inventory.name)),
                          pw.Container(
                              width: 250,
                              child: pw.Text(inventory.quantity.toString())),
                          pw.Container(
                              width: 250,
                              child:
                                  pw.Text(inventory.price.toStringAsFixed(2))),
                        ]),
                ])
              ]);
        }));
    return pdf.save();
  }
}
