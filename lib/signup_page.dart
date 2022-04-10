import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = ["facebook.png", "twitter.png", "login3.png"];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/login3.png"), fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.16,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 50,
                  backgroundImage: AssetImage("img/twitter.png"),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Text(
                  "Hello",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),*/
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(
                              1,
                              1,
                            ),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "your email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.orange,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(
                              1,
                              1,
                            ),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "your password",
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.orange,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                /* Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "sign into your account",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    )
                  ],
                )*/
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("img/login2.png"), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                text: "Hava an account?",
                style: TextStyle(fontSize: 20, color: Colors.grey[500])),
          ),
          SizedBox(height: w * 0.02),
          RichText(
              text: TextSpan(
            text: "Sign up with one of the following methods",
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
            /*   children: [TextSpan(
                  text: " Create",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20

                  ))*/

            // ]
          )),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("img/" + images[index]),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
