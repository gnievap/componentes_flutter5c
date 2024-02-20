import 'package:flutter/material.dart';

class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lista infinita'),
    );
  }
}
