
import 'package:flutter/material.dart';

// Mostrar Contenido estatico => StalessWidget
/*
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
 // final contador = 0;
  static const int contador = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Text(
          'You have pushed the button this many times: $contador',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //contador++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// DART _ representa un miembro privado

// _MyHomePageState es una clase privada
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
      _counter++;
      setState(() {
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton:
       Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
        FloatingActionButton(
          onPressed: ()=>{ setState((){_counter--;}) }, 
          tooltip: 'Decrease', 
          child: const Icon(Icons.minimize),),
        FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
