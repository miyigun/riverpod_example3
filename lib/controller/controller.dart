import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_example3/model/state_provider_model.dart';

void increment(BuildContext context) {
  context.read(stateProviderInteger).state += 1;
}

void changeName(BuildContext context) {
  context.read(stateProviderName).state = 'Gozde!';
}

void changeCity(BuildContext context) {
  context.read(stateProviderCity).state = 'Jericho';
}

void clearName(BuildContext context) {
  context.read(stateProviderName).state = 'Murat';
}

void clearCity(BuildContext context) {
  context.read(stateProviderCity).state = 'Los Angeles';
}

void changeLittleMonk(BuildContext context) {
  context.read(stateProviderClass).state =
      StateProviderModel('Now I am a big monk with white beard!', 70);
}

void reverseAgeOfLittleMonk(BuildContext context) {
  context.read(stateProviderClass).state =
      StateProviderModel('Now I am a little monk again!', 6);
}
