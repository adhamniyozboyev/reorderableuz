import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyListWheelScroolView(),
  ));
}

class MyListWheelScroolView extends StatefulWidget {
  const MyListWheelScroolView({super.key});

  @override
  State<MyListWheelScroolView> createState() => _MyListWheelScroolViewState();
}

class _MyListWheelScroolViewState extends State<MyListWheelScroolView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          body: ListWheelScrollView.useDelegate(
              itemExtent: 75,
              childDelegate:
                  ListWheelChildBuilderDelegate(builder: (context, index) {
                if (index < 0 || index > 12) {
                  return null;
                }
                return ListTile(
                  onTap: () {
                    
                  },
                  leading: CircleAvatar(
                      child: Image.asset('images/cartoon.png')),
                  title: Text('Person$index'),
                  subtitle: Text('Malumot bu yerda'),
                );
              }))),
    );
  }
}
