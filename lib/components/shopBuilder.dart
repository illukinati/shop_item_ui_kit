import 'package:flutter/material.dart';

class ShopBuilder extends StatefulWidget {
  final List<Widget> children;
  final int column;
  final double height;
  final IndexedWidgetBuilder itemBuilder;

  const ShopBuilder({
    Key key,
    this.children,
    this.column,
    this.height,
    this.itemBuilder,
  }) : super(key: key);

  @override
  _ShopBuilderState createState() => new _ShopBuilderState();
}

class _ShopBuilderState extends State<ShopBuilder> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / widget.column;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        crossAxisCount: widget.column,
        childAspectRatio: (itemWidth / widget.height),
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: widget.children,
      ),
    );
  }
}
