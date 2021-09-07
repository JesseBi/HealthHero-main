import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';


class MyUser {
  final String uid;
  MyUser({required this.uid});
}

abstract class AuthServiceBase {
  Stream<MyUser?> get authStateChanges;
  MyUser? currentUser();
  Future<MyUser> signInAnonymously();
  Future<MyUser?> signInWithGoogle();
  Future<MyUser?> signInWithEmail(String email, String password);
  Future<MyUser?> createUserWithEmail(String email, String password);
  Future<void> signOut();
}

class AuthService implements AuthServiceBase{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  MyUser? _userFromFirebase(User? user) {
    if (user == null) {
      return null;
    } else {
      return MyUser(uid: user.uid);
    }
  }

  @override
  Stream<MyUser?> get authStateChanges {
    return _firebaseAuth.authStateChanges().map(
      (user) => _userFromFirebase(user)
    );
  }

  @override
  MyUser? currentUser() {
    var user = _firebaseAuth.currentUser;
    if (user != null) {
      return MyUser(uid: user.uid);
    } else {
      return null;
    }
  }

  @override
  Future<MyUser> signInAnonymously() async {
    try {
      final result = await _firebaseAuth.signInAnonymously();
      return MyUser(uid: result.user!.uid);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  @override
  Future<MyUser?> signInWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleAccount = await googleSignIn.signIn();

    if (googleAccount != null) {
      final googleAuth = await googleAccount.authentication;

      if (googleAccount != null) {
        final authResult = await _firebaseAuth.signInWithCredential(
          GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken
          )
        );
        return _userFromFirebase(authResult.user);
      } else {
        throw PlatformException(
          code: 'ERROR_MISSING_GOOGLE_AUTH_TOKEN',
          message: 'Missing Google Auth Token',
        );
      }
    } else {
      throw PlatformException(
        code: 'ERROR_ABORTED_BY_USER',
        message: 'Sign in aborted by user',
      );
    }
  }

  @override
  Future<MyUser?> signInWithEmail(
    String email, String password) async {
      final authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password
      );
      return _userFromFirebase(authResult.user);
  }

  @override
  Future<MyUser?> createUserWithEmail(
    String email, String password) async {
      final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, 
        password: password
      );
      return _userFromFirebase(authResult.user);
  }

  @override
  Future<void> signOut() async {
    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    await _firebaseAuth.signOut();
    
  }
}


