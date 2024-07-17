import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class GirdPage extends StatefulWidget {
  const GirdPage({super.key});

  @override
  State<GirdPage> createState() => _GirdPageState();
}

class _GirdPageState extends State<GirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gird View"),
      ),
      drawer: const MyDrawer(),
      body: Container(),
    );
  }
}
