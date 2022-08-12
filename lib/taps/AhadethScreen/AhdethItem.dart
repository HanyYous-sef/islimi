import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/AhdethDetails/AhdethDetails.dart';
import 'package:islami/taps/AhadethScreen/AhadethScreen.dart';

import 'AhadethScreen.dart';
import 'AhadethScreen.dart';

class AhdethItem extends StatelessWidget {
String txt;
HadethModel HadethModel1;
AhdethItem(this.txt,this.HadethModel1);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, AhdethDetails.roudeName,arguments: HadethModel1);
      },
        child:

    Text('$txt',style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,));
  }
}
