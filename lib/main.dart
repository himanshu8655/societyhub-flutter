import 'package:ambica/routes/appPages.dart';
import 'package:ambica/routes/routes.dart';
import 'package:ambica/utilities/constants.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: AppStrings.appTitle,
      getPages: AppPages.pages,
      theme: Constants.theme,
      // initialRoute: Routes.SPLASH,
      initialRoute: Routes.APP_FRAGMENT,
      debugShowCheckedModeBanner: false,
    ),
  );
}
