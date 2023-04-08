import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paytmclone/models/drawer_listview.dart';

class DrawerListWidget extends StatelessWidget {
  final DrawerListModel drawerListModel;
  const DrawerListWidget({
    required this.drawerListModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (drawerListModel.navigatorScreen == null) {
          Fluttertoast.showToast(msg: 'NO Screen to Navigate');
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => drawerListModel.navigatorScreen!,
            ),
          );
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            drawerListModel.icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  drawerListModel.text1,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  drawerListModel.text2,
                  style: const TextStyle(
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: drawerListModel.isDividerShown
                      ? Container(
                          color: Colors.grey,
                          width: 400,
                          height: 1,
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color:
                drawerListModel.isIconShown ? Colors.black : Colors.transparent,
            size: 15,
          )
        ],
      ),
    );
  }
}
