import 'package:first/screen/drawer.dart';
import 'package:first/utils/text_style.dart';
import 'package:flutter/material.dart';

class Expenses extends StatelessWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Money"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text("Add Money", style: large,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              OutlinedButton(onPressed: (){}, child: Text("Expenses"),),
            ],
          ),
        ),
      ),
      drawer: drawer(),
    );
  }
}
