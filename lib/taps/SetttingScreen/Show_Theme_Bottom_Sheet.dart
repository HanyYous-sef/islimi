import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatefulWidget {
  @override
  State<ShowThemeBottomSheet> createState() => _ShowLanguageBottomSheetState();
}

class _ShowLanguageBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.ChangeAppTheme(ThemeMode.dark);
                // Navigator.pop(context);
              },
              child: SelectedLanguage(
                  'Dark', provider.themeMode == ThemeMode.dark ? false : true)),
          InkWell(
              onTap: () {
                provider.ChangeAppTheme(ThemeMode.light);
                // Navigator.pop(context);
              },
              child: SelectedLanguage('light',
                  provider.themeMode == ThemeMode.dark ? false : true)),
        ],
      ),
    );
  }

  Widget SelectedLanguage(String Language, bool select) {
    if (select) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Language,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Theme.of(context).primaryColor)),
          Icon(Icons.check, color: Theme.of(context).primaryColor, size: 25),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Language, style: Theme.of(context).textTheme.headline2),
        ],
      );
    }
  }
}
