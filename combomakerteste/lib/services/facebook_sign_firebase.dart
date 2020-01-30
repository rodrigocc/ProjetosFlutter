import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

Future<FirebaseUser> signInWithFacebook() async {
  try {
    final loginResult = await FacebookLogin().logIn(['email']);
    AuthResult authResult;

    print('RESULT FACEBOOK LOGIN 1: ${loginResult.status}');

    switch (loginResult.status) {
      case FacebookLoginStatus.error:
        print("FACEBOOK STATUS 2: ${loginResult.errorMessage}");
        break;
      case FacebookLoginStatus.loggedIn:
        final credential = FacebookAuthProvider.getCredential(
            accessToken: loginResult.accessToken.token);
        authResult =
            await FirebaseAuth.instance.signInWithCredential(credential);
        assert(authResult.user.email != null);
        assert(authResult.user == FirebaseAuth.instance.currentUser());
        break;

      case FacebookLoginStatus.cancelledByUser:
        break;
    }

    return authResult.user;
  } on Exception catch (err) {
    print(err);
  }
}
