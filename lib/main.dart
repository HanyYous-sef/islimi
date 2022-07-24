import 'package:flutter/material.dart';
import 'package:islami/Home_Layout.dart';
import 'package:islami/suraDetails/SuraDetails.dart';

import 'My_Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.roudeName,
      routes:{
        HomeLayout.roudeName:(context)=>HomeLayout(),
        SuraDetails.roudeName:(context)=>SuraDetails(),
      },

      theme: MyThemesData.lightTheme,
      darkTheme: MyThemesData.darkTheme,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //       backgroundColor: Colors.transparent,
      //     elevation: 0.0,
    //     )
    //   ),
    );
  }

}
