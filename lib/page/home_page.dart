import 'package:educational_app_flutter/widgets/appbar.dart';
import 'package:educational_app_flutter/widgets/nextclass.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:educational_app_flutter/theme/theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
        title: AppBarWidget(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Themes.lightTheme.cardTheme.color,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 60, top: 5),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 80, top: 20),
                              child: Text(
                                'Find Best ',
                                style: Themes.lightTheme.textTheme.headline4,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20, top: 5),
                              child: Text(
                                'Online School',
                                style: Themes.lightTheme.textTheme.headline3,
                              ),
                            )
                          ],
                        ),
                      ),
                      height: 130,
                      width: 320),
                  Transform.translate(
                    offset: Offset(-40, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade100,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      height: 80,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Icon(
                                IconlyLight.search,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Text('/')),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Icon(
                                IconlyLight.voice,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Next', style: Themes.lightTheme.textTheme.headline4),
                Container(
                  margin: EdgeInsets.only(right: 180),
                  child: Text('Class',
                      style: Themes.lightTheme.textTheme.headline3),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff3f3f4),
                    ),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.grey,
                        ),
                        onPressed: () {},
                        child: Text('View all')),
                  ),
                )
              ],
            ),
          ),
          NextClass(),
        ],
      ),
    );
  }
}
