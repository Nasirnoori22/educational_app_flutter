import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 40, right: 40),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.2 - 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xfffcf2ec),
        ),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffecc9b8),
                ),
                margin: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height * 0.2 - 120,
                width: MediaQuery.of(context).size.width * 0.8 * 0.2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8),
                  child: Image.asset(
                    'images/Nasir.png',
                    height: 50,
                    width: 50,
                  ),
                )),
          ],
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.2 - 125,
        left: MediaQuery.of(context).size.width * 0.7 - 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1 - 30,
          width: MediaQuery.of(context).size.width * 0.3 - 40,
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.white,
                Color(0xfffaf9f9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            IconlyLight.chat,
            color: Color(0xffb28d9b),
            size: 35,
          ),
        ),
      ),
    ]);
  }
}
