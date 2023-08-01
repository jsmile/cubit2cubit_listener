import 'package:cubit2cubit_listener/cubits/color/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/counter/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ColorCubit()),
          BlocProvider(create: (context) => CounterCubit()),
        ],
        child: MaterialApp(
          title: 'Flutter BlocListener for Cubit to Cubit',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(
              title: 'BlocListener for Cubit to Cubit Home Page'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text(
                'Change Color',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 20.0),
            const Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text(
                'Increse Count',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
