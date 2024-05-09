import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/components/my_button.dart';
import '../Widgets/components/my_textfield.dart';

class ProductPage extends StatefulWidget {
   ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}


class _ProductPageState extends State<ProductPage> {
  _ProductPageState(){
  _selectedDestination = _destinationList[0];
  }
  final _destinationList = ["Italy", "France", "Spain"];

  final Map<String, List<String>> _dropDownMenu = {
    'Italy': ['Milan', 'Rome', 'Cagliari'],
    'France': ['Lyon', 'Paris', 'Marseille'],
    'Spain': ['Madrid', 'Barcelona', 'Bilbao']
  };

  final _cityItalyList = ["Milan", "Rome", "Cagliari"];
  final _cityFranceList = ["Lyon", "Paris", "Marseille"];
  final _citySpainList = ["Madrid", "Barcelona", "Bilbao"];




  String? _selectedDestination = "";
  String? _selectedCity = "";

  String? _selectedKey;
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Image.asset(
          "lib/assets/Tourist girl.png",
          width: MediaQuery.of(context).size.width/2,
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3.5,
              height: MediaQuery.of(context).size.height / 1.2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.person_fill,
                        size: 128,
                      ),
                    ),
                    Text(
                      "Choose your fake flight for the summer",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Anton-Regular',
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),

                    DropdownButton(
                      icon: Icon(CupertinoIcons.arrow_down_square),
                      isExpanded: true,
                        value: _selectedKey,
                        items: _dropDownMenu.keys
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue){
                          setState(() {
                            _selectedKey = newValue;
                            _selectedItem = null;
                          });
                        }),
                    _selectedKey != null
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        const Text(
                          'Which one?',
                          style: TextStyle(fontSize: 24),
                        ),
                        DropdownButton<String>(
                          value: _selectedItem,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          elevation: 16,
                          style: const TextStyle(fontSize: 20, color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.grey,
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedItem = newValue;
                            });
                          },
                          items: _dropDownMenu[_selectedKey]!
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    )
                        : Container(),

                    //Email textbox
                    /// ------------------  TEXT FIELD ------------------
                    // MyTextField(
                    //     hintText: "E-mail",
                    //     obscureText: false,
                    //     controller: emailController),
                    /// ------------------  TEXT FIELD ------------------
                    SizedBox(
                      height: 25,
                    ),
                    //Password textbox
                    // MyTextField(
                    //     hintText: "Password",
                    //     obscureText: true,
                    //     controller: passwordController),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                   // MyButton(text: "Sign In", onTap: login),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: 12),
                        ),
                        GestureDetector(
                         // onTap: widget.onTap,
                          child: Text(
                            "Register here",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    // Firebase - Add user
                    // ElevatedButton(onPressed: (){
                    //   firestoreService.addUser(emailController.text, passwordController.text);
                    //   emailController.clear();
                    //   passwordController.clear();
                    // }, child: Text("Sign in"),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
