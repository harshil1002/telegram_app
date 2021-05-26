import 'package:flutter/material.dart';
import '../User/chat_list.dart';

class ValidOTP extends StatefulWidget {
  @override
  _ValidOTPState createState() => _ValidOTPState();
}

class _ValidOTPState extends State<ValidOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Varification'),
        backgroundColor: Color(0xff202022),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff181819)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 200),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatList()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/otp_icon.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter code',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "We've sent an SMS with an activation code to your phone",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.vpn_key),
                  hintText: '             Enter OTP',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white38,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
