import 'package:flutter/material.dart';
import 'package:zigsaw/utils/no_records_found.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Notifications"),
      ),
      body: const NoRecordFound(),
    );
  }
}
