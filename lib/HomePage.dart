import 'package:flutter/material.dart';
import 'package:marvel_api_demo/CardWidget.dart';
import 'package:marvel_api_demo/Model.dart';
import 'package:marvel_api_demo/Services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model> list = List();
  bool loader = true;

  Services services;

  @override
  void initState() {
    services = Services();
    services.getUsers().then((value) {
      print(value.length);
      setState(() {
        loader = false;
        list = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: loader
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    model: list[index],
                  );
                },
              ),
      ),
    );
  }
}
