import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatefulWidget {
  @override
  State<ShowLanguageBottomSheet> createState() =>
      _ShowLanguageBottomSheetState();
}

class _ShowLanguageBottomSheetState extends State<ShowLanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.ChangeAppLangauge('en');
                Navigator.pop(context);
              },
              child: SelectedLanguage(
                  'English', provider.AppLangauge == 'en' ? true : false)),
          InkWell(
              onTap: () {
                provider.ChangeAppLangauge('ar');
                Navigator.pop(context);
              },
              child: SelectedLanguage(
                  'العربيه', provider.AppLangauge == 'en' ? false : true)),
        ],
      ),
    );
  }

  Widget SelectedLanguage(String Language,bool select)
  {
    if (select){
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Language,style:Theme.of(context).textTheme.headline2!.copyWith(
              color: Theme.of(context).primaryColor)),
          Icon(Icons.check,color: Theme.of(context).primaryColor,size: 25),
        ],
      );
    }else{
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Language,style:Theme.of(context).textTheme.headline2),
        ],
      );
    }
  }
}
