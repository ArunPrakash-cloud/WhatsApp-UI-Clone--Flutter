import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final String name;
  final String chat;
  final String dp;

  Chats({@required this.name, @required this.chat, @required this.dp});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(chat),
      leading: Container(
        width: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(dp),
          ),
        ),
      ),
      trailing: Container(
        height: 20.0,
        width: 20.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.greenAccent[400],
        ),
        child: Text(
          '1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
