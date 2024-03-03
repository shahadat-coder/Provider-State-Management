import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

   int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
           child: Center(child: Text(x.toString(), style: const TextStyle(fontSize: 50),)),
         )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
