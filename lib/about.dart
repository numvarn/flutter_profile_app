import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:profile_app/drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var items = List<String>.generate(20, (i) => 'Phisan $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My List"),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.add),
            title: Text(items[index]),
            subtitle: const Text("Computer Science"),
            trailing: const Icon(Icons.check),
          );
        },
      ),
    );
  }
}
