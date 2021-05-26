import 'package:flutter/material.dart';
import 'package:telegram_app/data/list_data.dart';
import 'package:telegram_app/model/model.dart';
import '../widgets/widgets.dart';
import 'create_list.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<User> userList = [];
  Map map = {'key': 'val'};
  List<Color> _colors = <Color>[Color(0xff527da3)];
  bool isLoading = false;
  bool isPageLoading = false;
  ScrollController _pageScroll = ScrollController();

  @override
  void initState() {
    getData();
    _pageScroll.addListener(() {
      if (_pageScroll.position.maxScrollExtent == _pageScroll.position.pixels) {
        getMoreData();
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colors[0],
        automaticallyImplyLeading: false,
        leading: Icon(Icons.menu),
        title: Text(
          'Telegram',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: isLoading
          ? Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                ],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                color: _colors[0],
                // gradient: LinearGradient(
                //   begin: FractionalOffset.topCenter,
                //   end: FractionalOffset.bottomCenter,
                //   colors: [
                //     _colors[0],
                //     Colors.white.withOpacity(0.8),
                //     _colors[0],
                //   ],
                // ),
              ),
              child: ListView(
                controller: _pageScroll,
                children: userList.map(
                  (User data) {
                    return CommonWidget.listTile(
                      context: context,
                      data: data,
                    );
                  },
                ).toList(),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateList()),
          );
        },
        child: Icon(Icons.create, color: _colors[0]),
      ),
    );
  }

  Future getData() async {
    setState(() => isLoading = true);
    ListData.userListData().then((list) {
      setState(() {
        userList.addAll(list);
        isLoading = false;
      });
    });
  }

  Future getMoreData() async {
    setState(() => isPageLoading = true);
    ListData.userListData().then((list) {
      setState(() {
        userList.addAll(list);
        isPageLoading = false;
      });
    });
  }
}
