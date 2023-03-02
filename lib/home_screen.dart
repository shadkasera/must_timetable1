import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue[300],
          title: const Text(
            'MUST TIMETABLE',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_sharp),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 0.97,
                      widthFactor: 0.97,
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'More options',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
          centerTitle: true,
        ),
      ),
    );
  }
}
