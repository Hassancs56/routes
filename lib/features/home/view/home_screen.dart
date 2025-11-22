import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning/features/read.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is Home Screen'),
            ElevatedButton(
              onPressed: () {
                context.go('/home/read');
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
