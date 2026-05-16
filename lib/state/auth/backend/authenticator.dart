import 'package:firebase_auth/firebase_auth.dart';
import 'package:instegram_app/state/posts/typedefs/user_id.dart';

class Authenticator {
  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
  bool get isAlredyLoggedIn => userId != null;
}
