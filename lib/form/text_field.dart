import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTextField extends ConsumerWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.provider,
  });

  // label, hint, icon, provider
  final String label;
  final String hint;
  final IconData icon;
  final StateProvider<String> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(200)),
        ),
        onChanged: (value) {
          // Handle first name change
          // print("First Name: $value");
          ref.read(provider.notifier).state = value;
        },
      ),
    );
  }
}
