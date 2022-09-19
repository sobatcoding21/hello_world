import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Saya Latihan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hello Saya Latihan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double wColumn = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,
            style: const TextStyle(fontSize: 16, color: Colors.black)),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10),
          const SizedBox(
              width: double.infinity,
              child:
                  Text("Saya widget di tengah", textAlign: TextAlign.center)),
          Container(
              height: 50, width: double.infinity, color: Colors.redAccent),
          Row(
            children: [
              SizedBox(
                  width: wColumn,
                  child: const Text("Saya kiri", textAlign: TextAlign.center)),
              SizedBox(
                  width: wColumn,
                  child: const Text("Saya kanan", textAlign: TextAlign.center)),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.yellow,
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              color: Colors.purple,
              child: const Text("Saya berwarna", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 90,
                color: Colors.black,
                alignment: Alignment.center,
                child: const Text("Saya di bawah sendiri", style: TextStyle(color: Colors.white),),
              ),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
        onPressed: () {
          //
        },
        tooltip: 'Rec',
        child: const Text("REC"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
