import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                radius: 48.0,
                child: Image.asset("assets/logo.png"),
              ),
            ),
            SizedBox(height: 48.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              initialValue: "",
              decoration: InputDecoration(
                hintText: "E-mail",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              autofocus: false,
              //initialValue: "Sua Senha",
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Senha",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Acessar", style: TextStyle(color: Colors.white)),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Esqueceu a senha?",
                  style: TextStyle(color: Colors.black54)),
            ),
          ],
        ),
      ),
    );
  }
}
