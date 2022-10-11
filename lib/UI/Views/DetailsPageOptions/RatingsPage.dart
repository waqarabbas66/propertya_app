import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:propertya_app/Utils/Constants.dart';

class RatingsPage extends StatefulWidget {

  @override
  State<RatingsPage> createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color2),
        title: Container(
          height: 30,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text("5.0 ",
                  maxLines: 2,
                  style: TextStyle(
                      color: Color2,
                      fontSize: 20
                  ),
                ),
                Text(
                  translate('average_based_on_page.average_based_on'),
                  maxLines: 2,
                  style: TextStyle(
                      color: Color2,
                      fontSize: 20
                  ),
                ),
                Text(" 1 ",
                  maxLines: 2,
                  style: TextStyle(
                      color: Color2,
                      fontSize: 20
                  ),
                ),
                Text(
                  translate('average_based_on_page.rating'),
                  maxLines: 2,
                  style: TextStyle(
                      color: Color2,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(itemCount: 4, itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color3,
                border: Border.all(color: Colors.lightBlue.shade100, width: 0.75),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Color1,
                              borderRadius: BorderRadius.circular(150),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/customer.jpg")
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                            //color: Color1,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Row(
                                   children: [
                                     Expanded(
                                       child: Container(
                                         height: 90,
                                         //color: Colors.red,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             AutoSizeText(
                                               "Alizey Jack",
                                               maxLines: 2,
                                               style: TextStyle(
                                                   color: Color2,
                                                   fontSize: 20,
                                                   fontWeight: FontWeight.w400
                                               ),
                                             ),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.start,
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Icon(Icons.access_time, color: Color2, size: 18,),
                                                 SizedBox(width: 5,),
                                                 Row(
                                                   children: [
                                                     AutoSizeText(
                                                       "2 ",
                                                       maxLines: 2,
                                                       style: TextStyle(
                                                           color: Color5,
                                                           fontSize: 17,
                                                           fontWeight: FontWeight.w400
                                                       ),
                                                     ),
                                                     AutoSizeText(
                                                       translate('average_based_on_page.years_ago'),
                                                       maxLines: 2,
                                                       style: TextStyle(
                                                           color: Color5,
                                                           fontSize: 17,
                                                           fontWeight: FontWeight.w400
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                     Expanded(
                                         child: Container(
                                           height: 90,
                                           //color: Colors.green,
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               RatingBar.builder(
                                                 itemSize: 15,
                                                 initialRating: 5,
                                                 minRating: 1,
                                                 direction: Axis.horizontal,
                                                 allowHalfRating: true,
                                                 itemCount: 5,
                                                 itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                                 itemBuilder: (context, _) => Icon(
                                                   Icons.star,
                                                   color: Colors.amber,
                                                 ),
                                                 // onRatingUpdate: (rating) {
                                                 //   print(rating);
                                                 // },
                                               ),
                                             ],
                                           ),
                                         )
                                     ),
                                   ],
                                 )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Color5, thickness: 0.85,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
                    child: Text(
                      "Satisfied",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Text("Highly recommended their services",
                      maxLines: 10,
                      style: TextStyle(
                          fontSize: 16,
                        color: Color5.shade600
                      ),
                    ),
                  ),
                  Divider(color: Color5, thickness: 0.85,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 15, bottom: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                FaIcon(FontAwesomeIcons.solidThumbsUp, color:Colors.amber),
                                SizedBox(width: 5,),
                                Text(
                                  translate('average_based_on_page.like'),
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color5.shade600
                                ),
                                ),
                                Text(" (1) ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color5.shade600
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 7,),
                            FaIcon(FontAwesomeIcons.solidHeart, color:Colors.red.shade500),
                            SizedBox(width: 5,),
                            Text(
                              translate('average_based_on_page.love'),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color5.shade600
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.solidThumbsDown, color:Color5.shade400),
                            SizedBox(width: 5,),
                            Text(
                              translate('average_based_on_page.dislike'),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color5.shade600
                              ),
                            ),
                          ],
                        )


                      ],
                    ),
                  )
                ],
              ),
            )
          );
        }),
      ),
    );
  }
}
