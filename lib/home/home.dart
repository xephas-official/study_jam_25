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
    /// using the provider to get the value of the counter
    final counter = ref.watch(counterProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Study Jams'),
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            AppButton(
              label: 'Go to Profile',
              onPressed: () {
                // push to move to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );

                // pop to go back to previous page
                // Navigator.pop(context);
              },
            ),

            // go to stock page
            AppButton(
              label: 'Go to Product',
              color: Colors.green,
              onPressed: () {
                // push to move to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                );

                // pop to go back to previous page
                // Navigator.pop(context);
              },
            ),

            // go to counter page
            AppButton(
              label: 'Go to Counter',
              color: Colors.pink,
              onPressed: () {
                // push to move to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );

                // pop to go back to previous page
                // Navigator.pop(context);
              },
            ),
            // go to counter page
            AppButton(
              label: 'Counter with State ($counter)',
              color: Colors.deepOrange,
              onPressed: () {
                // push to move to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterWithState(),
                  ),
                );

                // pop to go back to previous page
                // Navigator.pop(context);
              },
            ),
            // go to counter page
            AppButton(
              label: 'Go to Form',
              color: Colors.black,

              onPressed: () {
                // push to move to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormPage()),
                );

                // pop to go back to previous page
                // Navigator.pop(context);
              },
            ),
            // go to counter page
            AppButton(
              label: 'Go to CopyPaste',
              color: Colors.red,

              onPressed: () {
                // push to move to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CallHistoryScreen(),
                  ),
                );

                // pop to go back to previous page
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
