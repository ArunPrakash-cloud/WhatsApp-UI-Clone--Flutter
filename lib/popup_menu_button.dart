import 'package:flutter/material.dart';

enum options {
  newgroup,
  newbroadcast,
  whatsappweb,
  starred,
  payments,
  settings
}

class PopupMenu extends StatefulWidget {
  @override
  _PopupMenuState createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  options _selection;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<options>(
      // onSelected: (options result) {
      //   setState(() {
      //     _selection = result;
      //     print(_selection.toString());
      //   });
      // },
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
    );
  }
}
