import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/const/firebase_const.dart';

class AuthController extends GetxController {
  var isloading = false.obs;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }

    return userCredential;
  }

  signoutMethod(context) async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
