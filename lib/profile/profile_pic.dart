import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          // comes first
          CircleAvatar(
            backgroundColor: Colors.lightBlue,
            radius: 80,
            // from assets (local storage)
            // backgroundImage: AssetImage("assets/profile.jpg"),

            // * from network
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),

          // icon on top
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
