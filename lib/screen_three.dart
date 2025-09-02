import 'package:flutter/material.dart';
class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              'Screen Three',
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(100),
              ),
              width: double.infinity,
              height: 50,

              child: const Center(
                  child: Text(
                    'Screen 3',
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
