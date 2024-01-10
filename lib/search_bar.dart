import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Container(
      //width: w,
      height: 50,
      //margin: EdgeInsets.symmetric(vertical: 30),
      //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0.7),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          //focusColor: Colors.,
          hintText: "Search Food Items",
          icon: SvgPicture.asset("assets/search.svg"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
