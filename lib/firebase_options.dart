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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAZ7NJ-KIMqFtqF6arQRpPfizRbeDlw1g',
    appId: '1:995917499771:android:9e54112ce90bc2ddf901de',
    messagingSenderId: '995917499771',
    projectId: 'fir-series-aac24',
    storageBucket: 'fir-series-aac24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk21V0PA8z3bCWDHLXHHG2i5IUf5B3vdM',
    appId: '1:995917499771:ios:50639af076d49fb7f901de',
    messagingSenderId: '995917499771',
    projectId: 'fir-series-aac24',
    storageBucket: 'fir-series-aac24.appspot.com',
    androidClientId: '995917499771-0tastkpjhil9d0gdjj6tphj0b5eh149r.apps.googleusercontent.com',
    iosClientId: '995917499771-se9mlesi78un9nr758odm95sbh0aqafm.apps.googleusercontent.com',
    iosBundleId: 'com.slantcode.firebaseseries',
  );
}
