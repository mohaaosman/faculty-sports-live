import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCFQYru6wp25ES3n4EbYtkFptasa2-ELOs",
            authDomain: "faculty-sports.firebaseapp.com",
            projectId: "faculty-sports",
            storageBucket: "faculty-sports.appspot.com",
            messagingSenderId: "901111334195",
            appId: "1:901111334195:web:3e10fcee2e556b66f96a46",
            measurementId: "G-RJN4VKB9GZ"));
  } else {
    await Firebase.initializeApp();
  }
}
