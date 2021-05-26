import 'package:flutter/material.dart';
import '../User/chat_page.dart';
import '../model/model.dart';

class CommonWidget {
  static Widget listTile({
    BuildContext context,
    User data,
  }) =>
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage(data: data)),
          );
        },
        leading: CircleAvatar(
          maxRadius: 28,
          backgroundImage: NetworkImage('${data.url}'),
        ),
        title: Text(
          '${data.name}',
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          '${data.subtitle}',
          style: TextStyle(color: Colors.white38),
        ),
        trailing: Text(
          '${data.trail}',
          style: TextStyle(color: Colors.white38),
        ),
      );
}