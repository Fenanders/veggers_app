import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi!'),
            Text('Yandi Fenanda'),
            SizedBox(
              height: 60.0,
            ),
            Text(
              'Plant Now 🌱',
              style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                boxIndexWidget(title: 'UV Index'),
                boxIndexWidget(title: 'Temp'),
                boxIndexWidget(title: 'Soil'),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Information',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 120.0),
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pakcoy'),
                  Text('Type'),
                  Text('Vegetable'),
                  Text('Pot'),
                  Text('8 Pcs'),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            boxPlantWidget()
          ],
        ),
      ),
    );
  }

  Container boxPlantWidget() {
    return Container(
      constraints: BoxConstraints(minWidth: double.infinity, minHeight: 120.0),
      decoration: BoxDecoration(color: Colors.blueAccent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sawi'),
          Text('Type'),
          Text('Vegetable'),
          Text('Pot'),
          Text('4 Pcs'),
        ],
      ),
    );
  }

  Container boxIndexWidget({String title = ''}) {
    return Container(
      constraints: BoxConstraints(minWidth: 120.0, minHeight: 120.0),
      decoration: BoxDecoration(color: Colors.orangeAccent),
      child: Column(
        children: [Text('${title}'), Text('5')],
      ),
    );
  }
}
