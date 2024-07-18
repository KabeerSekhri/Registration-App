import 'package:flutter/material.dart';
import 'package:flutter_registration/Create.dart';
import 'package:flutter_registration/HomePage.dart';
import 'package:flutter_registration/SignIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      routes: {
        "toSignIn": (context) => SignIn(),
        "toCreate": (context) => Create(),
        "toHome": (context) => HomePage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
  // This widget is the root of your application.
 