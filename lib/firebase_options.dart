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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBUJhOAmKvYgdYS3ecr4EzBXaYa-XPOdOw',
    appId: '1:343163594209:web:bf308bf101b0d3af595ea0',
    messagingSenderId: '343163594209',
    projectId: 'auth-1e318',
    authDomain: 'auth-1e318.firebaseapp.com',
    storageBucket: 'auth-1e318.appspot.com',
    measurementId: 'G-Z9XKLZ80FR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4gECJR9Cb2whKrcHeaZpW_gXbCnm9iS8',
    appId: '1:343163594209:android:29954830a44b1c4e595ea0',
    messagingSenderId: '343163594209',
    projectId: 'auth-1e318',
    storageBucket: 'auth-1e318.appspot.com',
  );
}
