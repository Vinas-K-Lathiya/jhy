import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jhy/global.dart';

class collectyourdimond extends StatefulWidget {
  const collectyourdimond({super.key});

  @override
  State<collectyourdimond> createState() => _collectyourdimondState();
}

class _collectyourdimondState extends State<collectyourdimond> {
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
            SizedBox(
              height: 50,
            ),
            Text(
              "FF Dimond",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Image.asset('images/Rectangle 482.png'),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 1.4,
                          ),
                        ),
                        Center(
                          child: Wrap(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 5, right: 5, bottom: 5, top: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/Rectangle 472 (1).webp'),
                                      fit: BoxFit.cover),
                                ),
                                child: Text(
                                  '''Uid = ${sid} \n \nDimond = ${sdimond}''',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5),
                child: Stack(
                  children: [
                    Center(child: Image.asset("images/Rectangle 481.webp")),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Collect",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
