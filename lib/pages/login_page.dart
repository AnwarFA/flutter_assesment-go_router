import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  final textController = TextEditingController();
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(children: [
        TextField(
          controller: textController,
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "Enter username",
          ),
        ),
        ElevatedButton(
          child: Text("Login"),
          onPressed: () {
            // TODO print username from text field
            print("Username= ${textController}");
            context.go("/HomeScreen", extra: textController.text);
            // TODO nagivate to home_page and pass the username

            print("go to home page");
          },
        ),
      ]),
    );
  }
}
