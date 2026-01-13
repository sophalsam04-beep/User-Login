import 'package:l6/home_dart.dart';

import 'login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) => controller.username.value = value,
            decoration: InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            onChanged: (value) => controller.password.value = value,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.key),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeDart()),
              );
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
