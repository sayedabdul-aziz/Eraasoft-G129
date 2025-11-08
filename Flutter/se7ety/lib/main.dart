import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:se7ety/core/routes/routes.dart';
import 'package:se7ety/core/services/local/shared_pref.dart';
import 'package:se7ety/core/utils/theme.dart';
import 'package:se7ety/firebase_options.dart';

//! Requirements (Fresh, Junior)?:
// Basics
// OOP
// UI Design && Responsive
// State Management (Bloc/Cubit)
// Api Integration (MVVM)
// Local Storage (Shared Preferences / Hive, Sqflite)
// Firebase Integration
// You Can make your Projects !!

//! What's Next ?:
// State Management In Depth
// Api Error Handling (dartZ)
// Clean Architecture (data, domain, presentation)
// Dependency Injection (GetIt)
// Push Notifications FCM
// Deploy to Play Store/ App Store
// More Projects

//! Act As A Senior ? :
// Flavors (staging, production)
// CI/CD (fastlane, github actions, code magic)
// More Projects(Maps Integration, Payment Int)

//! How To Get Offers?
// classic Cv
// Strong Portfolio (Case Studies Not Included)
// LinkedIn Profile (connections)
// Apply For Internship/ Junior Position (LinkedIn Jobs\ Connections)

// hr@hh.com

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPref.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.routes,
      supportedLocales: [Locale('ar')],
      locale: Locale('ar'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppTheme.lightTheme,
      builder: (context, child) {
        // set text size by 1 in the whole app
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(1.0)),
          child: child!,
        );
      },
    );
  }
}
