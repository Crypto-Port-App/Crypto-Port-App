import 'package:flutter/material.dart';

class RisingPage extends StatefulWidget {
  final String title;

  const RisingPage({super.key, this.title = 'Rising'});

  @override
  State<RisingPage> createState() => _RisingPageState();
}

class _RisingPageState extends State<RisingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text('Rising'),
      ),
    );
  }
}
