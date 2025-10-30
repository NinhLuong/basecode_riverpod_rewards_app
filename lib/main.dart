import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/core/presentation/observers/app_provider_observer.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/config/env/app_env_config.dart';

import 'app.dart';

Future<void> main() async {
  ///todo: reject bad certificate
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize logging system
  L.app('🚀 Application starting...');
  
  // Set up ProviderObserver for comprehensive state management logging
  L.app('📱 ProviderObserver will be initialized');
  
  // Load environment configuration FIRST
  L.app('⚙️ Loading environment configuration...');
  await AppEnvConfig.loadEnv();
  L.app('✅ Environment loaded: ${AppEnvConfig.env}');
  L.app('🌐 API Base URL: ${AppEnvConfig.apiBaseUrl}');
  
  // Initialize core services
  L.app('💾 Initializing cache storage...');
  await CacheStorageServices.init();
  
  L.app('📐 Ensuring screen size...');
  await ScreenUtil.ensureScreenSize();
  
  L.app('🔗 Initializing dependency injection...');
  // DIServices().init();
  configureDependencies();
  
  L.app('✅ Application initialization completed');
  
  runApp(
    ProviderScope(
      observers: [AppProviderObserver()],
      child: const MyApp(),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
