import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:propertya_app/UI/Maps/MapScreen.dart';
import 'package:propertya_app/UI/Views/FiltersPage.dart';
import 'package:propertya_app/UI/Views/PropertiesDetailPage.dart';

import '../../Utils/Constants.dart';

class PropertiesListPage extends StatefulWidget {


  @override
  State<PropertiesListPage> createState() => _PropertiesListPageState();
}

class _PropertiesListPageState extends State<PropertiesListPage> {
  bool isFavourite;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          iconTheme: IconThemeData(color: Color3),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/logo.png")
                  )
                ),
              ),
              SizedBox(width: 5,),
              AutoSizeText("PROPERTYA",
                maxLines: 2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 1,
          actions: [
            InkWell(
                onTap: (){
                  onActionSheetPress(context);
                },
                child: FaIcon(FontAwesomeIcons.language, color: Color1, size: 45,)
            )
          ],
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 77.0, left: 10, right: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AutoSizeText("41 ",
                      maxLines: 2,
                      style: TextStyle(
                          color: Color1,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    ),
                    AutoSizeText(
                      translate('properties_list_page.properties'),
                      maxLines: 2,
                      style: TextStyle(
                          color: Color1,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MapScreen()));
                      },
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color3,
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.mapMarkedAlt, color: Color1,),
                            SizedBox(width: 4,),
                            AutoSizeText(
                              translate('properties_list_page.map_view_btn'),
                              maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color2,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        showAnimatedDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              actions: [
                                Container(
                                  width: 300,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap:(){

                                          },
                                          child: Text(
                                            translate('properties_list_page.sort_by'),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color5,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap:(){

                                          },
                                          child: Text(
                                            translate('properties_list_page.newest_to_oldest'),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color2,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap:(){

                                          },
                                          child: Text(
                                            translate('properties_list_page.oldest_to_newest'),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color2,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap:(){

                                          },
                                          child: Text(
                                            translate('properties_list_page.alphabetically_aZ'),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color2,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),

                                        InkWell(
                                          onTap:(){

                                          },
                                          child: Text(
                                            translate('properties_list_page.alphabetically_Za'),

                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color2,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          animationType: DialogTransitionType.slideFromBottom,
                          curve: Curves.fastOutSlowIn,
                          duration: Duration(seconds: 1),
                        );
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color3,
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                        ),
                        child:  Center(child: FaIcon(FontAwesomeIcons.listDots, size: 15,))
                      ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FiltersPage()));
                      },
                      child: Container(
                        width: 70,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color1,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            translate('properties_list_page.filter_btn'),
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 17,
                                color: Color3,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PropertiesDetailPage()));
          },
          child: ListView.builder(itemCount:10,itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade100),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: 160,
                      //: Color4,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 185,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                 fit: BoxFit.cover,
                                 image: AssetImage("assets/drawingroom.jpg")
                               )
                             ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7.0, top: 7, bottom: 7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: ClipPath(
                                        clipper: ArcClipper(),
                                        child: Container(
                                            width: 40.0,
                                            height: 30.0,
                                            padding: EdgeInsets.all(8.0),
                                            color: Colors.red.shade500,
                                            child: Center(
                                                child: RotationTransition(
                                                turns: new AlwaysStoppedAnimation(55 / 360),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.solidStar,
                                                      color: Color3,
                                                      size: 15,
                                                    ),
                                                  ),
                                                )
                                            ),
                                      ),
                                    ),
                                    ) ,
                                    Container(
                                      width: 110,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.lightGreenAccent.shade700,
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                                      child: Center(
                                        child: AutoSizeText(
                                            translate('properties_list_page.for_sale'),
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Color3,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                          //color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, right: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     children: [
                                       AutoSizeText("50,000 Rs",
                                         maxLines: 2,
                                         style: TextStyle(
                                             color: Color1,
                                             fontSize: 20,
                                             fontWeight: FontWeight.w500
                                         ),),
                                       AutoSizeText(
                                           translate('properties_list_page.per_month'),
                                         maxLines: 2,
                                         style: TextStyle(
                                             color: Color2,
                                             fontSize: 17,
                                             fontWeight: FontWeight.w500
                                         ),
                                       )
                                     ],
                                   ),
                                   InkWell(
                                     onTap: (){
                                     },
                                       child: Icon(isFavourite==true?Icons.favorite:Icons.favorite_border,size: 25,color: Colors.black,)
                                   ),
                                 ],
                               ),
                                 SizedBox(height: 5,),
                                 Container(
                                   //color: Color1,
                                  width: 230,
                                  child: AutoSizeText(
                                    "Diamond Manor Apartment",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.locationDot, color: Color1, size: 15,),
                                    SizedBox(width: 4,),
                                    Container(
                                      //color: Color1,
                                      width: 180,
                                      child: AutoSizeText(
                                        "81-199 E Broadway, Street Haccken Town Syd",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.bed, color: Color1, size: 20,),
                                        SizedBox(width: 2,),
                                        AutoSizeText("03",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        FaIcon(FontAwesomeIcons.bath, color: Color1, size: 15,),
                                        SizedBox(width: 2,),
                                        AutoSizeText("03",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.zoom_out_map, color: Color1, size: 20,),
                                        SizedBox(width: 2,),
                                        AutoSizeText(
                                          "2,400 Sq Ft.   ",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100,
                                      height:30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(color: Color4)
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.whatsapp, color: Color4, size: 22, ),
                                            SizedBox(width: 4,),
                                            AutoSizeText(
                                              translate('properties_list_page.chat'),
                                              style: TextStyle(
                                                  color: Color4,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height:30,
                                      decoration: BoxDecoration(
                                        color: Color1,
                                          borderRadius: BorderRadius.circular(2),

                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone_in_talk, color: Color3, size: 18, ),
                                            SizedBox(width: 4,),
                                            AutoSizeText(
                                                translate('properties_list_page.call'),
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: Color3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),

                        )
                    ),
                  ],
                )
              ),
            );
          }),
        ),
      ),
    );
  }

  void showDemoActionSheet({BuildContext context, Widget child}) {
    showCupertinoModalPopup<String>(
        context: context,
        builder: (BuildContext context) => child).then((String value)
    {
      setState(() {
        changeLocale(context, value);
      });
    });
  }
  void onActionSheetPress(BuildContext context) {
    showDemoActionSheet(
      context: context,
      child: CupertinoActionSheet(
        title: Text(translate('language.selection.title')),
        message: Text(translate('language.selection.message')),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: Text(translate('language.name.en')),
            onPressed: () => Navigator.pop(context, 'en_US'),
          ),
          CupertinoActionSheetAction(
            child: Text(translate('language.name.ar')),
            onPressed: () => Navigator.pop(context, 'ar'),
          ),
          CupertinoActionSheetAction(
            child: Text(translate('language.name.tr')),
            onPressed: () => Navigator.pop(context, 'tr'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text(translate('button.cancel')),
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context, null),
        ),
      ),
    );
  }

}


class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(15.0, 0.0);

    var firstControlPoint = Offset(0.0, 0.0);
    var firstPoint = Offset(0.0, 0.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);
    
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - 10, size.height / 2);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

