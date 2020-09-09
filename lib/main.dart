import 'package:app_bar_animation/default_app_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isrRtl = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _isrRtl ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(_isrRtl ? "LTR" : "RTL"),
          onPressed: () {
            setState(() {
              _isrRtl = !_isrRtl;
            });
          },
        ),
        appBar:
            DefaultAppBar(), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
