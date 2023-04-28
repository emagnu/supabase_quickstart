// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// Import FILES
// Import PARTS
// PROVIDERS

/// Project URL & API Key
const supabaseUrl = 'https://oxjjbiygyzghthrssfpg.supabase.co';
const supabaseKey = String.fromEnvironment('SUPABASE_KEY');
final supabase = Supabase.instance.client;

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor,
    ));
  }

  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message, backgroundColor: Colors.red);
  }
}
