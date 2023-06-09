import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 24, left: 14, right: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ImageIcon(AssetImage("assets/nav.png")),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Санкт-Питербург"), Text("12 августа, 2023")],
            ),
            SizedBox(child: Icon(Icons.ac_unit)),
          ],
        ),
      ),
    );
  }
}
