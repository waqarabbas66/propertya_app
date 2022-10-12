import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_translate/flutter_translate.dart';

import '../../../Utils/Constants.dart';


class WhatsNearByPage extends StatefulWidget {

  @override
  State<WhatsNearByPage> createState() => _WhatsNearByPageState();
}

class _WhatsNearByPageState extends State<WhatsNearByPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color2),
        title: Text(
          translate('whats_nearby_page.whats_nearby'),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
             Container(
               width: MediaQuery.of(context).size.width,
               //height: 400,
               //color: Colors.amberAccent,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15, bottom: 6, top: 15,right: 10),
                     child: Text(
                       translate('whats_nearby_page.automotive'),
                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 27,
                           fontWeight: FontWeight.bold
                       ),),
                   ),
                   Column(
                     children: <Widget>[
                       SizedBox(height: 2,),
                       ListTile(
                         trailing: RatingBar.builder(
                           itemSize: 20,
                           initialRating: 4,
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
                         title: Text("Ludlow Garage",
                           maxLines: 2,
                           style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         subtitle: Row(
                           children: [
                             Text("(1.36 km)",
                               style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.w400
                               ),
                             ),
                           ],
                         ),
                       ),
                       Divider(color: Colors.grey.shade700, thickness: 0.30,), //                           <-- Divider
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       SizedBox(height: 2,),
                       ListTile(
                         trailing: RatingBar.builder(
                           itemSize: 20,
                           initialRating: 5,
                           minRating: 1,
                           direction: Axis.horizontal,
                           //allowHalfRating: true,
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
                         title: Text("Champion Automotive Repair Service",
                           maxLines: 1,
                           style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         subtitle: Row(
                           children: [
                             Text("(4.25 km)",
                               style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.w400
                               ),
                             ),
                           ],
                         ),
                       ),
                      Divider(color: Colors.grey.shade700, thickness: 0.30,), //                           <-- Divider
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       SizedBox(height: 2,),
                       ListTile(
                         trailing: RatingBar.builder(
                           itemSize: 20,
                           initialRating: 4,
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
                         title: Text("Bridgeview Auto Services Center",
                           maxLines: 1,
                           style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         subtitle: Row(
                           children: [
                             Text("(0.92 km)",
                               style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.w400
                               ),
                             ),
                           ],
                         ),
                       ),
                       Divider(color: Colors.grey.shade700, thickness: 0.30,),  //                           <-- Divider
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       SizedBox(height: 2,),
                       ListTile(
                         trailing: RatingBar.builder(
                           itemSize: 20,
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
                         title: Text("CARU",
                           style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         subtitle: Row(
                           children: [
                             Text("(0.48 km)",
                               style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.w400
                               ),
                             ),
                           ],
                         ),
                       ),
                       Divider(color: Colors.grey.shade700, thickness: 0.30,),  //                           <-- Divider
                     ],
                   ),
                 ],
               ),
             ),
              Container(
                width: MediaQuery.of(context).size.width,
                //height: 400,
                //color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 6, top: 15,right: 10),
                      child: Text(
                        translate('whats_nearby_page.restaurants'),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
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
                          title: Text("Da Andrea",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(1.59 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,), //                           <-- Divider
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            //allowHalfRating: true,
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
                          title: Text("Jack's Wife Freda",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(0.17 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,), //                           <-- Divider
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
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
                          title: Text("Rubirosa",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(0.29 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,),  //                           <-- Divider
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
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
                          title: Text("Jane Restaurant",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(0.58 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,),  //                           <-- Divider
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                //height: 400,
                //color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 6, top: 15,right: 10),
                      child: Text(
                        translate('whats_nearby_page.shopping'),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
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
                          title: AutoSizeText("Shein Pop Up Store",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(0.33 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,), //                           <-- Divider
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            //allowHalfRating: true,
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
                          title: AutoSizeText("Chelsea Market",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(2.25 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,), //                           <-- Divider
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
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
                          title: AutoSizeText("Dumbo Flea",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(2.35 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,),  //                           <-- Divider
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 2,),
                        ListTile(
                          trailing: RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
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
                          title: AutoSizeText("Catbird",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text("(0.21 km)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade700, thickness: 0.30,),  //                           <-- Divider
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
