import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC1miPtxvNqdrzsnj4OryRxugzh2P2AU14",
            authDomain: "task-nova.firebaseapp.com",
            projectId: "task-nova",
            storageBucket: "task-nova.firebasestorage.app",
            messagingSenderId: "437158415244",
            appId: "1:437158415244:web:8408b0d51cc571e020e4a9",
            measurementId: "G-R7CK8H2RCB"));
  } else {
    await Firebase.initializeApp();
  }
}
