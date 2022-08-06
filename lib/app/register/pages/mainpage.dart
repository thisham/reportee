import 'package:flutter/material.dart';
import 'package:reportee/app/login/pages/mainpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage(
      {Key? key, this.email = "", this.password = "", this.repassword = ""})
      : super(key: key);

  final String email;
  final String password;
  final String repassword;

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  TextEditingController? _emailTextEditController;
  TextEditingController? _passwordTextEditController;
  TextEditingController? _repasswordTextEditController;

  _init() {
    _emailTextEditController = TextEditingController();
    _passwordTextEditController = TextEditingController();
    _repasswordTextEditController = TextEditingController();
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height,
                child: basePad(context),
              ),
              Positioned.fill(
                top: 114,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: registerCard(context),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }

  Widget basePad(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 202,
          child: const DecoratedBox(
            decoration: BoxDecoration(color: Color(0xFF3479FF)),
          ),
        ),
      ],
    );
  }

  Widget registerCard(BuildContext context) {
    return Container(
      height: 400,
      width: 330,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(
              width: 1.0,
              color: const Color(0xFFC5C5C5),
              style: BorderStyle.solid)),
      // child: const Text("data"),
      child: Column(
        children: [
          title(),
          emailInput(),
          passwordInput(),
          passwordReinput(),
          submitButton(),
          loginLink()
        ],
      ),
    );
  }

  Widget title() {
    return const Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(top: 40, bottom: 20),
          child: Text(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              "dailyrundown."),
        ));
  }

  Widget emailInput() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SizedBox(
          height: 52,
          child: TextField(
            controller: _emailTextEditController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your email...",
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 15)),
            style: const TextStyle(
                fontSize: 20, height: 1.3, color: Color(0xFF000000)),
          ),
        ));
  }

  Widget passwordInput() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SizedBox(
          height: 52,
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: _passwordTextEditController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your password...",
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 15)),
            style: const TextStyle(
                fontSize: 20, height: 1.3, color: Color(0xFF000000)),
          ),
        ));
  }

  Widget passwordReinput() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SizedBox(
          height: 52,
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: _repasswordTextEditController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Retype your password...",
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 15)),
            style: const TextStyle(
                fontSize: 20, height: 1.3, color: Color(0xFF000000)),
          ),
        ));
  }

  Widget submitButton() {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
        child: ElevatedButton(
            onPressed: () {
              debugPrint("register detected");
            },
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              primary: const Color(0xFF3479FF),
              minimumSize: const Size.fromHeight(52),
            ),
            child: const Text(
              "REGISTER",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
            )));
  }

  Widget loginLink() {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                alignment: Alignment.center,
                minimumSize: const Size.fromHeight(42)),
            child: const Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
            )));
  }
}
