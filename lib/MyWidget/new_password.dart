import 'package:flutter/material.dart';
//import 'new_password.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Validation", style: TextStyle(fontSize: 13)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "Create New Password",
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
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,

                        // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        decoration: InputDecoration(
                          hintText: "Nouveau mot de passe",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 50),

                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        border: Border.all(color: Colors.amber, width: 1),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,

                        // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        decoration: InputDecoration(
                          hintText: "Confirmer",
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
                          /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ici(),
                            ),
                          );*/
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
                            'Reset password',
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
