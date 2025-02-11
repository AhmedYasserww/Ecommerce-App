import 'package:ecommerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  final prefs = Prefs.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        fontFamily: 'Cairo',
         //textTheme: GoogleFonts.cairoTextTheme(),
        //fontFamily: GoogleFonts.cairoTextTheme(),
      ),
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}


