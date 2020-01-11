import 'package:flutter/material.dart';
import 'package:getit_example/di/service_locator.dart';
import 'package:getit_example/feature/post/presenter/post_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: PostPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
