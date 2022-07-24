import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../suraDetails/SuraDetails.dart';

class SuraNameItem extends StatelessWidget {
String SuraName;
int index;
SuraNameItem(this.SuraName,this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      InkWell(
        onTap:(){
          Navigator.pushNamed(context, SuraDetails.roudeName,arguments: SuraDetailsArgs(SuraName,index));
        },
        child: Text('$SuraName',textAlign: TextAlign.center
          ,style: Theme.of(context).textTheme.headline2,),
      ),
    );;
  }
}
