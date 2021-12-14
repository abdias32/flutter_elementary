import 'package:flutter/material.dart';

import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_elementary/lists/category.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();

  static const double _itemHeight = 80;
  static const int _itemCount = 7;

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 2,
              child: ClickableListWheelScrollView(
                scrollController: _scrollController,
                itemHeight: _itemHeight,
                itemCount: _itemCount,
                onItemTapCallback: (index) {
                  print("onItemTapCallback index: $index");
                },
                child: ListWheelScrollView.useDelegate(
                  controller: _scrollController,
                  itemExtent: _itemHeight,
                  // physics: FixedExtentScrollPhysics(),
                  physics: const BouncingScrollPhysics(),
                  overAndUnderCenterOpacity: 0.5,
                  perspective: 0.002,
                  onSelectedItemChanged: (index) {
                    print("onSelectedItemChanged index: $index");
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, index) => _child(index),
                    childCount: _itemCount,
                  ),
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }

  Widget _child(int index) {
    return SizedBox(
      height: _itemHeight,
      child: ListTile(
        leading: Icon(categories[index].icon,
            color: categories[index].color, size: 50),
        title: Text(categories[index].title,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: categories[index].color)),
        subtitle: Text(categories[index].subTitle),
      ),
    );
  }
}
