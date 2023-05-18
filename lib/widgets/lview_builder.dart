import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  final List<String> entries = <String>['A','B','C'];
  final List<int> colorCodes = <int>[600,500,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Page'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,        //수직으로 내리는 listview
        itemCount: entries.length,             //listview의 갯수
        
        itemBuilder: (BuildContext context, index) {
        return Container(
          height: 70,                       //container의 높이
          color: Colors.green[index*200], //그라데이션
          alignment: Alignment.center,
          child: Text('item: $entries[index]'),      //각 list에 들어갈 text => entries의 A, B, C
        );
      } 
      ),
      );
  }
}