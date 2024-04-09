import 'dart:ffi';

import 'package:flutter/material.dart';

import '../home/home_view.dart';


class LoginScreen extends StatefulWidget {
  static const Color _primaryColor= Color.fromRGBO(90, 189, 140, 1);
  static const Color _secondaryColor= Color.fromRGBO(169, 224, 241, 1.0);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double  _deviceheigth=0;
  double  _devicewidth=0;

  @override
  Widget build(BuildContext context) {
    _deviceheigth=MediaQuery.sizeOf(context).height;
    _devicewidth=MediaQuery.sizeOf(context).width;

    return  Scaffold(
      backgroundColor: LoginScreen._primaryColor,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: _deviceheigth * 0.60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _circularAvatar(),
              _emailTextField(),
              _passwordTextField(),
              _loginButton(context)


            ],
          ),
        ),
      ),
    );
  }

  Widget _circularAvatar(){
    double circleD= _deviceheigth * 0.25;
    return Container(
      height: circleD,
      width: circleD,
      decoration: BoxDecoration(
        color: LoginScreen._secondaryColor,
        borderRadius: BorderRadius.circular(500),
        image: const DecorationImage(
          image: AssetImage('assets/img/main_avatar.png'),
        ),
      ),
    );
  }






  Widget _emailTextField() {
    return Container(
      width: _devicewidth * 0.70,
      child: const TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "John.doe@gmail.com",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }


  Widget _passwordTextField() {
    return Container(
      width: _devicewidth * 0.70,
      child: const TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }


  Widget _loginButton(BuildContext _context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeView()));
      },
      child: Container(
        width: _devicewidth * 0.38,
        height: _deviceheigth * 0.055,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0)
        ),
        child: Center(
          child: Text(
            "LOG IN",
            style: TextStyle(
                fontSize: 16, color: LoginScreen._primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

}

