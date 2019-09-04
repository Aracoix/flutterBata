import 'package:bata_app_flutter_demo/flutter_density.dart';
import 'package:bata_app_flutter_demo/splash_page.dart';

void main() => /*runApp(SplashPage());*/
FlutterDensity.ensureInitialized(360)
..attachRootWidget(new SplashPage())
..scheduleWarmUpFrame();