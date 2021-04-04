import 'package:flutter/material.dart';

class PRMHomePage extends StatefulWidget {
  @override
  _PRMHomePageRouteState createState() => new _PRMHomePageRouteState();
}

class _PRMHomePageRouteState extends State<PRMHomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // _requestVersionUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scarab"),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("data"),
      backgroundColor: Colors.white,
    );
  }
}
