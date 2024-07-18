import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  bool visibility = true;
  String usrName = "", usrEmail = "", usrPwd = "";
  final authInstance = FirebaseAuth.instance;
  bool validateUser = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: [Color(0xFF0AFF88), Color(0xFF00D4FF)], radius: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1, 1))
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              RawMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, "toSignIn");
                },
                padding: EdgeInsets.only(left: 10, right: 10),
                fillColor: Colors.teal,
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Create Account",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                      color: Colors.black, blurRadius: 3, offset: Offset(1, 1))
                ]),
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
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Enter Username",
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
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
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Enter Email ID",
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
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
              cursorColor: Colors.teal,
              obscureText: visibility,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Enter Password",
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
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
                try {
                  await authInstance.createUserWithEmailAndPassword(
                      //sign in user with email and pwd
                      email: usrEmail,
                      password: usrPwd);
                  if (authInstance.currentUser != null) {
                    //if user verified, move to homepage
                    Navigator.pushNamed(context, "toHome");
                    Fluttertoast.showToast(
                      msg: "Account Created!",
                      timeInSecForIosWeb: 2,
                      webBgColor: "#009688",
                      backgroundColor: Colors.teal,
                    );
                  }
                } catch (error) {
                  Fluttertoast.showToast(
                    //to show pop-up error
                    msg: error.toString(),
                    timeInSecForIosWeb: 2,
                    webBgColor: "#c41404",
                    backgroundColor: Colors.red,
                  );
                  print(error);
                }
              } else {
                validateUser = false;
                Fluttertoast.showToast(
                  msg: "Enter all fields",
                  timeInSecForIosWeb: 2,
                  webBgColor: "#c41404",
                  backgroundColor: Colors.red,
                );
                print("enter all info");
              }
            },
            padding: EdgeInsets.only(left: 10, right: 10),
            fillColor: Colors.teal,
            child: Text(
              "Create Account",
              style: TextStyle(color: Colors.white),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          ),
        ],
      ),
    ));
  }
}
