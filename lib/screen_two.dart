import 'package:flutter/material.dart';
import 'package:routing/utils/route_names.dart';
class ScreenTwo extends StatefulWidget {
   const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Center(
            child: Text(
              ('Screen Two'),
              style:  TextStyle(color: Colors.white),
            )),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteNames.screenThree);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(100),
                ),
                width: double.infinity,
                height: 50,

                child: const Center(
                    child: Text(
                      'Screen 2',
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
