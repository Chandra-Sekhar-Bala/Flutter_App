import 'dart:async';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  var isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/img_login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              "Welcome\n$name",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter name", labelText: "Name"),
                    onChanged: (value) async {
                      await(Future.delayed(const Duration(milliseconds: 200)));
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Can Wrap around with Gesture detector(Do not give feedback on click)/ InkWell
                  Material(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.circular(isButtonClicked ? 60 : 10),
                    // shape: buttonClicked? BoxShape.circle: BoxShape.rectangle,
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          isButtonClicked = !isButtonClicked;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        // await Navigator.pushNamed(context, MyRoutes.homeRoute);
                        // setState(() {
                        //   isButtonClicked = !isButtonClicked;
                        // });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: isButtonClicked ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: isButtonClicked
                            ? const Icon(Icons.done, color: Colors.white)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
