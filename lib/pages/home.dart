import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/status_page.dart';
import 'package:flutter_whatsapp/popup_menu_button.dart';
import 'chats_page.dart';

enum options {
  newgroup,
  newbroadcast,
  whatsappweb,
  starred,
  payments,
  settings
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  options _selection;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          elevation: 5.0,
          backgroundColor: Colors.teal[800],
          actions: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.search),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopupMenuButton<options>(
                  onSelected: (options result) {
                    setState(() {
                      _selection = result;
                      print(_selection.toString());
                    });
                  },
                  itemBuilder: (_) => <PopupMenuEntry<options>>[
                    const PopupMenuItem<options>(
                      value: options.newgroup,
                      child: Text('New group'),
                    ),
                    const PopupMenuItem<options>(
                      value: options.newbroadcast,
                      child: Text('New broadcast'),
                    ),
                    const PopupMenuItem<options>(
                      value: options.whatsappweb,
                      child: Text('WhatsApp Web'),
                    ),
                    const PopupMenuItem<options>(
                      value: options.starred,
                      child: Text('Starred messages'),
                    ),
                    const PopupMenuItem<options>(
                      value: options.payments,
                      child: Text('Payments'),
                    ),
                    const PopupMenuItem<options>(
                      value: options.settings,
                      child: Text('Settings'),
                    ),
                  ],
                )),
          ],
          bottom: TabBar(
            indicatorWeight: 2.0,
            labelPadding: EdgeInsets.only(bottom: 0.0),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.photo_camera),
                iconMargin: EdgeInsets.only(bottom: 0.0),
              ),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Open Camera'),
            ),
            ChatsPage(),
            StatusPage(),
            Center(
              child: Text('Call'),
            ),
          ],
        ),
      ),
    );
  }
}
