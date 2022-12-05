import 'package:app_flutter/components/shape_curved_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget title;
  final bool centerTitle;
  final Widget navigatorButton;

  CustomAppBar({super.key, 
    required this.title,
    this.centerTitle = false,
    required this.navigatorButton});

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 32);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      child: Stack(
        children: <Widget>[
          Material(
            elevation: 1,
            color: Color.fromARGB(255, 255, 255, 255),
            shape: ShapeCurvedBar(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height: widget.preferredSize.height + 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/header.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromRGBO(65, 130, 184, 0.5), 
                          BlendMode.srcATop
                      )
                  )
              ),
            ),
            
          ),
          _getAppBar()
        ],
      ),
    );
  }

  Widget _getAppBar() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: kToolbarHeight,
      width: double.maxFinite,
      child: Stack(
        children: _getList(),
      ),
    );
  }

  Widget _getTitle() {
    Widget wTitle = widget.title != null ? widget.title : Container();
    return widget.centerTitle
        ? Center(child: wTitle)
        : Container(padding: EdgeInsets.only(left: 50), child: wTitle);
  }

  List<Widget> _getList() {
    List<Widget> list = [];
    list.add(_getTitle());
    if (widget.navigatorButton != null) {
      list.add(widget.navigatorButton);
    }
    return list;
  }
}