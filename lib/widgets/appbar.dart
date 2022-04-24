import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:educational_app_flutter/theme/theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 1),
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffffffff),
            ),
            child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  IconlyLight.search,
                  color: Themes.lightTheme.iconTheme.color,
                )),
          ),
          CircleAvatar(
            backgroundColor: Color(0xffb28d9b),
            radius: 25.0,
            child: ClipRRect(
              child: Image(
                  image: NetworkImage(
                      'https://cdn.mirchistatus.com/siteuploads/images/images17/8180/thumb/cute-boy-whatsapp-dp-profile-images-pics-photo-wallpaper-hd-download_xlrg.jpg?time=1573205004'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ],
      ),
    );
  }
}
