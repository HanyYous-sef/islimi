import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:islami/taps/AhadethScreen/AhadethScreen.dart';
import 'package:islami/taps/RadioScreen.dart';
import 'package:islami/taps/SebhaScreen/SebhaScreen.dart';
import 'package:islami/taps/SetttingScreen/SetingScreen.dart';
import 'package:islami/taps/qran/QranScreen.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  static const String roudeName = 'HomeLayout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.ChangeBackGround(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              ifIsSetting(currentIndex),
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              currentIndex=index;
              setState((){});
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('asstes/images/moshaf_blue.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('asstes/images/sebha.png')),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('asstes/images/radio.png')),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('asstes/images/quran1.png')),
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.setting),
            ],
          ),
          body: taps[currentIndex],
        )
      ],
    );
  }

  List<Widget> taps = [
    QranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen(),
    SettingScreen()
  ];

  String ifIsSetting(int currentindex) {
    if (currentIndex == 4) {
      return AppLocalizations.of(context)!.setting;
    } else {
      return AppLocalizations.of(context)!.islimiitem;
    }
  }
}
