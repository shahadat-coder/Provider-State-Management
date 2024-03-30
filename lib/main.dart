import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';
import 'package:provider_state_management/provider/favourite_provider.dart';
import 'package:provider_state_management/provider/theme_changer_provider.dart';
import 'package:provider_state_management/screens/value_notify_listner.dart';



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
        ChangeNotifierProvider(create: (_)=> ThemeChanger()),
      ],
      child: Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
              primarySwatch: Colors.red
          ),
          home:   NotifyListenerScreen(),
        );
      }),
    );

  }
}

