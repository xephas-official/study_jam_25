import 'package:flutter/material.dart';
import 'package:study_jam_25/profile/profile_tile.dart';

import 'profile_pic.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
      ),

      body: Column(
        children: [
          SizedBox(height: 10),
          
          ProfilePic(),

          // row with an icon, text and trailing
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.orange),
                SizedBox(width: 10),
                //
                Expanded(
                  child: Text(
                    'My Account',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),

                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ],
            ),
          ),

          // using list tile for the same
          ProfileTile(icon: Icons.person, label: 'My Account'),
          // notifications, settings, help center, logout
          ProfileTile(icon: Icons.notifications, label: 'Notifications'),
          ProfileTile(icon: Icons.settings, label: 'Settings'),
          ProfileTile(icon: Icons.help, label: 'Help Center'),
          ProfileTile(icon: Icons.logout, label: 'Logout'),
        ],
      ),
    );
  }
}
