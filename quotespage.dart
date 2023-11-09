import 'package:flutter/material.dart';
import 'utils.dart';





class QuotesPage extends StatefulWidget {
  final String categoryname;
  QuotesPage(this.categoryname);

  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  @override


  void initState() {

    super.initState();
    getquotes();
  }
  getquotes() async{
  }


  Widget build(BuildContext context) {
    // var widget;
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 51),
                child: Text(
                  // making love category use of String interplation

                  "${widget.categoryname} quotes".toUpperCase(),
                  style: textStyle(
                      35, Colors.black,
                      FontWeight.w700),)
            ),


            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, bottom: 20),
                          child: Text(
                            "It is better to be hated for what you are than to be loved for what you are not"
                            ,
                            style: textStyle(18, Colors.black, FontWeight.w700),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Robert A. Heinlein"
                            ,
                            style: textStyle(14, Colors.black, FontWeight.w700)
                            ,),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )

          ],
        ),
      ),

    );
  }
}
