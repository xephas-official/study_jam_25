import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          spacing: 10,
          children: [
            // image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),

            // texts
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Basic Flyer",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text("ugx 15,000 •".toUpperCase()),
                ],
              ),
            ),

            // icon
            Container(
              // width: 200,
              // height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF0B3A39),

                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(20),

              // margin: const EdgeInsets.all(10),
              child: Icon(
                CupertinoIcons.cart_fill_badge_plus,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
