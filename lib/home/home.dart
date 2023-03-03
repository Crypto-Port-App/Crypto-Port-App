import 'package:flutter/material.dart';

import '../Feature/Rising page/rising_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, this.title = 'Home'});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Header',
              style: textTheme.titleLarge,
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
              leading: const Icon(Icons.show_chart_rounded),
              title: const Text('Rising'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const RisingPage();
                }));
              }),
          ListTile(
              leading: const Icon(Icons.currency_exchange_rounded),
              title: const Text('Coins'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const RisingPage();
                }));
              }),
          ListTile(
              leading: const Icon(Icons.folder_rounded),
              title: const Text('Portfolio'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const RisingPage();
                }));
              }),
        ])),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: const EdgeInsets.all(20),
          childAspectRatio: 3 / 2,
          children: [
            Image.asset('assets/nav-drawer-1.jpg'),
            Image.asset('assets/nav-drawer-2.jpg'),
            Image.asset('assets/nav-drawer-3.jpg'),
            Image.asset('assets/nav-drawer-4.jpg'),
          ],
        ));
  }
}
