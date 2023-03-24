import 'package:flutter/material.dart';

class TopWigets extends StatelessWidget {
  const TopWigets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets/icons/avator.png'),
          title: const Text(
            ' HI,Andy',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children:const [Icon(Icons.location_on), Text('Nehterland')],
          ),
          trailing: const Icon(Icons.notifications_active),
        ),
        // search bar ---------------

        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'search',
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.format_list_bulleted_rounded)),
            ),
          ),
        ),
        const SizedBox(height: 25),
        // icons row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset('assets/icons/flight.png'),
               const SizedBox(height: 5),
               const Text('Airport')
              ],
            ),
            Column(
              children: [
                Image.asset('assets/icons/car.png'),
                const SizedBox(height: 5),
                const Text('Taxi')
              ],
            ),
            Column(
              children: [
                Image.asset('assets/icons/hotel.png'),
                const SizedBox(height: 5),
               const Text('Hotel')
              ],
            ),
            Column(
              children: [
                Image.asset('assets/icons/Combined.png'),
               const SizedBox(height: 5),
               const Text('More')
              ],
            )
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
