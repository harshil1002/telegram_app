import 'package:flutter/material.dart';
import '../model/model.dart';
import 'profile_page.dart';

class ChatPage extends StatefulWidget {
  final User data;

  const ChatPage({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff527da3),
        // automaticallyImplyLeading: false,
        // leading: Icon(Icons.menu),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(
                    name: '${widget.data.name}', url: '${widget.data.url}'),
              ),
            );
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('${widget.data.url}'),
                maxRadius: 22,
              ),
              SizedBox(width: 10),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.data.name}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [Icon(Icons.more_vert), SizedBox(width: 13)],
      ),
      body: Stack(
        children: [
          Container(
            height: 740,
            width: 420,
            decoration: BoxDecoration(
              color: Colors.red,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.white,
                  Color(0xff527da3).withOpacity(0.8),
                  Colors.white,
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(color: Color(0xff527da3)),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.white38,
            ),
            hintText: 'Massage',
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white38,
                fontSize: 18),
            suffixIcon: Icon(Icons.camera_alt, color: Colors.white38),
          ),
        ),
      ),
    );
  }
}
