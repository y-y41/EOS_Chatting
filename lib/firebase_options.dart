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
    apiKey: 'AIzaSyCLsVwEZ6VUw-t7de4INu8SSmBaVNzXxKs',
    appId: '1:434533181171:web:9e49cdf03b3ddcb6a9f986',
    messagingSenderId: '434533181171',
    projectId: 'eos-chatting-139f0',
    authDomain: 'eos-chatting-139f0.firebaseapp.com',
    storageBucket: 'eos-chatting-139f0.appspot.com',
    measurementId: 'G-3FVZ9KCPLG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAa2fBBkOOeIzswdBPLSdKdgUNed9xb0V4',
    appId: '1:434533181171:android:42852849a62dc54da9f986',
    messagingSenderId: '434533181171',
    projectId: 'eos-chatting-139f0',
    storageBucket: 'eos-chatting-139f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRqZNSzL9A3n5TyDx7wVFzTf9WRy2Fzsc',
    appId: '1:434533181171:ios:59251ab7eade88c0a9f986',
    messagingSenderId: '434533181171',
    projectId: 'eos-chatting-139f0',
    storageBucket: 'eos-chatting-139f0.appspot.com',
    iosClientId: '434533181171-87qq8hcdv04obs8roguqiupavtg2ucoc.apps.googleusercontent.com',
    iosBundleId: 'com.eos.chatting',
  );
}
