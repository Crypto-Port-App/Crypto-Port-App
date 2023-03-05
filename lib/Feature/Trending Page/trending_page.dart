import 'package:flutter/material.dart';

class TrendingPage extends StatefulWidget {
  final String title;

  const TrendingPage({super.key, this.title = 'Trending'});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text('Trending'),
      ),
    );
  }
}

