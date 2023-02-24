import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({super.key});

  @override
  State<AbsorbPointerPage> createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsorbPointer'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: null,
              ),
            ),
            SizedBox(
              width: 200,
              height: 100,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
