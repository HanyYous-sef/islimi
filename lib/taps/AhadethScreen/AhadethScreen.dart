import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'AhdethItem.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
List<HadethModel>allAhdeth=[];

  @override
  Widget build(BuildContext context) {

    if(allAhdeth.isEmpty)
      {
        lodeAhdeth();
      }
    return Column(
      children: [
        Center(child: Padding(
          padding: const EdgeInsets.only(top: 19),
          child: Image.asset('asstes/images/ahdeth.png',),
        ))
       ,Divider(color: Theme.of(context).primaryColor,thickness: 2,),
        Center(child: Text(AppLocalizations.of(context)!.ahadeth
    ,style: Theme.of(context).textTheme.headline2,)),
        Divider(color: Theme.of(context).primaryColor,thickness: 2,),

        Expanded(

          child:
          allAhdeth.isEmpty?
          Center(child: CircularProgressIndicator())
              :
          ListView.separated(itemBuilder: (context ,index){
            return  AhdethItem('${allAhdeth[index].titel}',allAhdeth[index]);
          },
              separatorBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(left: 50,right: 50),
                  height: 1,
                  color: Theme.of(context).primaryColor ,);
              },
              itemCount: allAhdeth.length)
        )
    ],

    );
  }

  void lodeAhdeth() async {
    String content = await rootBundle.loadString('file/ahadeth.txt');
    List<String> ahdeth = content.trim().split('#\r\n');

    for (int i = 0; i < ahdeth.length; i++) {
      String AllAhdethContent = ahdeth[i];
      List<String> lines = AllAhdethContent.split('\n');
      String titel = lines[0];
      lines.removeAt(0);
      // HadethModel(titel,lines);
      // HadethModel HadethModel =HadethModel(titel,lines);
      allAhdeth.add(HadethModel(titel, lines));
      setState(() {});
    }
  }
}
class HadethModel{
  String titel;
  List<String>content;
  HadethModel(this.titel,this.content);
}
