import 'package:first/screen/drawer.dart';
import 'package:first/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              child: Row(children: [
                Text("Available ->",style: medium,),
                Text("5000", style: medium,),
              ],),
            ),
            Container(
              child: Row(children: [
                Text("Expenses ->",style: medium,),
                Text("5000", style: medium,),
              ],),
            ),
            OutlinedButton(onPressed: (){}, child: Text("History"),),
          ],

        ),
      ),
      drawer: drawer(),
    );
  }
}
