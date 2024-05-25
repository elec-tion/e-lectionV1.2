import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBU7d9FrIci77enc25rbqEG2zGLSbkH8aw",
            authDomain: "e-lection-xndipl.firebaseapp.com",
            projectId: "e-lection-xndipl",
            storageBucket: "e-lection-xndipl.appspot.com",
            messagingSenderId: "172486233903",
            appId: "1:172486233903:web:502a25b29ec12973699bda"));
  } else {
    await Firebase.initializeApp();
  }
}
