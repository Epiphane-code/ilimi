// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/opt.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mot de passe oublié", style: TextStyle(fontSize: 13)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // height: 20,
                ),
              ),

              const SizedBox(height: 90),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  //borderSide: BorderSide(color: Colors.amber),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        border: Border.all(color: Colors.amber, width: 1),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,

                        // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        decoration: InputDecoration(
                          hintText: "Adresse Mail",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 50),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Opt()),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                            Color(0xFFFFC727),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFF5B271E),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Envoyer code',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
