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
        return macos;
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
    apiKey: 'AIzaSyDQztw1fVTWGGOtmFXG0md_mnxV1m5xPnM',
    appId: '1:1019713750192:web:662f8b292299dab4b1a775',
    messagingSenderId: '1019713750192',
    projectId: 'reinaisabel-b5e91',
    authDomain: 'reinaisabel-b5e91.firebaseapp.com',
    storageBucket: 'reinaisabel-b5e91.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB91geesY5mKUXrYMTDMEPrScJVTJbBylQ',
    appId: '1:1019713750192:android:76a390fb3ca7dc1cb1a775',
    messagingSenderId: '1019713750192',
    projectId: 'reinaisabel-b5e91',
    storageBucket: 'reinaisabel-b5e91.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSFhHHlM1R33a_Ywe3nt7m6NR3gcVroRQ',
    appId: '1:1019713750192:ios:6a84d48d9f462718b1a775',
    messagingSenderId: '1019713750192',
    projectId: 'reinaisabel-b5e91',
    storageBucket: 'reinaisabel-b5e91.appspot.com',
    iosBundleId: 'com.reinaisabel.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSFhHHlM1R33a_Ywe3nt7m6NR3gcVroRQ',
    appId: '1:1019713750192:ios:80dc0e7e8c58d87db1a775',
    messagingSenderId: '1019713750192',
    projectId: 'reinaisabel-b5e91',
    storageBucket: 'reinaisabel-b5e91.appspot.com',
    iosBundleId: 'com.reinaisabel.app.RunnerTests',
  );
}