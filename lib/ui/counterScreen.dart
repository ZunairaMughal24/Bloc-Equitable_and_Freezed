import 'package:equitable/bloc/counter/counterEvents.dart';
import 'package:equitable/bloc/counter/counter_bloc.dart';
import 'package:equitable/bloc/counter/couterStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            BlocBuilder<CounterBloc, CounterStates>(
              builder: (context, state) {
                return Text(state.counter.toString(),
                    style:
                        TextStyle(fontSize: 48, fontWeight: FontWeight.bold));
              },
            ),
            // (
            //     // child: const Text(
            //   '0', // Static counter value for UI
            //   style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            //     // ),
            //     ),
            SizedBox(height: 40),
            BlocBuilder<CounterBloc, CounterStates>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(IncreamentCounter());
                      }, // No logic, button is disabled
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 236, 208, 204),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: Text(
                        'Decreament--',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(DecreamentCounter());
                      }, // No logic, button is disabled
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 148, 192, 150),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: Text(
                        'Increament++',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
