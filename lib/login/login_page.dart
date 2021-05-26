import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:telegram_app/login/valid_otp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // List<Color> _colors = <Color>[Colors.black];
// String titale = 'country_list_picker';
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller.text = 'India';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Phone'),
        backgroundColor: Color(0xff202022),
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Color(0xff181819),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                  onTap: () {},
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.vpn_key),
                    hintText: 'Country Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white38,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CountryListPick(
                        appBar: AppBar(
                          backgroundColor: Colors.black87,
                          title: Text('Choisir un pays'),
                        ),
                        pickerBuilder: (context, CountryCode countryCode) {
                          return Container(
                            child: Text(
                              countryCode.dialCode,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          );
                        },

                        // To disable option set to false
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: true,
                          isShowCode: true,
                          isDownIcon: true,
                          showEnglishName: true,

                        ),
                        // Set default value
                        initialSelection: '+91',
                        // or
                        // initialSelection: 'US'
                        onChanged: (CountryCode code) {
                          print(code.name);
                          print(code.code);
                          print(code.dialCode);
                          print(code.flagUri);
                          _controller.text = code.name;
                        },
                        // Whether to allow the widget to set a custom UI overlay
                        useUiOverlay: true,
                        // Whether the country list should be wrapped in a SafeArea
                        useSafeArea: false),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          keyboardType: TextInputType.number,

                          decoration: InputDecoration(
                            // prefixIcon: Icon(Icons.vpn_key),
                            hintText: 'Number',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ValidOTP()),
          );
        },
        child: Icon(Icons.create, color: Colors.blue),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'chat_list.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   bool _hidePass = true;
//   GlobalKey<FormState> _form = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/loginpage01.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     'Welcome Back',
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Text(
//                     'Sign In',
//                     style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(20),
//                     height: 350,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30),
//                       ),
//                       gradient: LinearGradient(
//                         begin: FractionalOffset.topCenter,
//                         end: FractionalOffset.bottomCenter,
//                         colors: [
//                           Colors.white.withOpacity(0.7),
//                           Colors.lightBlue,
//                         ],
//                       ),
//                     ),
//                     child: Form(
//                       key: _form,
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             keyboardType: TextInputType.emailAddress,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.email),
//                               hintText: 'Email',
//                               hintStyle: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   fontSize: 18),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(13),
//                                 ),
//                               ),
//                             ),
//                             autovalidateMode: AutovalidateMode.always,
//                             validator: (_email) {
//                               bool _emailValid = RegExp(
//                                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                   .hasMatch(_email);
//                               if (_email.isEmpty)
//                                 return 'Please Enter Your Email';
//                               if (!_emailValid)
//                                 return 'Please Enter Valid Email';
//                               return null;
//                             },
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           TextFormField(
//                             obscureText: _hidePass,
//                             keyboardType: TextInputType.number,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.vpn_key),
//                               hintText: 'Password',
//                               hintStyle: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   fontSize: 18),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(13),
//                                 ),
//                               ),
//                               suffixIcon: GestureDetector(
//                                 child: Icon(_hidePass
//                                     ? Icons.visibility
//                                     : Icons.visibility_off),
//                                 onLongPress: () => {
//                                   setState(() => _hidePass = false),
//                                 },
//                                 onLongPressEnd: (_) => {
//                                   setState(() => _hidePass = true),
//                                 },
//                               ),
//                             ),
//                             autovalidateMode: AutovalidateMode.always,
//                             validator: (_password) {
//                               bool _passwordValid =
//                                   RegExp(r"^[0-9]+$").hasMatch(_password);
//                               if (_password.isEmpty)
//                                 return 'Please Enter Your Password';
//                               if (!_passwordValid)
//                                 return 'Please Enter Valid Password';
//                               if (_password.length < 6)
//                                 return 'Please Enter Valid Password';
//                               return null;
//                             },
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           GestureDetector(
//                             onTap: (){
//                               // if(_form.currentState.validate())
//                                 Navigator.push(context,MaterialPageRoute(builder: (context)=> ListView1()),
//                                 );
//                             },
//                             child: Container(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 15),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: FractionalOffset.topCenter,
//                                   end: FractionalOffset.bottomCenter,
//                                   colors: [
//                                     Colors.white.withOpacity(0.7),
//                                     Colors.lightBlue,
//                                   ],
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black,
//                                     spreadRadius: 0.5,
//                                     blurRadius: 15,
//                                     offset: Offset(2,2),
//                                   ),
//                                 ],
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(13),
//                                 ),
//                               ),
//                               child: Text(
//                                 'Login',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
