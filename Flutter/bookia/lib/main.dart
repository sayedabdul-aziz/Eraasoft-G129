import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/services/dio/dio_provider.dart';
import 'package:bookia/core/utils/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// baseUrl => // https://www.bookia-api.vercel.app/api/v1/
// Endpoint => /login
// Request (Body, Query Parameters, Headers)
// Request Method (get, post, put, delete, patch)
// Response (Status Code, Body)
// Status Code => (200, 201, 400, 401, 403, 404, 500, 503)

// Dio, http,

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioProvider.init();
  runApp(
    DevicePreview(enabled: kDebugMode, builder: (context) => const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.routes,

      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
    );
  }
}
