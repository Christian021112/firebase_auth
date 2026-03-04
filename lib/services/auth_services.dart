import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

ValueNotifier<AuthServices> authServicesNotifier = ValueNotifier(AuthServices());

class AuthServices {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> createUser({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> deleteUser({
    required String email,
    required String password,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    await firebaseAuth.currentUser?.reauthenticateWithCredential(credential);
    await firebaseAuth.currentUser?.delete();
    await firebaseAuth.signOut();
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> resetPassword({
    required String email,
    required String newPassword,
    required String oldPassword,
    }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: oldPassword,
    );
    await firebaseAuth.currentUser?.reauthenticateWithCredential(credential);
    await firebaseAuth.currentUser?.updatePassword(newPassword);
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> updateUsername({required String username}) async {
    await firebaseAuth.currentUser?.updateDisplayName(username);
  }
}
