import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_jam_25/copypaste/copy_paste.dart';
import 'package:study_jam_25/counter/counter.dart';
import 'package:study_jam_25/counter/counter_with_state.dart';
import 'package:study_jam_25/counter/provider.dart';
import 'package:study_jam_25/form/form.dart';
import 'package:study_jam_25/home/button.dart';
import 'package:study_jam_25/product/product.dart';
import 'package:study_jam_25/profile/profile.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Study Jams'), backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            AppButton(
              label: 'Go to Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            AppButton(
              label: 'Go to Product',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                );
              },
            ),
            AppButton(
              label: 'Go to Product',
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                );
              },
            ),
            AppButton(
              label: 'New Feature',
              color: Colors.purple,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Coming Soon'),
                      content: const Text('This feature is under development.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            AppButton(
              label: 'Go to Product',
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                );
              },
            ),
            AppButton(
              label: 'Go to Counter',
              color: Colors.pink,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );
              },
            ),
            AppButton(
              label: 'Counter with State ($counter)',
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterWithState(),
                  ),
                );
              },
            ),
            AppButton(
              label: 'Go to Form',
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormPage()),
                );
              },
            ),
            AppButton(
              label: 'Go to CopyPaste',
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallHistoryScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
