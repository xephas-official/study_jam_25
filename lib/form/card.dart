import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_jam_25/form/provider.dart';

class CardDetails extends ConsumerWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstName = ref.watch(firstNameProvider);
    final lastName = ref.watch(lastNameProvider);
    final phoneNumber = ref.watch(phoneNumberProvider);
    final address = ref.watch(addressProvider);

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hello $firstName $lastName',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          // p
          Text(
            'Phone Number: $phoneNumber',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),

          Text(
            'Address: $address',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
