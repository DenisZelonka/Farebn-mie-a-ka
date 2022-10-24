import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BEST APP EVER',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'PROJEKT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Farebná miešačka'),
      ),
      body: Center(
        child: Column(
          children: [
            FloatingActionButton.extended(
              heroTag: 'btn1',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateOwnColor()));
              },
              label: const Text('Vytvoriť vlastný odtieň'),
              icon: const Icon(Icons.color_lens),
            ),
            const Spacer(),
            FloatingActionButton.extended(
              heroTag: 'btn2',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PickColor()));
              }, 
              label: const Text('Vybrať z dostupných odtienov'),
              icon: const Icon(Icons.colorize),
              ),
            const Spacer(),
            FloatingActionButton.extended(
              heroTag: 'btn3',
              onPressed: () {}, 
              label: const Text('Skenovať kód'),
              icon: const Icon(Icons.qr_code_scanner),
            )
          ],
        )
      ),
    );
  }
}


//own classes
class CreateOwnColor extends StatelessWidget {
  const CreateOwnColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Miesto kde si môžete namiešať vlastný odtieň'),
        centerTitle: true,
      ),
      body: ColorPicker(
        pickerColor: Colors.blue,
        onColorChanged: (Color color) {print(color);},
      ),
    );
  }
}

class PickColor extends StatelessWidget {
  const PickColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Miesto kde si môžete vybrať z dostupných odtieňov'),
        centerTitle: true,
      ),
      body: const Text('Nahrať jednotivé odtiene'),
    );
  }
}