import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: const Color.fromARGB(255, 162, 54, 244),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                const SizedBox(width: 30),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                const SizedBox(width: 30),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 250,
            child: Row(
              children: [
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
