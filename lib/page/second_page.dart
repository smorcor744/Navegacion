import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';
import 'package:navegacion/page/third_page.dart';
import 'package:navegacion/widget/button_widget.dart';
import 'package:navegacion/widget/header_widget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HeaderWidget(title: 'Page 2'),
              ButtonWidget(
                text: 'Push: Page 3',
                onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                ),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'Pop: Page 1',
                onClicked: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
}
