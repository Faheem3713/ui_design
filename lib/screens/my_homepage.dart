import 'package:flutter/material.dart';

import 'manage_store.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchSelection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(title: 'Additional information'),
        body: Column(children: [
          const ListTile(
              leading: Icon(Icons.share),
              title: Text('Additional Information'),
              trailing: Icon(Icons.chevron_right_outlined)),
          const ListTile(
              leading: Icon(Icons.comment_bank_outlined),
              title: Text('Change Language'),
              trailing: Icon(Icons.chevron_right_outlined)),
          ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const ManageStore(),
                )),
            leading: const Icon(Icons.whatsapp),
            title: const Text('WhatsApp Chat Support'),
            trailing: Switch(
              value: switchSelection,
              onChanged: (value) => setState(() {
                switchSelection = value;
              }),
            ),
          ),
          const ListTile(
              leading: Icon(Icons.lock_outline), title: Text('Privacy Policy')),
          const ListTile(
              leading: Icon(Icons.star_border), title: Text('Rate Us')),
          const ListTile(
              leading: Icon(Icons.exit_to_app), title: Text('Sign Out')),
        ]));
  }
}

PreferredSizeWidget appBarWidget({
  required String title,
}) {
  return AppBar(title: Text(title), backgroundColor: Colors.blue[800]);
}
