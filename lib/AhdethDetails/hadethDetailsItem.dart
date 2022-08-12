import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethDetailsItem extends StatelessWidget {
String hadath;
HadethDetailsItem(this.hadath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60,left: 15,right: 15),
      child: Container(
        child: Text('$hadath',textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,),
      ),
    );;
  }
}
