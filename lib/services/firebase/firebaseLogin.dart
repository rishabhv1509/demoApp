import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseLogin {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> signIn() async {
    GoogleSignInAccount googleSignInAccount;
    try {
      googleSignInAccount = await googleSignIn.signIn();
    } catch (e) {
      print(e);
    }
    GoogleSignInAuthentication gsa = await googleSignInAccount.authentication;
    print(gsa.accessToken);
    print(gsa.idToken);
    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: gsa.idToken, accessToken: gsa.accessToken);
    FirebaseUser user = await auth.signInWithCredential(credential);
    print("User Name:${user.displayName}");
    return user;
  }
}
