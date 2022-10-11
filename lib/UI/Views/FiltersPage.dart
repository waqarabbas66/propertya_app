import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:propertya_app/Utils/Constants.dart';

class FiltersPage extends StatefulWidget {

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  List<bool> purchaseType = [true, false, false];
  List<bool> bedType = [true, false, false, false, false, false];
  List<bool> bathroomType = [true, false, false, false, false, false];
  bool isChecked = false;
  String propertyType = 'Apartment & Unit';
  RangeValues _rangeSliderDiscreteValues = const RangeValues(0, 0);
  RangeValues _rangeSliderDiscreteValues1 = const RangeValues(0, 0);
  double _currentSliderValue = 20;
  int _selectedFruit = 0;
  double _kItemExtent = 32.0;
  List<String> _fruitNames = <String>[
    'Select an option',
    'AUD',
    'EUR',
    'PKR',
    'GBP',
    'SAR',
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color3),
        title: AutoSizeText(
          translate('filter_page.filters'),
          style: TextStyle(
              color: Color3,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
        backgroundColor: Color2,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 17, bottom: 10),
            child: InkWell(
              onTap: (){

              },
              child: AutoSizeText(
                translate('filter_page.reset'),
                maxLines: 2,
              style: TextStyle(
                color: Color1,
                fontWeight: FontWeight.w500,
                fontSize: 22
              ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          translate('filter_page.search_filters'),
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500
                          ),
                        ),

                        Container(
                          width: 120,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color4,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: AutoSizeText(
                              translate('filter_page.near_me'),
                              style: TextStyle(
                                  color: Color3,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 90,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      FaIcon(FontAwesomeIcons.mapMarkedAlt, color: Color5, size: 20,),
                                      AutoSizeText(
                                        translate('filter_page.radius_in_km'),
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color2,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Expanded(
                                    child: Container(
                                      height: 80,
                                      color: Color3,
                                      child: Slider(
                                        value: _currentSliderValue,
                                        max: 100,
                                        divisions: 5,
                                        label: _currentSliderValue.round().toString(),
                                        onChanged: (double value) {
                                          setState(() {
                                            _currentSliderValue = value;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  ToggleButtons(
                    renderBorder: false,
                    selectedColor: Colors.white,
                    disabledColor: Colors.black,
                    highlightColor: Color1,
                    fillColor: Color1,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                    isSelected: purchaseType,
                    children: [
                      SizedBox(
                        height: 36,
                        width: 130,
                        child: Center(
                            child: AutoSizeText(
                          translate('filter_page.any'),
                              maxLines: 2,
                        )
                        ),
                      ),
                      SizedBox(
                        height: 36,
                        width: 130,
                        child: Center(child: AutoSizeText(
                          translate('filter_page.for_rent'),
                          maxLines: 2,
                        )),
                      ),
                      SizedBox(
                        height: 36,
                        width: 130,
                        child: Center(child: AutoSizeText(
                          translate('filter_page.for_sale'),
                          maxLines: 2,
                        )),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        var cursor = purchaseType.length - 1;
                        while (cursor >= 0) {
                          if (cursor == index) {
                            purchaseType[index] = !purchaseType[index];
                          } else {
                            purchaseType[cursor] = false;
                          }
                          cursor--;
                        }
                        // isSelected[index] = !isSelected[index];
                      });
                    },
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 90,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      FaIcon(FontAwesomeIcons.search, color: Color5, size: 20,),
                                      AutoSizeText(
                                        translate('filter_page.keyword'),
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Expanded(
                                    child: Container(
                                      height: 80,
                                      color: Color3,
                                      child: Center(
                                        child: TextFormField(
                                          keyboardType: TextInputType.name,
                                          //controller: name,
                                          style: TextStyle(color: Color2,fontWeight: FontWeight.bold),
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Color1, width: 0.0)
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Color1, width: 0.0)
                                            ),
                                            labelStyle: TextStyle(color: Color2, fontWeight: FontWeight.w400, fontSize: 20),

                                          ),
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    decoration: BoxDecoration(
                        color: Color5.shade50,
                        border: Border.all(color: Color5.shade300)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.homeAlt, color: Color5, size: 20,),
                              AutoSizeText(
                                translate('filter_page.property_type'),
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              color: Color3,
                                              border: Border.all(color: Color5.shade300),
                                              borderRadius: BorderRadius.circular(300),
                                              image: DecorationImage(
                                                  image: AssetImage("assets/house.png")
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        AutoSizeText("Homes")
                                      ],
                                    )
                                );
                              }),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FilterChip(
                                    label: AutoSizeText(
                                      "Hot Offer",
                                      maxLines: 2,
                                      style:
                                    TextStyle(
                                        fontSize: 15
                                    ),),
                                    backgroundColor: Color5.shade100,
                                    shape: StadiumBorder(side: BorderSide(color: Color5.shade400)),
                                    onSelected: (bool value) {print("selected");},
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.gear, color: Color5, size: 20,),
                        AutoSizeText(
                          translate('filter_page.property_status'),
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 22,
                              color: Color2,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FilterChip(
                              label: AutoSizeText(
                                "Hot Offer",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 15
                              ),),
                              backgroundColor: Color5.shade100,
                              shape: StadiumBorder(side: BorderSide(color: Color5.shade400)),
                              onSelected: (bool value) {print("selected");},
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.tag, color: Color5, size: 20,),
                            AutoSizeText(
                              translate('filter_page.price'),
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color2,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            _showDialog(
                              CupertinoPicker(
                                magnification: 1.22,
                                squeeze: 1.2,
                                useMagnifier: true,
                                itemExtent: _kItemExtent,
                                // This is called when selected item is changed.
                                onSelectedItemChanged: (int selectedItem) {
                                  setState(() {
                                    _selectedFruit = selectedItem;
                                  });
                                },
                                children:
                                List<Widget>.generate(_fruitNames.length, (int index) {
                                  return Center(
                                    child: Text(
                                      _fruitNames[index],
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                          child: Text(_fruitNames[_selectedFruit],
                            style: TextStyle(
                                fontSize: 20,
                                color: Color5.shade400,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                      child: Container(
                        height: 60,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 60,
                                color: Color3,
                                child: Center(
                                  child: Center(
                                      child: Text( _rangeSliderDiscreteValues1.start.round().toString(),
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color2,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Text(" - ",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 60,
                                color: Color3,
                                child: Center(
                                  child: Center(
                                      child: Text(_rangeSliderDiscreteValues1.end.round().toString(),
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color2,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  RangeSlider(
                    values: _rangeSliderDiscreteValues1,
                    min: 0,
                    max: 10000,
                    divisions: 10000,
                    // labels: RangeLabels(
                    //   _rangeSliderDiscreteValues.start.round().toString(),
                    //   _rangeSliderDiscreteValues.end.round().toString(),
                    // ),
                    onChanged: (values) {
                      setState(() {
                        _rangeSliderDiscreteValues1 = values;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.zoom_out_map, color: Color5, size: 20,),
                            Row(
                              children: [
                                AutoSizeText(
                                  translate('filter_page.area_size'),
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color2,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                AutoSizeText(
                                  "  (SqFt)",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color2,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                      child: Container(
                        height: 60,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 60,
                                color: Color3,
                                child: Center(
                                  child: Center(
                                      child: Text( _rangeSliderDiscreteValues.start.round().toString(),
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color2,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Text(" - ",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 60,
                                color: Color3,
                                child: Center(
                                  child: Center(
                                      child: Text(_rangeSliderDiscreteValues.end.round().toString(),
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color2,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  RangeSlider(
                    values: _rangeSliderDiscreteValues,
                    min: 0,
                    max: 10000,
                    divisions: 10000,
                    // labels: RangeLabels(
                    //   _rangeSliderDiscreteValues.start.round().toString(),
                    //   _rangeSliderDiscreteValues.end.round().toString(),
                    // ),
                    onChanged: (values) {
                      setState(() {
                        _rangeSliderDiscreteValues = values;
                      });
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.locationDot, color: Color5, size: 20,),
                            AutoSizeText(
                              translate('filter_page.location'),
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color2,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16,right:16,bottom: 16),
                    child: DropdownButtonFormField<dynamic>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: translate('filter_page.location'),
                      ),

                      // value: controller.selectedDeliveryType,
                      // onChanged: (value) {
                      //   controller.selectedDeliveryType=value;
                      //   controller.selectedDeliveryTypeId= controller.deliveryTypes.indexOf(controller.selectedDeliveryType!) +1;
                      // },
                      // items:controller.deliveryTypes.map((value) {
                      //   return  DropdownMenuItem<String>(
                      //     value: value,
                      //     child: Row(
                      //       children: <Widget>[
                      //         Text(
                      //           value,
                      //           style: TextStyle(color: Color2, fontWeight: FontWeight.bold, fontSize: 15),
                      //         ),
                      //         //user.icon,
                      //         //SizedBox(width: MediaQuery.of(context).size.width*0.71,),
                      //       ],
                      //     ),
                      //   );
                      // }).toList(),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.bed, color: Color5, size: 20,),
                            AutoSizeText(
                              translate('filter_page.bedrooms'),
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color2,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ToggleButtons(
                    renderBorder: false,
                    selectedColor: Colors.white,
                    disabledColor: Colors.black,
                    highlightColor: Color1,
                    fillColor: Color1,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                    isSelected: bedType,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 55,
                        child: Center(child: Text(
                          translate('filter_page.any'),
                        )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 55,
                        child: Center(child: Text('1+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('2+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('3+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('4+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('5+')),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        var cursor = bedType.length - 1;
                        while (cursor >= 0) {
                          if (cursor == index) {
                            bedType[index] = !bedType[index];
                          } else {
                            bedType[cursor] = false;
                          }
                          cursor--;
                        }
                        // isSelected[index] = !isSelected[index];
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.bath, color: Color5, size: 20,),
                            AutoSizeText(
                              translate('filter_page.bathrooms'),
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color2,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ToggleButtons(
                    renderBorder: false,
                    selectedColor: Colors.white,
                    disabledColor: Colors.black,
                    highlightColor: Color1,
                    fillColor: Color1,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                    isSelected: bathroomType,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 55,
                        child: Center(child: Text(
                          translate('filter_page.any'),
                        )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 55,
                        child: Center(child: Text('1+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('2+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('3+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('4+')),
                      ),
                      SizedBox(
                        height: 40,
                        width: 65,
                        child: Center(child: Text('5+')),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        var cursor = bathroomType.length - 1;
                        while (cursor >= 0) {
                          if (cursor == index) {
                            bathroomType[index] = !bathroomType[index];
                          } else {
                            bathroomType[cursor] = false;
                          }
                          cursor--;
                        }
                        // isSelected[index] = !isSelected[index];
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AutoSizeText(
                              translate('filter_page.filter_by_features'),
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color2,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height /1.7,
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
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.24_hour_security'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.balcony'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.fire_alarm'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.gym'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.kitchen'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.lawn'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.swimming_pool'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.wifi'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
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

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.air_conditioning'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.central_heating'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.garage'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.home_theater'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.laundry'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.refrigerator'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.washer'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        translate('filter_page.window_covering'),
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color2,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 60,),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color1,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                      child: Text(
                        translate('filter_page.see_result'),
                        style: TextStyle(
                            color: Color3,
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                ),
              ),
            ),
          ],
        )
              ///Filter Chips
              // Padding(
              //   padding: const EdgeInsets.all(3.0),
              //   child: Container(
              //       width: MediaQuery.of(context).size.width,
              //       height: 50,
              //       //color: Colors.white12,
              //       child: controller.buildChips(context)
              //   ),
              // ),
          ),
    );
  }
/// Filter Chips
  // Widget buildChips(BuildContext context) {
  //   List<Widget> chips =[];
  //
  //   for (int i = 0; i < categories.length; i++) {
  //     _selected.add(false);
  //     FilterChip filterChip = FilterChip(
  //       selected: _selected[i],
  //       label: Text(categories[i], style: TextStyle(color: Color6, fontWeight: FontWeight.bold)),
  //       // avatar: FlutterLogo(),
  //       elevation: 5,
  //       pressElevation: 5,
  //       //shadowColor: Colors.teal,
  //       backgroundColor: Color2,
  //       selectedColor: Color1,
  //       onSelected: (bool selected) {
  //         for(int j=0;j<_selected.length;j++){
  //           if(_selected[j]){
  //             _selected[j]=false;
  //           }
  //         }
  //         _selected[i] = selected;
  //         if(_selected[i]){
  //
  //           Utils.isInternetAvailable().then((result){
  //             if(result){
  //               filteredList.clear();
  //               for(Donation d in foodRequests){
  //                 if(d.category==i+1){
  //                   filteredList.add(d);
  //                 }
  //               }
  //             }else{
  //               Utils.showError(context, "Network Error");
  //             }
  //           });
  //         }else{
  //           filteredList.clear();
  //           filteredList.assignAll(foodRequests);
  //           // WidgetsBinding.instance
  //           //     .addPostFrameCallback((_) => _refreshIndicatorKey.currentState.show());
  //         }
  //
  //
  //       },
  //     );
  //
  //     chips.add(Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 10),
  //         child: filterChip
  //     ));
  //   }
  //
  //   return ListView(
  //     // This next line does the trick.
  //     scrollDirection: Axis.horizontal,
  //     children: chips,
  //   );
  // }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          // The Bottom margin is provided to align the popup above the system navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            top: false,
            child: child,
          ),
        ));
  }


}
