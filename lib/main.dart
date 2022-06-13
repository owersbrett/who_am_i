import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';

void main(List<String> args) async {
  const bool useMocks = true;
  // final bool useMocks = args.contains("debug");
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // String sessionId = await LoggerService.initialize();
  // await FirebaseService.initialize(sessionId);
  // await PermissionService.requestPermissionToTrack();
  // Logger.root.level = Level.ALL;
  // Logger.root.onRecord.listen((record) {
  //   print('${record.level.name}: ${record.time}: ${record.message}');
  // });
  // logger.info("logger initialized with $sessionId");

  // Bloc.observer = ConsoleReportingObserver();

  // await RemoteConfigProvider.initialize();

  runZonedGuarded<Future<void>>(() async {
    runApp(App(useMocks: useMocks));
  }, (error, stackTrace) async {
    print("runZoned: " + error.toString());
    // Logger log = Logger('CrashHandler');
    // log.severe('Crash handler caught unhandled exception: $error', error, stackTrace);
    // await FlutterCrashlytics().reportCrash(error, stackTrace, forceCrash: false);
  });
}
