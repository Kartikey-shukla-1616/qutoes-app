import 'package:flutter/material.dart';

import 'quotespage.dart';
import 'utils.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of catogoriies
  List<String> categories = ["Love","Inspirational","Life","Humor"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //the  ScrollPhysics(),  is used to animate the scroll
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center ,
                margin: EdgeInsets.only(top: 51),
                child: Text
                  ("Quotes App"
                  ,style: textStyle(
                      35,Colors.black,
                      FontWeight.w700),)
            ),
            GridView.count(crossAxisCount:2,shrinkWrap: true,
              // the physics widget is used to animate the widget
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              // here i map the children to a list
              children: categories.map((category) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child:
                  InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => QuotesPage(category))),

                    child: Text(
                      category.toUpperCase(),
                      style: textStyle(
                          20,Colors.white,
                          FontWeight.bold),

                    ),
                  )),
                );
              }).toList(),
            ),

          ],
        ),
      ),



    );
  }
}
