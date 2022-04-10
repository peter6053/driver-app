import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:login_firebase/login_page.dart';

class AuthController extends GetxController {
  //AuthControl instance
  static AuthController instance = Get.find();
  late Rx<User?> _user;

  //email & password
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Void onReady() {
    super.onReady();
    _user = auth.currentUser as Rx<User?>;
  //user will be notified
    _user.bindStream(auth.userChanges());
    rethrow;
  }
  _initialscreen(User? user){

if (User==null){
  print("loginpage");
  Get.off(()=>loginPage());
}
  }
}
