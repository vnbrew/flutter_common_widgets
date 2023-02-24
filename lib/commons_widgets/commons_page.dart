import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({super.key});

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Widgets'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    applicationIcon: const FlutterLogo(),
                    applicationVersion: 'Version 1.0.0 1',
                    applicationName: 'Flutter Common Widgets',
                    context: context,
                    children: [
                      const Text('This is common widgets application'),
                    ],
                  );
                },
                child: const Text('Show About Dialog'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
