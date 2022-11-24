import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'configs/localizations/localization.dart';
import 'configs/pages/app_pages.dart';
import 'configs/routes/app_routes.dart';
import 'configs/themes/light_theme.dart';
import 'constants/commons/constants.dart';
import 'modules/global_controllers/global_binding.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// Force potrait mode
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Firebase
    await Firebase.initializeApp();
    // await NotificationServices.init();

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    HttpOverrides.global = MyHttpOverrides();
    runApp(
      DevicePreview(
        enabled: true,
        tools: const [...DevicePreview.defaultTools],
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Screen Util Init berdasarkan ukuran desain aplikasi
    return ScreenUtilInit(
      designSize: AppConst.appDesignSize,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: GlobalBinding(),
        title: AppConst.appName,
        initialRoute: AppRoutes.splashView,
        getPages: AppPages.pages(),
        translations: Localization(),
        locale: Localization.locale,
        fallbackLocale: Localization.fallbackLocale,
        theme: AppTheme.lightTheme,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: Localization.locales,
      ),
    );
  }
}
