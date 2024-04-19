import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset("lib/assets/Tourist girl.png", width: MediaQuery.of(context).size.width * 10,),
          Center(
            child: SizedBox(
              width: 300,
              height: 500,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                     // mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter e-mail", textAlign: TextAlign.start,),
                        Container(
                          width: 256,
                          child: TextFormField(
                            cursorColor: Colors.amber,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(height: 12,),
                        Text("Enter your name", textAlign: TextAlign.start,),
                        Container(
                          width: 256,
                         // color: Colors.black12,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(

                              decoration: InputDecoration(
                                focusColor: Colors.amber,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.amber
                                  )
                                )
                              ),
                              cursorColor: Colors.amber,
                              keyboardType: TextInputType.name,
                            ),
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      ]
      ),
    );
  }
}
