import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example3/controller/controller.dart';
import 'package:riverpod_example3/controller/horizontal_space.dart';
import 'package:riverpod_example3/model/state_provider_model.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key, required this.stateProviderIntegerObject});

  final int stateProviderIntegerObject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          stateProviderIntegerObject.toString(),
          style: const TextStyle(
            fontSize: 30.0,
          ),
        ),
        const HorizontalSpace(),
        FloatingActionButton(
          onPressed: () =>
              increment(context, stateProviderInteger as WidgetRef),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const HorizontalSpace(),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            'Clicking the button \n will increase \n the number by 1',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
