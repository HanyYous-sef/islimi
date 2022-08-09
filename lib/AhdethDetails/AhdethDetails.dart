import 'package:flutter/material.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:provider/provider.dart';

import '../taps/AhadethScreen/AhadethScreen.dart';
import 'hadethDetailsItem.dart';

class AhdethDetails extends StatefulWidget {
  static const roudeName = 'AhdethDetails';

  @override
  State<AhdethDetails> createState() => _AhdethDetailsState();
}

class _AhdethDetailsState extends State<AhdethDetails> {
// var AhdethDetailsArg ;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);

    // AhdethDetailsArg  =ModalRoute.of(context)?.settings.arguments as AhdethDetailsArgs;
    HadethModel model =
        ModalRoute.of(context)?.settings.arguments as HadethModel;
    //  List<String>Ahdeth=[];
    // Ahdeth=AhdethDetailsArg.items.split('\n');
    return Stack(children: [
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
            '${model.titel}',
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return HadethDetailsItem('${model.content[index]}');
          },itemCount: model.content.length,
            ),
          )
        ]);
  }
}
// class AhdethDetailsArgs
// {
//   String ahdeth;
//   HadethModel items ;
//   AhdethDetailsArgs(this.ahdeth,this.items);
// }
