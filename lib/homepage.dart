import 'dart:math';

import 'package:flutter/material.dart';

import 'api/api_service.dart';
import 'custom_tile.dart';
import 'model/articel_moodel.dart';

double user = 1000;
double product = 1;
double prov = 0;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiService client = ApiService();
  double day = 0;
  bool ok = true;
  Future<void> incrementCounter() async {
    return Future.delayed(Duration(milliseconds: 500)).then((value) => dodo());
  }

  void dodo() {
    setState(() {
      final product = user / 100 * 30;
      double prov = product * 0.0026;

      double day = prov * 50;
      user = user + prov;

      print('Balance: ' + user.toString());
      print('Product: ' + product.toString());
      print('Prov: ' + prov.toString());
      print('Dayli Income:  ' + day.toStringAsFixed(2));
    });

    setState(() {
      double product = user / 100 * 30;
    });

    setState(() {
      prov = (user / 100 * 30 * 0.0026) + prov;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //let's check if we got a response or not
          if (snapshot.hasData) {
            //Now let's make a list of articles
            List<Article>? articles = snapshot.data;
            return ListView.builder(
              //Now let's create our custom List tile
              itemCount: articles?.length,
              itemBuilder: (context, index) =>
                  customListTile(articles![index], context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
