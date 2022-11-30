import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:venturo_java_code/modules/models/user.dart';
import 'configs/localizations/localization.dart';
import 'configs/pages/app_pages.dart';
import 'configs/routes/app_routes.dart';
import 'configs/themes/light_theme.dart';
import 'constants/commons/constants.dart';
import 'modules/global_controllers/global_binding.dart';
import 'utils/services/notification_service.dart';

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

    /// Init Hive For Flutter
    await Hive.initFlutter();

    /// Init Secure Storage
    const secureStorage = FlutterSecureStorage();

    /// if key not exists return null
    final encryprionKey = await secureStorage.read(key: 'AESKey');
    if (encryprionKey == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'AESKey',
        value: base64UrlEncode(key),
      );
    }
    final key = await secureStorage.read(key: 'AESKey');
    final encryptionKey = base64Url.decode(key!);

    /// Register User Adapter
    Hive.registerAdapter(UserAdapter());

    /// Enkripsi Box Hive
    await Hive.openBox(
      'box',
      encryptionCipher: HiveAesCipher(encryptionKey),
    );

    await NotificationServices.init();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    HttpOverrides.global = MyHttpOverrides();
    runApp(
      DevicePreview(
        enabled: kProfileMode,
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
