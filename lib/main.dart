import 'package:api_integration3/apis.dart';
import 'package:api_integration3/bloc/number_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NumberBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  final numController = TextEditingController();
  String? text = '';
  String number = '';
  String found = '';
  String type = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: BlocBuilder<NumberBloc, NumberState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: numController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.indigo)),
                      onPressed: () async {
                        context.read<NumberBloc>().add(GetFact(number: numController.text));
                      },
                      child: const Text(
                        'Get Fact',
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(state.text),
                  Text(state.number.toString()),
                  Text(state.found.toString()),
                  Text(state.type)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
