import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool visibility = true;
  String usrName = "", usrEmail = "", usrPwd = "";
  final authInstance = FirebaseAuth.instance;
  bool validateUser = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[600],
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Don't have an account?"),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "toCreate");
                  },
                  padding: EdgeInsets.only(left: 10, right: 10),
                  fillColor: Colors.teal,
                  child: Text(
                    "Create an Account",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                onChanged: (name) {
                  usrName = name;
                },
                keyboardType: TextInputType.text,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                onChanged: (email) {
                  usrEmail = email;
                },
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: "Enter Email ID",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                onChanged: (pwd) {
                  usrPwd = pwd;
                },
                keyboardType: TextInputType.text,
                cursorColor: Colors.purple,
                obscureText: visibility,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        child: visibility == false
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RawMaterialButton(
              onPressed: () async {
                if (usrName != "" && usrPwd != "" && usrEmail != "") {
                  setState(() {
                    validateUser = true;
                  });
                  await authInstance.signInWithEmailAndPassword(
                      email: usrEmail, password: usrPwd);
                } else {
                  validateUser = false;
                  print("enter all info");
                }
              },
              padding: EdgeInsets.only(left: 10, right: 10),
              fillColor: Colors.teal,
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
