import 'package:first/screen/drawer.dart';
import 'package:first/utils/text_style.dart';
import 'package:flutter/material.dart';

class AddDetail extends StatelessWidget {
  const AddDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text("Image", style: large,),
              //Image input field
              Text("Name",style: medium,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              OutlinedButton(onPressed: (){}, child: Text("ADD"),),
            ],
          ),
        ),
      ),
      drawer: drawer(),
    );
  }
}
