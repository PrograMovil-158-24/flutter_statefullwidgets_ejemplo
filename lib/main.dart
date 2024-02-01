import 'package:flutter/material.dart';
import 'package:flutter_statefullwidgets_ejemplo/presentation/home_page.dart';

void main()=> runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Flutter StateFullWidget Demo';
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: title),
    );
  }
}
