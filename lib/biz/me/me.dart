import 'package:flutter/material.dart';



class MePage extends StatefulWidget {
  @override
  _MePageRouteState createState() => new _MePageRouteState();
}

class _MePageRouteState extends State<MePage>
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