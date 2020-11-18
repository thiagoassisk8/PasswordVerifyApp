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
      home: InfoRede(),
    );
  }
}

class InfoRede extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<InfoRede> {
  String url = "https://drive.google.com/file/d/1WnF1ORsvVDqjiczc2qMSgnKrhCYjIoCD/view";
  String pdfasset = "assets/InfoRedes.pdf";
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
      appBar: AppBar(title: Text("Segurança de redes"),),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,
        indicatorBackground: Colors.blue[900],
        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}