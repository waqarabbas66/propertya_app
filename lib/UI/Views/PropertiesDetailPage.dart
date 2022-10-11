import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:propertya_app/UI/Maps/MapScreen.dart';
import 'package:propertya_app/UI/Views/DetailsPageOptions/AttachmentsListPage.dart';
import 'package:propertya_app/UI/Views/DetailsPageOptions/FloorPlansPage.dart';
import 'package:propertya_app/UI/Views/DetailsPageOptions/MortageCalculatorPage.dart';
import 'package:propertya_app/UI/Views/DetailsPageOptions/RatingsPage.dart';
import 'package:propertya_app/UI/Views/DetailsPageOptions/ScheduleATour.dart';
import 'package:propertya_app/UI/Views/DetailsPageOptions/WhatsNearByPage.dart';
import 'package:propertya_app/Utils/Constants.dart';

class PropertiesDetailPage extends StatefulWidget {

  @override
  State<PropertiesDetailPage> createState() => _PropertiesDetailPageState();
}

class _PropertiesDetailPageState extends State<PropertiesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height /3.2,
                width: MediaQuery.of(context).size.width,
                //color: Color1,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height /4,
                      width: MediaQuery.of(context).size.width,
                      child:  CarouselSlider.builder(itemCount:5, options: CarouselOptions(
                        height: 600,
                        aspectRatio: 12/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 4),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: false,
                        // onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                      ), itemBuilder: (BuildContext context, int index, int realIndex) {
                        return Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/drawingroom.jpg")
                                )
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(50),
                                                      color: Color3
                                                  ),
                                                  child: Center(child: FaIcon(FontAwesomeIcons.arrowLeftLong)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 50,

                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10, bottom: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),
                                                    color: Color3
                                                ),
                                                child: Center(child: FaIcon(FontAwesomeIcons.shareNodes)),
                                              ),
                                              SizedBox(width: 10,),
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),
                                                    color: Color3
                                                ),
                                                child: Center(child: FaIcon(FontAwesomeIcons.solidHeart, color: Color5,)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                   children: [
                                     Container(
                                       width: 35,
                                       height: 35,
                                       decoration: BoxDecoration(
                                         color: Colors.grey.shade300,
                                         borderRadius: BorderRadius.circular(4)
                                       ),
                                       child:  Icon(Icons.bed, color: Colors.grey.shade500, size: 28,),
                                     ),
                                     SizedBox(height: 3,),
                                     Row(
                                       children: [
                                         Text("04 ", style: TextStyle(
                                           color: Color2,
                                           fontSize: 18
                                         ),
                                         ),
                                         Text(
                                           translate('properties_detail_page.bedrooms'),
                                           style: TextStyle(
                                             color: Color2,
                                             fontSize: 18
                                         ),
                                         ),
                                       ],
                                     )
                                   ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child:Center(child: FaIcon(FontAwesomeIcons.bath, color: Colors.grey.shade500, size: 22,)),
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Text("02 ", style: TextStyle(
                                              color: Color2,
                                              fontSize: 18
                                          ),
                                          ),
                                          Text(
                                            translate('properties_detail_page.bathrooms'),
                                            style: TextStyle(
                                              color: Color2,
                                              fontSize: 18
                                          ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                       child: Icon(Icons.directions_car_outlined, color: Colors.grey.shade500, size: 28,),
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Text("01 ", style: TextStyle(
                                              color: Color2,
                                              fontSize: 18
                                          ),
                                          ),
                                          Text(
                                            translate('properties_detail_page.garages'),
                                            style: TextStyle(
                                              color: Color2,
                                              fontSize: 18
                                          ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("50,000 ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                    ),
                    Text("Rs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),
                    ),
                    Text(
                      translate('properties_detail_page.per_month'),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text("Diamond Manor Apartment ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.locationDot, color: Color5, size: 15,),
                    SizedBox(width: 7,),
                    Text(
                      "81-199 E Broadway, Street Haccken Town Syd",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 17,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue.shade800,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text(
                            "Reduced Price",
                            style: TextStyle(
                                color: Color3,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text(
                            "No Fees",
                            style: TextStyle(
                                color: Color3,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.red.shade900,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text(
                            "Featured",
                            style: TextStyle(
                                color: Color3,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.cameraAlt, color: Color3, size: 18,),
                            SizedBox(width: 5,),
                            Text(
                              "2",
                              style: TextStyle(
                                  color: Color3,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Color3,
                  border: Border(
                    top:  BorderSide(width: 0.6, color: Color5),
                    bottom: BorderSide(width: 0.6, color: Color5),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.access_time, color: Color2,),
                        SizedBox(width: 5,),
                        Text(
                          translate('properties_detail_page.last_updated_on'),
                          style: TextStyle(
                              color: Color2,
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          "June 17th, 2022",
                          style: TextStyle(
                              color: Color2,
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          " at ",
                          style: TextStyle(
                              color: Color2,
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          "2:17 pm ",
                          style: TextStyle(
                              color: Color2,
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10,right: 10),
                child: Text(
                  translate('properties_detail_page.description'),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5,right: 10),
                child: Text("boasting full open NYC views."
                    "You need to see the views to believe them."
                    "Minimum condition with new hardwood floor."
                    "Lots of closets plus washer and dryer.",
                  maxLines: 10,
                  style: TextStyle(
                      fontSize: 13
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5,right: 10),
                child: Text(
                  "boasting full open NYC views."
                    "You need to see the views to believe them."
                    "Minimum condition with new hardwood floor."
                    "Lots of closets plus washer and dryer."
                  "boasting full open NYC views."
                      "You need to see the views to believe them."
                      "Minimum condition with new hardwood floor."
                      "Lots of closets plus washer and dryer.",
                  maxLines: 10,
                  style: TextStyle(
                      fontSize: 13
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5,right: 10),
                child: Text(
                  "boasting full open NYC views."
                      "You need to see the views to believe them."
                      "Minimum condition with new hardwood floor."
                      "Lots of closets plus washer and dryer."
                      "boasting full open NYC views."
                      "You need to see the views to believe them."
                      "Minimum condition with new hardwood floor."
                      "Lots of closets plus washer and dryer.",
                  maxLines: 10,
                  style: TextStyle(
                      fontSize: 13
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10,right: 10),
                child: Text(
                  translate('properties_detail_page.features'),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3/2
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.wifi, color: Colors.red,),
                              SizedBox(height: 5,),
                              Text("WiFi",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, bottom: 10,right: 10),
                child: Text(

                  translate('properties_detail_page.details'),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color3,
                    border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     translate('properties_detail_page.property_id'),
                                     style: TextStyle(
                                         fontWeight: FontWeight.w400,
                                         fontSize: 17
                                     ),
                                   ),
                                   Text("PT-665-AXZR",
                                     style: TextStyle(
                                         fontWeight: FontWeight.w400,
                                         fontSize: 17,
                                       color: Colors.grey
                                     ),
                                   ),
                                 ],
                               ),
                                SizedBox(height: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      translate('properties_detail_page.price'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text("50,000 Rs ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              color: Colors.grey
                                          ),
                                        ),
                                        Text(
                                          translate('properties_detail_page.per_month'),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      translate('properties_detail_page.bedrooms'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17
                                      ),
                                    ),
                                    Text("04",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      translate('properties_detail_page.garages'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17
                                      ),
                                    ),
                                    Text("01",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      translate('properties_detail_page.property_size'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17
                                      ),
                                    ),

                                    Text("1,800 Sq Ft",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translate('properties_detail_page.property_type'),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17
                                    ),
                                  ),
                                  Text("Homes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translate('properties_detail_page.currency_type'),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17
                                    ),
                                  ),
                                  Text("PKR (Rs)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translate('properties_detail_page.bathrooms'),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17
                                    ),
                                  ),
                                  Text("02",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translate('properties_detail_page.year_built'),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17
                                    ),
                                  ),
                                  Text("July 2011",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translate('properties_detail_page.land_area'),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17
                                    ),
                                  ),
                                  Text("1,100 Sq Ft",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, bottom: 10,right: 10),
                child: Text(
                  translate('properties_detail_page.listing_address'),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade100
                      ),
                      child: Center(child: FaIcon(FontAwesomeIcons.earth, color: Color5,)),
                    ),
                    SizedBox(width: 3,),
                    Text(
                      translate('properties_detail_page.state'),
                    style: TextStyle(
                      color: Color2,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    ),
                    ),
                  Text("Colorado",
                    style: TextStyle(
                        color: Color5,
                        fontWeight: FontWeight.w400,
                        fontSize: 18
                    ),
                  ),
                  ],
                )
              ),
              Divider(color: Color5, thickness: 0.85,),
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15, bottom: 10,right: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.shade100
                        ),
                        child: Center(child: FaIcon(FontAwesomeIcons.earth, color: Color5,)),
                      ),
                      SizedBox(width: 3,),
                      Text(
                        translate('properties_detail_page.country'),
                        style: TextStyle(
                            color: Color2,
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                        ),
                      ),
                      Text("United States",
                        style: TextStyle(
                            color: Color5,
                            fontWeight: FontWeight.w400,
                            fontSize: 18
                        ),
                      ),
                    ],
                  )
              ),
              Divider(color: Color5, thickness: 0.85,),

              SizedBox(height: 30,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MapScreen()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.locationDot, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.address'),
                style: TextStyle(
                  color: Color2,
                  fontSize: 23
                ),
                ),
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color3,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.video, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.virtual_tour'),
                  style: TextStyle(
                      color: Color2,
                      fontSize: 23
                  ),
                )
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> WhatsNearByPage()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.tealAccent.shade700,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.locationArrow, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.whats_nearby'),
                  style: TextStyle(
                      color: Color2,
                      fontSize: 23
                  ),
                ),
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AttachmentsListPage()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.paperclip, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.attachments'),
                  style: TextStyle(
                      color: Color2,
                      fontSize: 23
                  ),
                ),
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FloorPlansPage()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.map, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.floor_plans'),
                  style: TextStyle(
                      color: Color2,
                      fontSize: 23
                  ),
                ),
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MortageCalculatorPage()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent.shade400,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.calculator, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.mortage_calculator'),
                  style: TextStyle(
                      color: Color2,
                      fontSize: 23
                  ),
                ),
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ScheduleATour()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen.shade700,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.calendarDays, color: Color3,)),
                ),
                title: Text(
                  translate('properties_detail_page.schedule_a_tour'),
                  style: TextStyle(
                      color: Color2,
                      fontSize: 23
                  ),
                ),
              ),
              Divider(color: Color5, thickness: 0.85,),
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RatingsPage()));
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color3,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Color2,),
                  ),
                ),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.solidStar, color: Color3, size: 20,)),
                ),
                title:
                Container(
                  height: 35,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("5.0 ",
                          maxLines: 2,
                          style: TextStyle(
                              color: Color2,
                              fontSize: 23
                          ),
                        ),
                        Text(
                          translate('properties_detail_page.avarage_based_on'),
                          maxLines: 2,
                          style: TextStyle(
                              color: Color2,
                              fontSize: 23
                          ),
                        ),
                        Text("1 ",
                          maxLines: 2,
                          style: TextStyle(
                              color: Color2,
                              fontSize: 23
                          ),
                        ),
                        Text(
                          translate('properties_detail_page.rating'),
                          maxLines: 2,
                          style: TextStyle(
                              color: Color2,
                              fontSize: 23
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              Divider(color: Color5, thickness: 0.85,),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color3,
                    border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Column(
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
                                      Text(
                                        "Alizey Jack",
                                        style: TextStyle(
                                            color: Color2,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          FaIcon(FontAwesomeIcons.locationDot, color: Color1, size: 15,),
                                          SizedBox(width: 4,),
                                          Container(
                                            //color: Color1,
                                            width: 270,
                                            child: Text(
                                              "81-199 E Broadway, Street Haccken Town Syd",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: Color2,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          FaIcon(FontAwesomeIcons.solidEnvelope, color: Color1, size: 15,),
                                          SizedBox(width: 4,),
                                          Text(
                                            "george@gmail.com",
                                            style: TextStyle(
                                                color: Color2,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color1,
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                translate('properties_detail_page.contact'),
                                style: TextStyle(
                                    color: Color3,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                " Alizey Jack",
                                style: TextStyle(
                                    color: Color3,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    color: Color3,
                    border: Border(
                      top:  BorderSide(width: 0.2, color: Color1),

                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 180,
                       height: 40,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(4),
                           border: Border.all(color: Color4)
                       ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.whatsapp, color: Color4, size: 22, ),
                             SizedBox(width: 4,),
                             Text(
                               translate('properties_detail_page.chat'),
                               style: TextStyle(
                                   color: Color4,
                                   fontSize: 20,
                                   fontWeight: FontWeight.w500
                               ),
                             )

                           ],
                         ),
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color1,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_in_talk, color: Color3, size: 18, ),
                            SizedBox(width: 4,),
                            Text(
                              translate('properties_detail_page.call'),
                              style: TextStyle(
                                  color: Color3,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}


