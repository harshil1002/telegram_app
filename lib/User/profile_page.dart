import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String url;

  const ProfilePage({Key key, this.name, this.url}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 412,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('${widget.url}'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined, size: 28),
                  Row(
                    children: [
                      Icon(Icons.videocam, size: 30),
                      SizedBox(width: 18),
                      Icon(Icons.call, size: 25),
                      SizedBox(width: 18),
                      Icon(Icons.more_vert, size: 25),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// bottomNavigationBar: BottomNavigationBar(
// // currentIndex:0,
// items: [
// BottomNavigationBarItem(
// icon: new Icon(Icons.home),
// title: new Text('Home'),
// ),
// BottomNavigationBarItem(
// icon: new Icon(Icons.mail),
// title: new Text('Messages'),
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.person),
// title: Text('Profile')
// ),
// ],
// ),
