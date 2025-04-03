import 'package:flutter/material.dart';
import 'package:study_jam_25/home/button.dart';
import 'package:study_jam_25/product/product.dart';
import 'package:study_jam_25/profile/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
