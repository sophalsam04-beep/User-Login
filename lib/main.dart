import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l6/controllers/login_screen.dart';
import 'controllers/login_controller.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: Apps()));
}

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: MyWidget()));
  }
}
