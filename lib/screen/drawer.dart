import 'package:first/screen/about.dart';
import 'package:first/screen/add_detail.dart';
import 'package:first/screen/add_expenses.dart';
import 'package:first/screen/home.dart';
import 'package:first/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'add_money.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    child: CircleAvatar(
                      radius: 78,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 70,
                        child: ClipOval(
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg",
                            width: 140,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Bidyut Mazumder",
                      style: large,
                    ),
                    //child: Text("${data.name}", style: large,),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .7,
              color: Colors.black26,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      child: OutlinedButton(

                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()),);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.home),
                            SizedBox(width: 40,),
                            Text("Home",style: small,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: OutlinedButton(

                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddMoney()),);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            SizedBox(width: 40,),
                            Text("Add Money",style: small,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: OutlinedButton(

                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Expenses(),),);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_forward_ios),
                            SizedBox(width: 40,),
                            Text("Expenses",style: small,),
                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: OutlinedButton(

                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddDetail(),),);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.edit),
                            SizedBox(width: 40,),
                            Text("Edit Detail", style: small,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => About(),),);
                        },

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("About", textAlign: TextAlign.center,style: small,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
