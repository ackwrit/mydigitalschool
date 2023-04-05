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
    apiKey: 'AIzaSyCEDfZTqy6nBj-ilkeiTHglwYXFbBh5kUQ',
    appId: '1:877978358786:web:1d49f9ac8a8339d14a431b',
    messagingSenderId: '877978358786',
    projectId: 'digitalschool-8e580',
    authDomain: 'digitalschool-8e580.firebaseapp.com',
    storageBucket: 'digitalschool-8e580.appspot.com',
    measurementId: 'G-9FCCB8XRE7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAG_I2rkS1Tgh7BON3X_B_6NcM20ZjBmKg',
    appId: '1:877978358786:android:d09c0407c27257d34a431b',
    messagingSenderId: '877978358786',
    projectId: 'digitalschool-8e580',
    storageBucket: 'digitalschool-8e580.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_yJGAcBfWzz8EfKPVf0L9vK985QHTkOI',
    appId: '1:877978358786:ios:55c16aedaef18b814a431b',
    messagingSenderId: '877978358786',
    projectId: 'digitalschool-8e580',
    storageBucket: 'digitalschool-8e580.appspot.com',
    iosClientId: '877978358786-kgnticqgosfsu3j8p18ack9qnmslrr41.apps.googleusercontent.com',
    iosBundleId: 'com.dissingardjino.digitaldschool',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_yJGAcBfWzz8EfKPVf0L9vK985QHTkOI',
    appId: '1:877978358786:ios:55c16aedaef18b814a431b',
    messagingSenderId: '877978358786',
    projectId: 'digitalschool-8e580',
    storageBucket: 'digitalschool-8e580.appspot.com',
    iosClientId: '877978358786-kgnticqgosfsu3j8p18ack9qnmslrr41.apps.googleusercontent.com',
    iosBundleId: 'com.dissingardjino.digitaldschool',
  );
}
