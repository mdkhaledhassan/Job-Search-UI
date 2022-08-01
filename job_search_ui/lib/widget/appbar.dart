import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Home",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "Arham Javed",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            transform: Matrix4.rotationZ(-25.7),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.notifications_none_rounded,
                                  color: Colors.grey,
                                  size: 35,
                                ),
                              ],
                            )),
                        Positioned(
                            left: 25,
                            bottom: 42,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                            ))
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                ClipOval(
                    child: Image.asset(
                  "assets/images/avatar.png",
                  fit: BoxFit.cover,
                  width: 50,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
