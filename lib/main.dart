import 'package:flutter/material.dart';
import 'User/chat_list.dart';
import 'login/login_page.dart';

void main() {
  runApp(OneApp());
}

class OneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme()),
      debugShowCheckedModeBanner: false,
      home: ChatList(),
    );
  }
}