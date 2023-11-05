import 'package:flutter/material.dart';
import 'package:jhy/conwid.dart';

import '../fffontstyle/idfontstyle.dart';
import '../global.dart';
import 'dimondcalculate.dart';

class ffDimond extends StatefulWidget {
  const ffDimond({super.key});

  @override
  State<ffDimond> createState() => _ffDimondState();
}

class _ffDimondState extends State<ffDimond> {
  int tap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height / 1,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/BG.webp"), fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: cons_wid.constext600(
                  Tex: 'Free Fire', siz: 18, colo: Color(0xffFFFFFF)),
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
                      image: AssetImage(freefiremain[index]),
                      fit: BoxFit.fill,
                    )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ListTile(
                            leading: Image.asset(freefiresammy[index]),
                            title: Text(
                              freefireTitle[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            subtitle: Text(
                              freefiresubTitle[index],
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
                            });
                            if (tap == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => dimondcalculate(),
                                  ));
                            } else if (tap == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Idstyle(),
                                  ));
                            }
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(freefirebox[index]))),
                            child: Center(
                              child: Text(
                                freefireinbox[index],
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
