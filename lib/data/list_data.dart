import 'package:faker/faker.dart';
import 'package:telegram_app/model/model.dart';

class ListData {
  static Future<List<User>> userListData() async {
    var faker = new Faker();
    List<User> userList = [];
    for (int i = 1; i < 50; i++) {
      userList.add(User(
        url:
            "https://www.google.com/maps/uv?pb=!1s0x3be0456a49d66ce5:0x1440baa58aadc609!3m1!7e115!4shttps://lh5.googleusercontent.com/p/AF1QipMch9mtyD12KDnHPjIDIcs2O6E7FzsxdFHEOaIw%3Dw160-h160-k-no!5sharshil+thummar+-+Google+Search!15zQ2dJZ0FRPT0&imagekey=!1e10!2sAF1QipMch9mtyD12KDnHPjIDIcs2O6E7FzsxdFHEOaIw&hl=en&sa=X&ved=2ahUKEwiR8uTN6bvvAhXoILcAHWvRBKUQoiowE3oECCEQAw",
        trail: '01:25 PM',
        name: "${faker.person.name()}",
        subtitle: "",
      ));
    }
    return Future.delayed(Duration(seconds: 2), () => userList);
  }
}
