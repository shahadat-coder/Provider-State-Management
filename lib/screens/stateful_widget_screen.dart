import 'package:flutter/material.dart';

class StateFulWidgetScreen extends StatefulWidget {
  const StateFulWidgetScreen({super.key});

  @override
  State<StateFulWidgetScreen> createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<StateFulWidgetScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text(count.toString(), style: const TextStyle(fontSize: 50),)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print(count++);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
