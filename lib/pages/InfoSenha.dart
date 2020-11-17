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
      home: InfoSenha(),
    );
  }
}

class InfoSenha extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<InfoSenha> {
  String url = "https://drive.google.com/file/d/1kPpM7mcNTbs7VYOXBh7TqLDh4-_ADueC/view";
  String pdfasset = "assets/InfoSenha.pdf";
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
      appBar: AppBar(title: Text("Informações sobre senhas"),),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,
        indicatorBackground: Colors.blue[900],
        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}