import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  void zero() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textSize = TextStyle(fontSize: 30);

    return Scaffold(
        //backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: const Text('Counter Screen'),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFloatingAction(
            increaseFunction: increase,
            decreaseFunction: decrease,
            zeroFunction: zero));
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increaseFunction;
  final Function decreaseFunction;
  final Function zeroFunction;

  const CustomFloatingAction({
    Key? key,
    required this.increaseFunction,
    required this.decreaseFunction,
    required this.zeroFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFunction(),
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => zeroFunction(),
          child: const Icon(Icons.refresh),
        ),
        FloatingActionButton(
          onPressed: () => decreaseFunction(),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
