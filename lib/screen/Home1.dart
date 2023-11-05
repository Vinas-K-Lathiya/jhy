import 'package:flutter/material.dart';
import 'package:jhy/conwid.dart';
import 'package:jhy/screen/free%20fire.dart';

import '../global.dart';

class Home1 extends StatefulWidget {
  Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int tap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height / 1,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/BG.webp"),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: cons_wid.constext600(
                  Tex: 'Get Daily Diamonds', siz: 18, colo: Color(0xffFFFFFF)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(home1main[index]),
                      fit: BoxFit.fill,
                    )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ListTile(
                            leading: Image.asset(home1sammy[index]),
                            title: Text(
                              home1title[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            subtitle: Text(
                              home1subtitle[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffA59CC9)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tap = index;
                              print(tap);
                            });
                            if (tap == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ffDimond(),
                                  ));
                            }
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/Rectangle 481.webp'))),
                            child: Center(
                              child: Text(
                                "Collect Free Dimond",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
