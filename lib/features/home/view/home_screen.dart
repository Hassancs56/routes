import 'package:flutter/material.dart';
import 'package:learning/features/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final proivder = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(proivder.counter.toString()),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    proivder.increment();
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    proivder.reset();
                  },
                  icon: Icon(Icons.history),
                ),
                IconButton(
                  onPressed: () {
                    proivder.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
