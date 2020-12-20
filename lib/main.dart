import 'package:counter_example/next.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('FAB1'),
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                print('On Pressed');
                counter++;
                print(counter);
              });
            },
          ),
          SizedBox(
            width: 20.0,
          ),

          //If you want to use two FAB, please comment the Navigation from line 73-77
          // FloatingActionButton(
          //   key: Key('FAB2'),
          //   child: Text(
          //     '-',
          //     style: TextStyle(
          //       fontSize: 50.0,
          //     ),
          //   ),
          //   onPressed: () {
          //     setState(() {
          //       print('On Pressed');
          //       counter--;
          //       print(counter);
          //     });
          //   },
          // ),
        ],
      ),
      appBar: AppBar(
        title: Text('Counter Example'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => NextPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            '$counter',
            style: TextStyle(fontSize: 50.0),
          ),
        ),
      ),
    );
  }
}
