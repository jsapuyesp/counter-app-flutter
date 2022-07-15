import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textSize = TextStyle(fontSize: 30);
    int counter = 0;

    return Scaffold(
        //backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Clicks Counter', style: textSize),
                Text('$counter', style: textSize),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.plus_one), onPressed: () => counter++));
  }
}
