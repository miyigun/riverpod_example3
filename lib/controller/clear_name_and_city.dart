import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example3/controller/controller.dart';
import 'package:riverpod_example3/controller/horizontal_space.dart';
import 'package:riverpod_example3/model/state_provider_model.dart';

class ClearNameAndCity extends StatelessWidget {
  const ClearNameAndCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () => clearName(context, stateProviderName as WidgetRef),
            child: const Text(
              'Change name',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          const HorizontalSpace(),
          ElevatedButton(
            onPressed: () => clearCity(context, stateProviderCity as WidgetRef),
            child: const Text(
              'Change City',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
