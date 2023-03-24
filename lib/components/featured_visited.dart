import 'package:flutter/material.dart';


import '../models/list1.dart';

class MyVisited extends StatefulWidget {
  final int index;

  const MyVisited({Key? key, required this.index}) : super(key: key);

  @override
  State<MyVisited> createState() => _MyVisitedState();
}

class _MyVisitedState extends State<MyVisited> {
  // model data
  final lists = Listone().getShoeList();

  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    final tag = 'favorite_button_${widget.index}';
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Image.asset(
                lists[widget.index].url,
                height: screenHeight * 0.18,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: FloatingActionButton(
                    heroTag: tag,
                    backgroundColor: Colors.white,
                    onPressed: toggleFavorite,
                    child: Icon(
                      Icons.favorite_sharp,
                      color: isFavorite ? Colors.red : Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screenHeight * .002),
          Text(lists[widget.index].name),
          SizedBox(height: screenHeight * .002),
          Row(
            children: [const Icon(Icons.location_on), Text(lists[widget.index].city)],
          ),
          SizedBox(height: screenHeight * .002),
          Row(
            children: [
              const Text('\$256'),
              const SizedBox(width: 80),
              Text('${lists[widget.index].rate}')
            ],
          )
        ],
      ),
    );
  }
}
