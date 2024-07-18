import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: RawMaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, "toSignIn");
        },
        fillColor: Colors.amber,
      ),
    );
  }
}
