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
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  String get text => 'Hello, World!';
  late final controller = AnimationController(vsync: this);
  late int count = 1 * 3;

  TextStyle get textStyle => const TextStyle(
        color: Colors.black,
        fontSize: 16,
      );

  // LINT: avoid_returning_widgets
  Widget _buildTextField() {
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

    Navigator.push(context, '' as Route);

    // Future.wait();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: size.height,
        child: Column(
          children: [
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
