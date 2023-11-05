import 'package:flutter/material.dart';

import '../global.dart';
import 'fflevel.dart';

class dimondcalculate extends StatefulWidget {
  const dimondcalculate({super.key});

  @override
  State<dimondcalculate> createState() => _dimondcalculateState();
}

class _dimondcalculateState extends State<dimondcalculate> {
  TextEditingController dimondcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height / 1,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/BG.webp'), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Diamond Calculator",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Image.asset('images/Rectangle 472.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 30),
                  child: TextField(
                    controller: dimondcontroller,
                    onChanged: (val) {
                      setState(() {
                        sdimond = val;
                      });
                    },
                    cursorColor: Color(0xffAA5BD1),
                    style: TextStyle(
                        color: Color(0xffA49CC9), fontWeight: FontWeight.w500),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Enter Diamond Number',
                        hintStyle: TextStyle(color: Color(0xffA49CC9)),
                        filled: true,
                        fillColor: Color(0xff3E3343),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Color(0xffAA5BD1), width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Color(0xffAA5BD1), width: 2))),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 30),
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        sid = val;
                      });
                    },
                    cursorColor: Color(0xffAA5BD1),
                    style: TextStyle(
                        color: Color(0xffA49CC9), fontWeight: FontWeight.w500),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Uid',
                        hintStyle: TextStyle(color: Color(0xffA49CC9)),
                        filled: true,
                        fillColor: Color(0xff3E3343),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Color(0xffAA5BD1), width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Color(0xffAA5BD1), width: 2))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      if (sdimond != "" && sid != "") {
                        FocusScope.of(context).unfocus();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FFlevel(),
                            ));
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/Rectangle 481.webp'))),
                      child: Center(
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
