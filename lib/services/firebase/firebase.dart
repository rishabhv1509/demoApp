import 'package:hello/services/firebase/firebaseLogin.dart';
import 'package:hello/services/firebase/firestore.dart';

class FirebaseService with FirebaseLogin, FireStore {}

FirebaseService firebase = FirebaseService();
