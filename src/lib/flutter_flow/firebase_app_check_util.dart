import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webProvider:
          ReCaptchaV3Provider('6LcjQ2YqAAAAABGYzEvuhNBnaGmWNL5K44kWIDtM'),
      androidProvider: AndroidProvider.playIntegrity,
    );
