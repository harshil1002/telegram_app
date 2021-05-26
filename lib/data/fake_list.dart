import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:telegram_app/model/model.dart';

class FakeList extends StatefulWidget {
  @override
  _FakeListState createState() => _FakeListState();
}

class _FakeListState extends State<FakeList> {
  Faker faker = Faker();

  @override
  void initState() {
    generateData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}

generateData() {
  for (int i = 1; i <= 50; i++) {
    var userFakeList;
    userFakeList.add(User(
      name: '',
      url: '',
      trail: '',
      seen: '',
      subtitle: '',
    ));
  }
}

//xfhfhxdc
