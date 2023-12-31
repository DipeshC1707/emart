// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDIpdjtjl0_SNei_8m4sb6g9T2AEWgAbVI',
    appId: '1:9812607127:web:7e91c281cb4f1fa6f769d2',
    messagingSenderId: '9812607127',
    projectId: 'emart-8c4cb',
    authDomain: 'emart-8c4cb.firebaseapp.com',
    storageBucket: 'emart-8c4cb.appspot.com',
    measurementId: 'G-MMNPSDWKW8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgZge8z10xpMslDBN5yu1rf-YFDuDwO7M',
    appId: '1:9812607127:android:3f87f0cd5ec34d26f769d2',
    messagingSenderId: '9812607127',
    projectId: 'emart-8c4cb',
    storageBucket: 'emart-8c4cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3nZ-byxRXTU0KOySW5zkV3k5wosAk9Co',
    appId: '1:9812607127:ios:9c59566f0f325dbbf769d2',
    messagingSenderId: '9812607127',
    projectId: 'emart-8c4cb',
    storageBucket: 'emart-8c4cb.appspot.com',
    iosBundleId: 'com.example.eMart',
  );
}
