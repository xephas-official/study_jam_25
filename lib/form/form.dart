import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_jam_25/form/card.dart';
import 'package:study_jam_25/form/provider.dart';
import 'package:study_jam_25/form/text_field.dart';
import 'package:study_jam_25/home/button.dart';

class FormPage extends ConsumerWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Page")),
      body: Form(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
            SizedBox(height: 20),
            CardDetails(),
            SizedBox(height: 20),

            AppTextField(
              label: "First Name",
              hint: "Enter your first name",
              icon: Icons.person,
              provider: firstNameProvider,
            ),
            AppTextField(
              label: "Last Name",
              hint: "Enter your last name",
              icon: Icons.person,
              provider: lastNameProvider,
            ),

            // phone number
            AppTextField(
              label: "Phone Number",
              hint: "Enter your phone number",
              icon: Icons.phone,
              provider: phoneNumberProvider,
            ),

            // address
            AppTextField(
              label: "Address",
              hint: "Enter your address",
              icon: Icons.location_on,
              provider: addressProvider,
            ),

            // go to counter page
            AppButton(
              label: 'Continue',
              color: Colors.blue,

              onPressed: () {
                // send the data to the database
                final firstName = ref.watch(firstNameProvider);
                final lastName = ref.watch(lastNameProvider);
                final phoneNumber = ref.watch(phoneNumberProvider);
                final address = ref.watch(addressProvider);

                print("First Name: $firstName");
                print("Last Name: $lastName");
                print("Phone Number: $phoneNumber");
                print("Address: $address");

                // pop to go back to previous page
              },
            ),
          ],
        ),
      ),
    );
  }
}
