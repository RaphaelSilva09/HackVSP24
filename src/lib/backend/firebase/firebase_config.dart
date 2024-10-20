import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBVyrOE0i3OtewyhzzGRamQ9gw9sicWq0I",
            authDomain: "verdadeira-s-p2-yfetd7.firebaseapp.com",
            projectId: "verdadeira-s-p2-yfetd7",
            storageBucket: "verdadeira-s-p2-yfetd7.appspot.com",
            messagingSenderId: "299527360675",
            appId: "1:299527360675:web:9a57ea61a9041b4b4faf16"));
  } else {
    await Firebase.initializeApp();
  }
}
