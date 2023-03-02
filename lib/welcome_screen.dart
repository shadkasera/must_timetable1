import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          title: const Text(
            'MUST TIMETABLE',
            style: TextStyle(color: Colors.white),
          ),
          leadingWidth: 80,
         leading: IconButton(
            onPressed: () {
              // Action to perform when the button is pressed
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
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
        
        body: RichText(
                text: const TextSpan(
                  text: 'WELCOME ! \n\n',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'MUST timetables have been put in different categories of view. You can view a timetable by room, Lecturer or class. Proceed to view your preffered timetable by the type from the buttons below.',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
