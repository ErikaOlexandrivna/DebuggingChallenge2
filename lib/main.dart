import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Debugging Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Дебагінг Demo'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    items[index],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => method(),
            child: const Text(
              'trext',
            ),
          ),
          ElevatedButton(
            onPressed: () => method(),
            child: const Text(
              'trext',
            ),
          ),
          ElevatedButton(
            onPressed: () => method(),
            child: const Text(
              'trext',
            ),
          ),
        ],
      ),
    );
  }

  void method() {
    print('Pryvit');
  }
}
