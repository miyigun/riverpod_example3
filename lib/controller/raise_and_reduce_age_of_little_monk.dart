import 'package:flutter/material.dart';
import 'package:riverpod_example3/controller/controller.dart';

class RaiseAndReduceAgeOfLittleMonk extends StatelessWidget {
  const RaiseAndReduceAgeOfLittleMonk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () => changeLittleMonk(context),
            child: const Text(
              'Grow Little Monk',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          const VerticalDivider(),
          ElevatedButton(
            onPressed: () => reverseAgeOfLittleMonk(context),
            child: const Text(
              'Reverse Age of Little Monk',
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
