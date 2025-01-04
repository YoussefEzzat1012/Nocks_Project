import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final String routeName;
  final int pageIndex;
  final Function(int) onSelectPage;


  HomeItem({required this.title, required this.subtitle, required this.icon, required this.routeName,required this.pageIndex, required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectPage(pageIndex);
      },
      child: Container(
        height: 122,
        width: 200,
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 12.0
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 5
        ),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
          trailing: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
