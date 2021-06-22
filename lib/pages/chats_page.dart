import 'package:flutter/material.dart';
import '../chats.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildList();
  }

  Widget _buildList() {
    return Scrollbar(
      child: ListView(
        physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Chats(
              name: 'Mark Zuckerberg',
              chat: 'Hi, I am CEO, bitch',
              dp: 'res/Mark.jpg'),
          Divider(indent: 70),
          Chats(name: 'Jeff Bezos', chat: 'Whass up', dp: 'res/jeff.jpg'),
          Divider(indent: 70),
          Chats(
              name: 'Bill Gates',
              chat: 'Your message hear',
              dp: 'res/billgates.jpg'),
          Divider(indent: 70),
          Chats(
              name: 'Warren Buffet',
              chat: 'Never lose money',
              dp: 'res/buffet.jpg'),
          Divider(indent: 70),
          Chats(
              name: 'Larry Page',
              chat: 'It sounds really cool',
              dp: 'res/larry.jpeg'),
          Divider(indent: 70),
          Chats(name: 'Elon Musk', chat: 'Use signal', dp: 'res/musk.jpg'),
          Divider(indent: 70),
          Chats(
              name: 'Sundar Pichai',
              chat: 'Follow ur passion',
              dp: 'res/sundar.jpg'),
          SizedBox(height: 30),
          Center(child: Text('Tap and hold on a chat for more options')),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
