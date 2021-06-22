import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildList();
  }

  Widget _buildList() {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('res/mydp.jpg'),
              ),
              Positioned(
                bottom: 0.0,
                right: 1.0,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent[700],
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 18),
                ),
              ),
            ],
          ),
          title: Text('My status'),
          subtitle: Text('Tap to add status update'),
        ),
        Container(
          color: Colors.grey[200],
          height: 30.0,
          padding: EdgeInsets.only(left: 20.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Viewed updates',
            style:
                TextStyle(color: Colors.black54, fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
