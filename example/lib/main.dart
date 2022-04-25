import 'package:example/layout/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Adaptive([
          BreakpointAndProps(Breakpoints.webBreakpoint,
              xs: Colors.amber,
              sm: Colors.green,
              md: Colors.blue,
              lg: Colors.orange,
              xl: Colors.black),
          BreakpointAndProps(Breakpoints.iosBreakpoint,
              xs: Colors.amber,
              sm: Colors.green,
              md: Colors.blue,
              lg: Colors.orange,
              xl: Colors.black),
        ]).resolve(context),
        title: const Text('Liquid Demo'),
      ),
      body: const Center(
        child: Text('Liquid'),
      ),
    );
  }
}
