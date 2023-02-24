import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({super.key});

  @override
  State<AlignPage> createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  bool top = false;

  void move() {
    setState(() {
      top = !top;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align & AnimatedAlign'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: 250,
          child: AnimatedAlign(
            alignment: top ? Alignment.bottomLeft : Alignment.topRight,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(
              size: 24,
            ),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: move,
        child: const Text('Move'),
      ),
    );
  }
}
