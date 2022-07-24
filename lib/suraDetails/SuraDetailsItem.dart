import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String qran ;
  SuraDetailsItem(this.qran);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 60,left: 15,right: 15),
      child: Container(
        child: Text('$qran',textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,),
      ),
    );
  }
}
