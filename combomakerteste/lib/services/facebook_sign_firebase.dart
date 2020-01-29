import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

Future<FirebaseUser> signInWithFacebook() async {
  final loginResult = await FacebookLogin().logIn(['email']);
  AuthResult authResult;

  if (loginResult.status == FacebookLoginStatus.loggedIn) {
    final credential = FacebookAuthProvider.getCredential(
        accessToken: loginResult.accessToken.token);
    authResult = await FirebaseAuth.instance.signInWithCredential(credential);
    assert(authResult.user.email != null);
    assert(authResult.user == FirebaseAuth.instance.currentUser());
  }

  return authResult.user;
}
