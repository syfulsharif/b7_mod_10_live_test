import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18.0,
            ),
            const Text(
              'Experiment with text styles',
              style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 18.0,
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: const Text('Click Me'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome To ',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  'Flutter!',
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF44D1FD)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
