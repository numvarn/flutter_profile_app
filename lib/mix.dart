import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class MixLayout extends StatefulWidget {
  const MixLayout({super.key});

  @override
  State<MixLayout> createState() => _MixLayoutState();
}

class _MixLayoutState extends State<MixLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mix Layout"),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "แสดงรายการ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.list),
                ],
              ),
            ),
            // ส่วนครึ่งบนที่ใช้ ListView.builder
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ListTile(
                      title: Text('Item $index'),
                      subtitle: Text('Subtitle $index'),
                      trailing: const Icon(Icons.favorite_border),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "แสดงกริด",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.grid_4x4_rounded),
                ],
              ),
            ),
            // ส่วนครึ่งล่างที่ใช้ GridView.builder
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // จำนวนคอลัมน์ใน Grid
                  crossAxisSpacing: 4.0, // ระยะห่างระหว่างคอลัมน์
                  mainAxisSpacing: 4.0, // ระยะห่างระหว่างแถว
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Grid $index',
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
