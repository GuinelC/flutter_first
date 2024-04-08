import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors
            .white, // Changer la couleur de fond du corps de l'application en blanc
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page! charly App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _counter % 2 == 0
            ? Colors.red
            : Colors
                .blue, // Changer la couleur de l'arrière-plan de l'app bar en fonction de la parité du compteur
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              _counter % 2 == 0 ? 'Pair' : 'Impair',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            if (_counter % 3 == 0 && _counter % 5 == 0)
              Text(
                'FizzBuzz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            else if (_counter % 3 == 0)
              Text(
                'Fizz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            else if (_counter % 5 == 0)
              Text(
                'Buzz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
