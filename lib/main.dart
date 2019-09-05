import 'package:bata_app_flutter_demo/flutter_density.dart';
import 'package:bata_app_flutter_demo/splash_page.dart';
import 'package:flutter_bugly/flutter_bugly.dart';

void main() => FlutterBugly.postCatchedException((){
  FlutterDensity.ensureInitialized(360)
    ..attachRootWidget(new SplashPage())
    ..scheduleWarmUpFrame();
});
