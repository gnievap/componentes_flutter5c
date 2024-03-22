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
    apiKey: 'AIzaSyAoDraJ7aHLaZePo8rJvkaPs1nV4rpcgFU',
    appId: '1:566175261083:web:83970a1c4844bb663f413e',
    messagingSenderId: '566175261083',
    projectId: 'comp5c-24',
    authDomain: 'comp5c-24.firebaseapp.com',
    storageBucket: 'comp5c-24.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSd1cQoMHNwdvty3S0hoJHUBuaDZ4DtvE',
    appId: '1:566175261083:android:92a765e6c5ecab163f413e',
    messagingSenderId: '566175261083',
    projectId: 'comp5c-24',
    storageBucket: 'comp5c-24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4S_DlWsvSNDkixC_WvtyrWPUnHBmMNLk',
    appId: '1:566175261083:ios:deb8817a17e229d23f413e',
    messagingSenderId: '566175261083',
    projectId: 'comp5c-24',
    storageBucket: 'comp5c-24.appspot.com',
    iosBundleId: 'com.example.practica35c24',
  );
}