 import 'package:flutter/material.dart';
 import 'package:firebase_auth/firebase_auth.dart';
 import 'package:google_sign_in/google_sign_in.dart';




   final GoogleSignIn googleSignIn = new GoogleSignIn();
   final FirebaseAuth _auth = FirebaseAuth.instance;


   Future<String> signInWithGoogle()async{
     final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
     print("GoogleSignAccount");
     final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
     print("GoogleSignAuthentication");


     final AuthCredential credential = GoogleAuthProvider.getCredential(
         idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);

     final AuthResult authResult = await _auth.signInWithCredential(credential);
     print("AuthResult");
     final FirebaseUser user = authResult.user;

     assert(!user.isAnonymous);
     assert(await user.getIdToken()!= null);

     final FirebaseUser currentUser = await _auth.currentUser();
     print("CurrentUser");
     assert(user.uid == currentUser.uid);

     return 'signWithGoogle succeeded $user';

   }


   void signOutGoogle()async{

     await googleSignIn.signOut();
     print("User Sign Out");

   }


