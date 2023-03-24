import 'package:flutter/material.dart';


import '../models/list1.dart';

class Budegt extends StatelessWidget {
  final int index;
  Budegt({super.key, required this.index});

  final lists2 = Listone().getShoeList2();
  @override
  Widget build(BuildContext context) {
    final screanWidght = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                lists2[index].url,
                width: 100,
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                 const Padding(
                    padding:  EdgeInsets.only(left: 12),
                    child: Text(
                      'Bhiti Beach',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                 const SizedBox(height: 10),
                 const Padding(
                    padding:  EdgeInsets.only(left: 12),
                    child: Text('3 days 2 night'),
                  ),
                const  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: const [Icon(Icons.location_on), Text('Astralia')],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: screanWidght * 0.06,
              ),
              const Text(' \$256/person')
            ],
          )
          // row three
        ],
      ),
    );
  }
}
