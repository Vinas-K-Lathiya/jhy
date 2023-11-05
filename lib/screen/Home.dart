import 'package:flutter/material.dart';
import 'package:jhy/conwid.dart';

import 'Home1.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height / 1,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/BG.webp'), fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: cons_wid.constext600(
                Tex: 'Get Daily Diamonds', siz: 18, colo: Color(0xffFFFFFF)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33.0),
            child: cons_wid.constext600(
                Tex: 'Here is some information about the game:',
                siz: 15,
                colo: Color(0xffFFFFFF)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: cons_wid.constext500(
                  Tex:
                      'The game offers different methods, including Classic, Ranked and Clash Squad. 1010 Players can choose from a variety of characters, each with their own unique abilities and playstyles. 1010 Free Fire offers a range of weapons, including assault rifles, SMGs, shotguns and pistols. 1010 the game also includes vehicles vehicle such as cars, bikes and boats, which can be used to move around the island quickly.',
                  siz: 14,
                  colo: Color(0xffAAAAAA)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home1(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/Rectangle 8.webp'),
                          fit: BoxFit.cover)),
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: cons_wid.constext600(
                          Tex: 'Let’s get Started',
                          siz: 18,
                          colo: Color(0xffFFFFFF)),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: cons_wid.constext500(
                          Tex: 'Redeem your diamonds and enjoy it!',
                          siz: 13,
                          colo: Color(0xffD8D8D8)),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset('images/Group 1150.png'),
                    ),
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
