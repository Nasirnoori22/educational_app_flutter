import 'package:educational_app_flutter/widgets/rating_bar.dart';
import 'package:educational_app_flutter/widgets/teacher.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../theme/theme.dart';

class SingleProfile extends StatelessWidget {
  const SingleProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffffffff),
              ),
              child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  IconlyLight.arrow_left_2,
                  color: Themes.lightTheme.iconTheme.color,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 0),
                borderRadius: BorderRadius.circular(30),
                color: Color(0xfffcf2ec),
              ),
              child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  IconlyLight.notification,
                  color: Themes.lightTheme.iconTheme.color,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: MediaQuery.of(context).padding * 0.4 +
                  EdgeInsets.only(top: 0, left: 0, right: 50),
              child: Text(
                'Ux & Web Desing Best \nMaster Course',
                style: Themes.lightTheme.textTheme.headline2,
              ),
            ),
            Container(
              margin: MediaQuery.of(context).padding * 0.0 +
                  EdgeInsets.only(top: 0, left: 15, right: 0),
              child: RattingBarWidget(),
            ),
            Container(child: TeacherCard()),
          ],
        ),
      ),
    );
  }
}
