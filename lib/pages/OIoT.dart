import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informações',
      theme: ThemeData(
        primarySwatch: Colors.blue[900],
      ),
      home: Info1(),
    );
  }
}

class Info1 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Info1> {
  String url = "https://drive.google.com/file/d/10kVvC2mnvkfkgxiReHous3a10Gw8Xk_E/view";
  String pdfasset = "assets/IoT.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(pdfasset);
    setState(() {
      _doc=doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("O que é IoT"),),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,
        indicatorBackground: Colors.blue[900],
        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}