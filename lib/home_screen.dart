import 'package:flutter/material.dart';
import 'package:routing/utils/route_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Home Screen',
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
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteNames.screenOne,
                arguments: {
                  'Flutter': 'Good Apps',
                }
                );
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
                  'Home',
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
