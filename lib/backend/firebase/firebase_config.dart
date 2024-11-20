import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCO95xt941lCmO11oYuTUbr_CAobzCey20",
            authDomain: "upajutsav.firebaseapp.com",
            projectId: "upajutsav",
            storageBucket: "upajutsav.firebasestorage.app",
            messagingSenderId: "665434222696",
            appId: "1:665434222696:web:1b290c475600d7c60b0bdd",
            measurementId: "G-FFMMCLV9C4"));
  } else {
    await Firebase.initializeApp();
  }
}
