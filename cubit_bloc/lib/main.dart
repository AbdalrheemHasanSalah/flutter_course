import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'controllers/cubit/cubit/counter_cubit.dart';
import 'controllers/bloc/bloc/counter_bloc.dart';
import 'module/user_module.dart';
/*void main() {
  // Provide the CounterCubit to the whole app
  // So any widget can access it using context.read or BlocBuilder
  runApp(BlocProvider(create: (_) => CounterCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Root widget of the app
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    print(
      'Scaffold build',
    ); // For debugging: to see when the whole page rebuilds

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),

            /// BlocSelector rebuilds only the Text widget
            /// It listens to CounterCubit and selects only the "count" value.
            BlocSelector<CounterCubit, CounterState, int>(
              selector: (state) => state.count,

              /// builder gets called only when the selected value changes
              builder: (context, count) {
                print('Text rebuild'); // For debugging
                return Text(
                  count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),

      /// FloatingActionButton triggers the increment function in CounterCubit
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Calls increment() method inside CounterCubit
          context.read<CounterCubit>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}*/

void main() {
  runApp(BlocProvider(create: (_) => CounterBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    print('Scaffold build');
    Person m = Person("a");
    Person b = Person("b");

    print(m == b);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),

            BlocSelector<CounterBloc, CounterState, int>(
              selector: (state) => state.count,
              builder: (context, count) {
                print('Text rebuild');
                return Text(
                  count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add IncrementEvent to the Bloc
          context.read<CounterBloc>().add(IncrementEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
