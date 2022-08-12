import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:islami/taps/SetttingScreen/show_language_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'Show_Theme_Bottom_Sheet.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline2,
          ),
          InkWell(
            onTap: () {
              ShowModalBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  AppLocalizations.of(context)!.englis,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          //
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline2,
          ),
          InkWell(
            onTap: () {
              ShowModalThemBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  provider.themeMode == ThemeMode.light ? 'light' : 'dark',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowModalBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return ShowLanguageBottomSheet();
        });
  }

  void ShowModalThemBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return ShowThemeBottomSheet();
        });
  }
}


