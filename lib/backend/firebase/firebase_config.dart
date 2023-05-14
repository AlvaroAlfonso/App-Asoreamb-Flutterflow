import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQjIRZRvNA9ZWdXgNalr_iCTO3nxMkn-A",
            authDomain: "phoneautentication-real.firebaseapp.com",
            projectId: "phoneautentication-real",
            storageBucket: "phoneautentication-real.appspot.com",
            messagingSenderId: "245984420057",
            appId: "1:245984420057:web:ce93de36f1edb889471ec8"));
  } else {
    await Firebase.initializeApp();
  }
}
