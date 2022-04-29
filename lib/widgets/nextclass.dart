import 'package:educational_app_flutter/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:flutter_next/flutter_next.dart';

class NextClass extends StatelessWidget {
  NextClass({Key? key}) : super(key: key);
  final f = new DateFormat(' MMM hh:mm aaa');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width * 1,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffcda1b0),
                  Color(0xffa47e92),
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xfffcf2ec),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(left: 25, bottom: 0, top: 25),
                      height: 70,
                      width: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Column(
                          children: [
                            Text(
                              'MON',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            Text('24',
                                style: Themes.lightTheme.textTheme.bodyText1)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 10),
                                  child: Text(
                                    f.format(
                                      new DateTime.fromMillisecondsSinceEpoch(
                                          DateTime.now()
                                                  .millisecondsSinceEpoch +
                                              86400000),
                                    ),
                                    style:
                                        Themes.lightTheme.textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 10),
                                child: Text('|| Zoom',
                                    style:
                                        Themes.lightTheme.textTheme.bodyText2),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 55),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffa88797),
                                ),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                    onPressed: () {},
                                    child: Text('UI/UX Design')),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('UX & Web Design Course',
                      style: Themes.lightTheme.textTheme.subtitle1),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 20),
                      child: Container(
                        child: NextAvatarGroup(
                          backgroundColor: Color(0xff997888),
                          limitTo: 3,
                          itemCount: 6,
                          widthFactor: 0.8,
                          imagesList: List.generate(
                              6,
                              (index) => NetworkImage(
                                  "https://images.ctfassets.net/hrltx12pl8hq/qGOnNvgfJIe2MytFdIcTQ/429dd7e2cb176f93bf9b21a8f89edc77/Images.jpg?fit=fill&w=175&h=175&fm=webp")),
                          itemBuilder: (context, index, image) => Stack(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: image),
                                    border: Border.all(
                                        color: Color(0xfffdf3fa), width: 1.5),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              if (index % 3 == 0)
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 60),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xfffbdea1),
                                Color(0xfff1bf5a),
                              ],
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black54,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Join Class',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Best', style: Themes.lightTheme.textTheme.headline4),
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    child: Text('Teachers',
                        style: Themes.lightTheme.textTheme.headline3),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      margin: EdgeInsets.only(left: 135),
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
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xfff3e8e2),
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffb28d9b),
                          radius: 34.0,
                          child: ClipRRect(
                            child: Image(
                                image: NetworkImage(
                                    'https://cdn.mirchistatus.com/siteuploads/images/images17/8180/thumb/cute-boy-whatsapp-dp-profile-images-pics-photo-wallpaper-hd-download_xlrg.jpg?time=1573205004'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -13),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: EdgeInsets.only(left: 0),
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffe1b19a),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5),
                            child: Text(
                              'Nasir',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20),
                child: Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xfff3e8e2),
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffb28d9b),
                          radius: 34.0,
                          child: ClipRRect(
                            child: Image(
                                image: NetworkImage(
                                    'https://cdn.mirchistatus.com/siteuploads/images/images17/8180/thumb/cute-boy-whatsapp-dp-profile-images-pics-photo-wallpaper-hd-download_xlrg.jpg?time=1573205004'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -13),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: EdgeInsets.only(left: 0),
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffccbda9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5),
                            child: Text(
                              'Jakab',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20),
                child: Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xfff3e8e2),
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffb28d9b),
                          radius: 34.0,
                          child: ClipRRect(
                            child: Image(
                                image: NetworkImage(
                                    'https://cdn.mirchistatus.com/siteuploads/images/images17/8180/thumb/cute-boy-whatsapp-dp-profile-images-pics-photo-wallpaper-hd-download_xlrg.jpg?time=1573205004'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -13),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: EdgeInsets.only(left: 0),
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffecd9ae),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5),
                            child: Text(
                              'ahmad',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20),
                child: Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xfff3e8e2),
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffb28d9b),
                          radius: 34.0,
                          child: ClipRRect(
                            child: Image(
                                image: NetworkImage(
                                    'https://cdn.mirchistatus.com/siteuploads/images/images17/8180/thumb/cute-boy-whatsapp-dp-profile-images-pics-photo-wallpaper-hd-download_xlrg.jpg?time=1573205004'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -13),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: EdgeInsets.only(left: 0),
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff869eb2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5),
                            child: Text(
                              'Nazif',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
