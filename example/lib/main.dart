// ignore_for_file: unreachable_from_main

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  Future.wait([
    Future(() => ''),
  ]);

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyWidget(),
      ),
    ),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, this.name});
  final String? name;

  static const double kPadding = 8;
  static String get yo => 'Hello, World!';

  static void privateMethod() {
    // ignore: avoid_print
    print('Hello, World!');
  }

  String get text => 'Hello, World!';

  void hi() {
    // TODO(A): implement hi
  }

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  String get text => 'Hello, World!';
  late final controller = AnimationController(vsync: this);
  late int count = 1 * 3;

  late StreamSubscription timer;

  TextStyle get textStyle => const TextStyle(
        color: Colors.black,
        fontSize: 16,
      );

  // LINT: avoid_returning_widgets
  Widget _buildTextField() {
    if (kDebugMode) {
      if (kProfileMode) {
        if (kReleaseMode) {
          if (kDebugMode) {
            if (kDebugMode) {}
          }
        }
      }
      if (kProfileMode) {
        return const Padding(
          padding: EdgeInsets.all(1),
          child: TextField(
            maxLength: 10,
            decoration: InputDecoration(
              labelText: 'Enter some text',
            ),
          ),
        );
      }
    }
    return const Padding(
      padding: EdgeInsets.all(1),
      child: TextField(
        maxLength: 10,
        decoration: InputDecoration(
          labelText: 'Enter some text',
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: size.height,
        child: Column(
          children: [
            // ignore: avoid_single_child_in_multi_child_widgets
            const Column(
              children: [
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            const Column(
              children: [
                Placeholder(),
                Placeholder(),
              ],
            ),
            _buildTextField(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    timer = Stream.empty().listen((event) {});
    try {} catch (e, s) {
      print(e);
      print(s);
    }
  }
}

class ClassName {
  ClassName({required this.name});
  final String name;
}
