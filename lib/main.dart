import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';
import 'package:provider_state_management/provider/favourite_provider.dart';
import 'screens/favourite/favourite_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CounterProvider()),
        ChangeNotifierProvider(create: (_)=> ExampleOneProvider()),
        ChangeNotifierProvider(create: (_)=> FavouriteItemProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home:  const FavouriteScreen(),
      ),
    );

  }
}

