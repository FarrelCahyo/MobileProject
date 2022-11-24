import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/API/model.dart';
import 'package:project/API/basenetwork.dart';

class PageDetail extends StatefulWidget {
  const PageDetail({Key? key, required this.id, required this.title})
      : super(key: key);
  final int id;
  final String title;

  @override
  State<PageDetail> createState() => _PageDetailState();
  // _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {

  final BaseNetwork _pageList = BaseNetwork();


  @override
  Widget build(BuildContext context,) {
    return AppBar(
      // backgroundColor: Model.id,
      // elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        // SizedBox(width: DefaultPadding / 2)
      ],
    );
  }
}