import 'package:flutter/material.dart';

import '../global.dart';
import 'collectyourdimond.dart';

class FFlevel extends StatefulWidget {
  const FFlevel({super.key});

  @override
  State<FFlevel> createState() => _FFlevelState();
}

class _FFlevelState extends State<FFlevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/BG.webp'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "ID Level",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xffAA5BD1))),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              idlevelin = index;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => collectyourdimond(),
                                ));
                          },
                          child: ListTile(
                            leading: Image.asset(ffidimage[index]),
                            title: Text(
                              "${ffidname[index]}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Container(
                              height: 20,
                              width: 20,
                              decoration: (idlevelin == index)
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(360),
                                      color: Color(0xffAA5BD1))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(360),
                                      border: Border.all(
                                          width: 2, color: Color(0xffAA5BD1))),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
