import 'package:equitable/bloc/switch/switchBloc.dart';
import 'package:equitable/bloc/switch/switchEvents.dart';
import 'package:equitable/bloc/switch/switchStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatefulWidget {
  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row at the top
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('notification'),
              BlocBuilder<Switchbloc, Switchstates>(
                builder: (context, state) {
                  buildWhen:
                  (previous, current) {
                    // Only rebuild if the slider value has changed
                    return previous.Switch != current.Switch;
                  };

                  return Switch(
                      value: state.isSwitch,
                      onChanged: (newValue) {
                        print("notification");
                        context
                            .read<Switchbloc>()
                            .add(EnableOrDisableNotification());
                      });
                },
              )
            ],
          ),
          SizedBox(height: 20), // Space between row and container
          // Container in the center
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<Switchbloc, Switchstates>(
                builder: (context, state) {
                  return Container(
                    width: 300,
                    height: 200,
                    color: Colors.red.withOpacity(state.slider),
                    child: Center(
                      child: Text(
                        'Centered Container',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  );
                },
              )),
          BlocBuilder<Switchbloc, Switchstates>(
            buildWhen: (previous, current) {
              // Only rebuild if the slider value has changed
              return previous.slider != current.slider;
            },
            builder: (context, state) {
              return Slider(
                  value: state.slider,
                  onChanged: (value) {
                    print("slider");
                    context.read<Switchbloc>().add(SliderEvent(slider: value));
                  });
            },
          )
        ],
      ),
    );
  }
}
