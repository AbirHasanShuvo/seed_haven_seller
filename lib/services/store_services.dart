import 'package:seed_haven_seller/const/firebase_const.dart';

class StoreServices {
  static getProfile(uid) {
    return firestore
        .collection(vendorsColletction)
        .where('id', isEqualTo: uid)
        .get();
  }
}
