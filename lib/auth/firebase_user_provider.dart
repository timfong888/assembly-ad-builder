import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AdBuilderFirebaseUser {
  AdBuilderFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AdBuilderFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AdBuilderFirebaseUser> adBuilderFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AdBuilderFirebaseUser>(
        (user) => currentUser = AdBuilderFirebaseUser(user));
