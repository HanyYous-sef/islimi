import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/Home_Layout.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:islami/suraDetails/SuraDetails.dart';
import 'package:provider/provider.dart';

import 'AhdethDetails/AhdethDetails.dart';
import 'My_Themes.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return AppProvider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    // var providerThem=Provider.of<AppProviderThem>(context);

    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      locale: Locale(provider.AppLangauge),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.roudeName,
      routes: {
        HomeLayout.roudeName: (context) => HomeLayout(),
        SuraDetails.roudeName: (context) => SuraDetails(),
        AhdethDetails.roudeName: (context) => AhdethDetails(),
      },

      theme: MyThemesData.lightTheme,
      darkTheme: MyThemesData.darkTheme,
      themeMode: provider.themeMode,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //       backgroundColor: Colors.transparent,
      //     elevation: 0.0,
      //     )
      //   ),
    );
  }

}
