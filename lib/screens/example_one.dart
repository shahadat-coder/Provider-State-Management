import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  @override
  Widget build(BuildContext context) {
    print(build);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Subscribe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child){
            return Slider(
                min: 0,
                max: 1,
                value: value.value, onChanged: (val){
              value.setValue(val);
            });
          }),

          Consumer<ExampleOneProvider>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)
                      ),
                      child: const Center(child: Text('Container 1')),
                    ),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value)
                      ),
                      child: const Center(child: Text('Container 2')),
                    ),
                  ),
                ),
              ],
            );
          }),


        ],
      ),
    );
  }
}
