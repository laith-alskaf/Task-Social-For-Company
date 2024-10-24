import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:social_app_test/app/my_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:social_app_test/core/local_storage/hive_repositories.dart';
import 'package:social_app_test/core/utils/general_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  Get.put(HiveRepository());
  storage.registerAdapter();
  await storage.initBoxes();
  runApp(const MyApp());
}
