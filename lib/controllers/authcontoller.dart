import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_mart/consts/consts.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  //textfiel controller
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  //login
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCred;
    try {
      userCred = await auth.signInWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCred;
  }

  Future<UserCredential?> SignUpMethod({name, email, password, context}) async {
    UserCredential? userCred;
    try {
      userCred = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCred;
  }

  storeUserData({name, password, email}) async {
    DocumentReference store =
        firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set({
      'username': name,
      'password': password,
      'email': email,
      'imgURL': '',
      'id': currentUser?.uid
    });
  }

  signoutMethod(context) async {
    try {
      await auth.signOut();
      // isLoading = false;
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
