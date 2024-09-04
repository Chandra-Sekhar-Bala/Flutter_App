import 'package:flutter/material.dart';
import 'package:flutter_app_test/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Cart App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Text("Bye World"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
