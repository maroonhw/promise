import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageRouteState createState() => new _HomePageRouteState();
}

class _HomePageRouteState extends State<HomePage>
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
