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
      home: ComoEvitar(),
    );
  }
}

class ComoEvitar extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ComoEvitar> {
  String url = "https://drive.google.com/file/d/1z4Of0BTEGa9Fyo1VO-gN3kjpPoA0HBGC/view";
  String pdfasset = "assets/ComoEvitar.pdf";
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
      appBar: AppBar(title: Text("Informações sobre redes"),),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,
        indicatorBackground: Colors.blue[900],
        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}