import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Anon sign in
  Future signinAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user =  result.user;
      return user;

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // TODO: Email sign in

  // TODO: Register

  //TODO: Signout

}