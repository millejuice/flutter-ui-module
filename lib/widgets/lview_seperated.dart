import 'package:flutter/material.dart';

class ListViewSeperated extends StatefulWidget {
  const ListViewSeperated({super.key});

  @override
  State<ListViewSeperated> createState() => _ListViewSeperatedState();
}

class _ListViewSeperatedState extends State<ListViewSeperated> {

  final List<String> entries = <String>['A','B','C'];
  final List<int> colorCodes= <int>[600,500,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: entries.length,
        
        itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}'),),
          
        );
      },
      separatorBuilder: (BuildContext context,int index)=>const Divider(
        height: 10.0,
      ), 
      ), 
      
      );
  }
}