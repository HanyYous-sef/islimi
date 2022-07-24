import 'package:flutter/material.dart';
import 'package:islami/taps/AhadethScreen/AhadethScreen.dart';
import 'package:islami/taps/qran/QranScreen.dart';
import 'package:islami/taps/RadioScreen.dart';
import 'package:islami/taps/SebhaScreen.dart';
class HomeLayout extends StatefulWidget {
static const String roudeName='HomeLayout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('asstes/images/main_background.png',
        width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
           title: Text('Islimi',style: Theme.of(context).textTheme.headline1,),centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              currentIndex=index;
              setState((){});
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asstes/images/moshaf_blue.png')),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asstes/images/sebha.png')),label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asstes/images/radio.png')),label: 'Radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asstes/images/quran1.png')),label: 'Ahadeth'),
            ],

          ),
          body: taps[currentIndex],
        )
      ],
    );
  }
  List<Widget>taps=[QranScreen(),RadioScreen(),SebhaScreen(),AhadethScreen()];
}
