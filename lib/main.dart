import 'package:flutter/material.dart';
import 'package:notes/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: customRoutes,
      initialRoute: '/index',
    );
  }
}
