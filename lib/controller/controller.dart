import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example3/model/state_provider_model.dart';

void increment(BuildContext context, WidgetRef ref) {
  final stateProviderIntegerRead = ref.read(stateProviderInteger.notifier);
  stateProviderIntegerRead.state++;
}

void changeName(BuildContext context, WidgetRef ref) {
  final stateProviderNameRead = ref.read(stateProviderName.notifier);
  stateProviderNameRead.state = 'Gozde!';
}

void changeCity(BuildContext context, WidgetRef ref) {
  final stateProviderCityRead = ref.read(stateProviderCity.notifier);
  stateProviderCityRead.state = 'Jericho';
}

void clearName(BuildContext context, WidgetRef ref) {
  final stateProviderNameRead = ref.read(stateProviderName.notifier);
  stateProviderNameRead.state = 'Murat!';
}

void clearCity(BuildContext context, WidgetRef ref) {
  final stateProviderCityRead = ref.read(stateProviderCity.notifier);
  stateProviderCityRead.state = 'Los Angeles';
}

void changeLittleMonk(BuildContext context, WidgetRef ref) {
  final stateProviderClassRead = ref.read(stateProviderClass.notifier);
  stateProviderClassRead.state =
      StateProviderModel('Now I am a big monk with white beard!', 70);
}

void reverseAgeOfLittleMonk(BuildContext context, WidgetRef ref) {
  final stateProviderClassRead = ref.read(stateProviderClass.notifier);
  stateProviderClassRead.state =
      StateProviderModel('Now I am a little monk again!', 6);
}
