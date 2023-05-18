import 'package:flutter/material.dart';

class AppbarWdgt extends StatefulWidget {
  const AppbarWdgt({super.key});

  @override
  State<AppbarWdgt> createState() => _AppbarWdgtState();
}

class _AppbarWdgtState extends State<AppbarWdgt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: const Text('제목'),
        centerTitle: true,
        leading: const IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: const [
          IconButton(icon: Icon(Icons.image), onPressed: null),
          IconButton(icon: Icon(Icons.search), onPressed: null),
        ],
      ),
    );
  }
}