import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gauth = await user!.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: gauth.accessToken, idToken: gauth.idToken);

    return FirebaseAuth.instance.signInWithCredential(credential);
  }
}
