import 'package:demo_app/widgets/converter.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.black, // Setea el background de la app
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Binary to Decimal Converter'),
            ),
            body: Center(child: Converter())));
  }
}
