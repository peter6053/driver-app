import 'dart:ffi';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:login_firebase/login_page.dart';
import 'package:login_firebase/welcome_page.dart';
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class AuthController extends GetxController {
  //AuthControl instance
  static AuthController instance = Get.find();
  late Rx<User?> _user;

  //email & password
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  onReady() {
    super.onReady();
    _user = auth.currentUser as Rx<User?>;
    //user will be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialscreen);
  }

  _initialscreen(User? user) {
    if (User == null) {
      print("loginpage");
      Get.off(() => loginPage());
    } else {
      Get.off(() => WelcomePage());
    }
  }

  void register(String email, password) {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
       GetSnackBar("About User", "message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text("Accoinnt creation failed",
          style: TextStyle(
            color: Colors.white
          )

        ),
        messageText: Text(
            e.toString(),
          style: const TextStyle(
              color: Colors.white
          )
        ),

      );
    }
  }
}
