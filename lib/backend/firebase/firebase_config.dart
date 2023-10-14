import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCIovx5Ku40aH4hNIhw8OtGkYkxUZBSdTw",
            authDomain: "fly-folio-1-6518e.firebaseapp.com",
            projectId: "fly-folio-1-6518e",
            storageBucket: "fly-folio-1-6518e.appspot.com",
            messagingSenderId: "955833773201",
            appId: "1:955833773201:web:473b1b5b3bd2ace0a5e330",
            measurementId: "G-LS8C8D32QZ"));
  } else {
    await Firebase.initializeApp();
  }
}
