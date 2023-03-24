import 'package:flutter/material.dart';

import '../components/budget_tile.dart';
import '../components/featured_visited.dart';
import '../components/top_exapnaded.dart';
import '../models/list1.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final lists = Listone().getShoeList();
  final lists2 = Listone().getShoeList2();
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
          child: Column(children: [
            const TopWigets(),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Frequently visited',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lists.length,
                itemBuilder: (context, index) {
                  return MyVisited(index: index);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'On Budget Tour',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'see all',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                shrinkWrap: true,
                itemCount: lists2.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Budegt(index: index);
                },
              ),
            )
          ])),
    );
  }
}
