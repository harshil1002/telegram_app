import 'package:flutter/material.dart';

class CreateList extends StatefulWidget {
  @override
  _CreateListState createState() => _CreateListState();
}

class _CreateListState extends State<CreateList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff527da3),
        automaticallyImplyLeading: false,
        leading: Icon(Icons.menu),
        title: Text(
          'New Message',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu_open,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
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
        // child: Row(
        //   children: [
        //     Container(height: 50,
        //       width: 52,
        //       color: Colors.red,
        //     ),
        //    ],
        // ),
      ),
    );
  }
}
