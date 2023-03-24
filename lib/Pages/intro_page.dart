import 'package:flutter/material.dart';
import 'home_page.dart';

class InteroPage extends StatelessWidget {
  const InteroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double topPadding = screenHeight * 0.05;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: ExactAssetImage('assets/images/intro.jpg'),
                
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(
                  MediaQuery.of(context).size.width * 0.25,
                  20,
                ),
                bottomRight: Radius.elliptical(
                  MediaQuery.of(context).size.width * 0.75,
                  40,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Text
          Padding(
            padding: EdgeInsets.only(top: topPadding),
            child: const Text(
              'We are here to make your holiday easier',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: topPadding * 0.5,
              left: 10,
              right: 10,
            ),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 25),

          // Get Started Button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  MyHomePage()),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 48,
              height: MediaQuery.of(context).size.height * 0.07,
              margin: EdgeInsets.only(top: topPadding),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          // Register Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  MyHomePage()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
