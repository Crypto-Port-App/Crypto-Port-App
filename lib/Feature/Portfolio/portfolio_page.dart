import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  final String title;

  const PortfolioPage({super.key, this.title = 'Portfolio'});
  
  @override 
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text('Portfolio'),
      ),
    );
  }
}