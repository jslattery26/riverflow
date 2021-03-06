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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCceVIYaZoaMM91h9Jgo5H3gGl1cxK2JFU',
    appId: '1:829803929315:web:5aecca642f49dbffe9afd6',
    messagingSenderId: '829803929315',
    projectId: 'riverpopsicle',
    authDomain: 'riverpopsicle.firebaseapp.com',
    storageBucket: 'riverpopsicle.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjt9uCF4G1-YuziYe2LBCODe4ks17u1Y8',
    appId: '1:829803929315:android:3a78a4ac3d2352f4e9afd6',
    messagingSenderId: '829803929315',
    projectId: 'riverpopsicle',
    storageBucket: 'riverpopsicle.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-jR-1ySOCm3uPSnfcV3G05e8DpQi6NsM',
    appId: '1:829803929315:ios:82a991b6da4eedbce9afd6',
    messagingSenderId: '829803929315',
    projectId: 'riverpopsicle',
    storageBucket: 'riverpopsicle.appspot.com',
    iosClientId: '829803929315-51iadq39mmu45vmv8ont21jd6gs4heq5.apps.googleusercontent.com',
    iosBundleId: 'com.jackslattery.riverflow.riverflow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB-jR-1ySOCm3uPSnfcV3G05e8DpQi6NsM',
    appId: '1:829803929315:ios:82a991b6da4eedbce9afd6',
    messagingSenderId: '829803929315',
    projectId: 'riverpopsicle',
    storageBucket: 'riverpopsicle.appspot.com',
    iosClientId: '829803929315-51iadq39mmu45vmv8ont21jd6gs4heq5.apps.googleusercontent.com',
    iosBundleId: 'com.jackslattery.riverflow.riverflow',
  );
}
