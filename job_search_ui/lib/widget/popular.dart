import 'package:flutter/material.dart';

class PopularDemo extends StatefulWidget {
  const PopularDemo({Key? key}) : super(key: key);

  @override
  State<PopularDemo> createState() => _PopularDemoState();
}

class _PopularDemoState extends State<PopularDemo> {
  final _items = ["All", "⚡ Popular", "⭐ Featured"];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        height: 40,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color:
                          selected == index ? Color(0XFFd6ebee) : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: selected == index
                              ? Color(0XFF53aab0)
                              : Color(0XFFddeef0),
                          width: 2)),
                  child: Center(
                    child: Text(
                      _items[index],
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: _items.length),
      ),
    );
  }
}
