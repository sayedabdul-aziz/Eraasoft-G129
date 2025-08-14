import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: TextStyle(fontSize: 30)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
