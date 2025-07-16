import 'package:flutter/material.dart';
import 'new_password.dart';

class Opt extends StatefulWidget {
  const Opt({super.key});

  @override
  State<Opt> createState() => _OptState();
}

class _OptState extends State<Opt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Verification", style: TextStyle(fontSize: 13)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "OPT Vérification",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOPT(first: true, last: false),
                        _textFieldOPT(first: true, last: false),
                        _textFieldOPT(first: true, last: false),
                        _textFieldOPT(first: true, last: true),
                      ],
                    ),

                    // Container(
                    // height: 45,
                    //  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.all(Radius.circular(22)),
                    //  border: Border.all(color: Colors.amber, width: 1),
                    // ),
                    // child: TextFormField(
                    //  keyboardType: TextInputType.emailAddress,

                    // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    //  decoration: InputDecoration(
                    //   hintText: "Adresse Mail",
                    //  border: InputBorder.none,
                    //  contentPadding: EdgeInsets.symmetric(
                    //   horizontal: 16,
                    //    vertical: 12,
                    //  ),
                    //  ),
                    // ),
                    //  ),
                    SizedBox(height: 50),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewPassword(),
                            ),
                          );
                          // runApp(
                          //  MaterialApp(
                          //   home: NewPassword(),
                          //  )
                          //);
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
                            'Verify',
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

  _textFieldOPT({bool first = true, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).previousFocus();
            }
            if (value.length == 1 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.orange),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}//Text("Opt");


