// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAeNXshu-0gcDRLBsoxC8jNzdFHzCmkDrI',
    appId: '1:479366756546:web:9be683e2e2a3df917be35b',
    messagingSenderId: '479366756546',
    projectId: 'globo-thegoat',
    authDomain: 'globo-thegoat.firebaseapp.com',
    storageBucket: 'globo-thegoat.appspot.com',
    measurementId: 'G-2XBZ5XQHNF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbLO_WunXW9emg2_mdahMaZD9eVRrvhaw',
    appId: '1:479366756546:android:f079b5eda1149e8a7be35b',
    messagingSenderId: '479366756546',
    projectId: 'globo-thegoat',
    storageBucket: 'globo-thegoat.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWd2T5Tmx9NwwDI5cqM6Wks07-mQycIYc',
    appId: '1:479366756546:ios:30d83bb798ab16737be35b',
    messagingSenderId: '479366756546',
    projectId: 'globo-thegoat',
    storageBucket: 'globo-thegoat.appspot.com',
    iosBundleId: 'com.example.globotest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWd2T5Tmx9NwwDI5cqM6Wks07-mQycIYc',
    appId: '1:479366756546:ios:30d83bb798ab16737be35b',
    messagingSenderId: '479366756546',
    projectId: 'globo-thegoat',
    storageBucket: 'globo-thegoat.appspot.com',
    iosBundleId: 'com.example.globotest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAeNXshu-0gcDRLBsoxC8jNzdFHzCmkDrI',
    appId: '1:479366756546:web:58112878530455da7be35b',
    messagingSenderId: '479366756546',
    projectId: 'globo-thegoat',
    authDomain: 'globo-thegoat.firebaseapp.com',
    storageBucket: 'globo-thegoat.appspot.com',
    measurementId: 'G-CNSS0452C8',
  );
}
