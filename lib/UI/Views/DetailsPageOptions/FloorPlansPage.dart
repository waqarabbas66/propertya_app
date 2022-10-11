import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:propertya_app/Utils/Constants.dart';

class FloorPlansPage extends StatefulWidget {

  @override
  State<FloorPlansPage> createState() => _FloorPlansPageState();
}

class _FloorPlansPageState extends State<FloorPlansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color2),
        title: Text(
          translate('floor_plans_page.floor_plans'),
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(itemCount:2, itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color3,
                border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                borderRadius: BorderRadius.circular(2),
              ),
                child: ExpansionTile(
                    title: Text("Second Floor",
                      style: TextStyle(
                        color: Color2,
                        fontSize: 22
                      ),),
                    subtitle: Container(
                      height: 35,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                AutoSizeText(
                                  translate('floor_plans_page.rooms'),
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color5,
                                      fontSize: 20
                                  ),
                                ),
                                Text("5",
                                  style: TextStyle(
                                      color: Color2,
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                Text(
                                  translate('floor_plans_page.baths'),
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color5,
                                      fontSize: 20
                                  ),
                                ),
                                Text("2",
                                  style: TextStyle(
                                      color: Color2,
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                Text(
                                  translate('floor_plans_page.size'),
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color5,
                                      fontSize: 20
                                  ),
                                ),
                                Text("1,200 Sq ft",
                                  style: TextStyle(
                                      color: Color2,
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              AutoSizeText(
                                translate('floor_plans_page.price'),
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color5,
                                    fontSize: 23
                                ),
                              ),
                              AutoSizeText(" 2,300 ",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color2,
                                    fontSize: 23
                                ),
                              ),
                              AutoSizeText(
                                translate('floor_plans_page.per_month'),
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color2,
                                    fontSize: 23
                                ),
                              ),
                            ],
                          ),
                          AutoSizeText("boasting full open NYC views."
                              "You need to see the views to believe them."
                              "Minimum condition with new hardwood floor."
                              "Lots of closets plus washer and dryer.",
                            maxLines: 10,
                            style: TextStyle(
                                fontSize: 19
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ),
          );
        }),
      ),
    );
  }
}
