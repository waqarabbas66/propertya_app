import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../Utils/Constants.dart';


class MortageCalculatorPage extends StatefulWidget {


  @override
  State<MortageCalculatorPage> createState() => _MortageCalculatorPageState();
}

class _MortageCalculatorPageState extends State<MortageCalculatorPage> {
  // final GlobalKey<TooltipState> tooltipkey1 = GlobalKey<TooltipState>();
  // final GlobalKey<TooltipState> tooltipkey2 = GlobalKey<TooltipState>();
  // final GlobalKey<TooltipState> tooltipkey3 = GlobalKey<TooltipState>();
  // final GlobalKey<TooltipState> tooltipkey4 = GlobalKey<TooltipState>();
  int _selectedFruit = 0;
  double _kItemExtent = 32.0;
  List<String> _fruitNames = <String>[
    'Years',
    'Months',
  ];
  int _selectedFruit1 = 0;
  double _kItemExtent1 = 32.0;
  List<String> _fruitNames1 = <String>[
    'Years',
    'Months',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color2),
        title: Text(
          translate('mortage_calculator_page.mortage_calculator'),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/calculator.png")
                  )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 85, bottom: 10,right: 10),
                child: Row(
                  children: [
                    Text(
                      translate('mortage_calculator_page.initial_value'),
                    style: TextStyle(
                      fontSize: 20,
                      color: Color2,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                    Tooltip(
                      // Provide a global key with the "TooltipState" type to show
                      // the tooltip manually when trigger mode is set to manual.
                      triggerMode: TooltipTriggerMode.tap,
                      showDuration: const Duration(seconds: 2),
                      message:
                      translate('mortage_calculator_page.initial_value_tooltip'),
                      child: FaIcon(FontAwesomeIcons.questionCircle, color:Color5, size: 20),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10, right: 15),
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           color: Color5.shade100,
                           border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                         ),
                         child:  Center(child: FaIcon(FontAwesomeIcons.dollarSign, color:Color2, size: 20,)),
                       ),
                     ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 60,
                          color: Color3,
                          child: Center(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
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
                      ),
                    ],
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10,right: 10),
                child: Row(
                  children: [
                    Text(
                      translate('mortage_calculator_page.down_payment'),
                      style: TextStyle(
                          fontSize: 20,
                          color: Color2,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Tooltip(
                      // Provide a global key with the "TooltipState" type to show
                      // the tooltip manually when trigger mode is set to manual.
                      triggerMode: TooltipTriggerMode.tap,
                      showDuration: const Duration(seconds: 2),
                      message:
                      translate('mortage_calculator_page.down_payment_tooltip'),
                      child: FaIcon(FontAwesomeIcons.questionCircle, color:Color5, size: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10, right: 15),
                  child: Container(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color5.shade100,
                              border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                            ),
                            child:  Center(child: FaIcon(FontAwesomeIcons.dollarSign, color:Color2, size: 20,)),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 60,
                            color: Color3,
                            child: Center(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
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
                        ),
                      ],
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10,right: 10),
                child: Row(
                  children: [
                    Text(
                      translate('mortage_calculator_page.interest_rate'),
                      style: TextStyle(
                          fontSize: 20,
                          color: Color2,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Tooltip(
                      // Provide a global key with the "TooltipState" type to show
                      // the tooltip manually when trigger mode is set to manual.
                      triggerMode: TooltipTriggerMode.tap,
                      showDuration: const Duration(seconds: 2),
                      message:
                      translate('mortage_calculator_page.interest_rate_tooltip'),
                      child: FaIcon(FontAwesomeIcons.questionCircle, color:Color5, size: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10, right: 15),
                  child: Container(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            color: Color3,
                            child: Center(
                              child: InkWell(
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
                                      color: Color2,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              )
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
                              child: TextFormField(
                                keyboardType: TextInputType.number,
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
                        ),
                      ],
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10,right: 10),
                child: Row(
                  children: [
                    Text(
                      translate('mortage_calculator_page.loan_or_mortage_term'),
                      style: TextStyle(
                          fontSize: 20,
                          color: Color2,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Tooltip(
                      // Provide a global key with the "TooltipState" type to show
                      // the tooltip manually when trigger mode is set to manual.
                      triggerMode: TooltipTriggerMode.tap,
                      showDuration: const Duration(seconds: 2),
                      message:
                      translate('mortage_calculator_page.loan_or_mortage_tooltip'),
                      child: FaIcon(FontAwesomeIcons.questionCircle, color:Color5, size: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10, right: 15),
                  child: Container(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            color: Color3,
                            child: Center(
                                child: InkWell(
                                  onTap: (){
                                    _showDialog1(
                                      CupertinoPicker(
                                        magnification: 1.22,
                                        squeeze: 1.2,
                                        useMagnifier: true,
                                        itemExtent: _kItemExtent1,
                                        // This is called when selected item is changed.
                                        onSelectedItemChanged: (int selectedItem) {
                                          setState(() {
                                            _selectedFruit1 = selectedItem;
                                          });
                                        },
                                        children:
                                        List<Widget>.generate(_fruitNames1.length, (int index) {
                                          return Center(
                                            child: Text(
                                              _fruitNames1[index],
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                  child: Text(_fruitNames1[_selectedFruit1],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color2,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                )
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
                              child: TextFormField(
                                keyboardType: TextInputType.number,
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
                        ),
                      ],
                    ),
                  )
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color1,
                        borderRadius: BorderRadius.circular(2)
                    ),
                    child: Center(
                      child: Text(
                        translate('mortage_calculator_page.generate_report'),
                        style: TextStyle(
                            color: Color3,
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color3,
                    border: Border.all(color: Colors.lightBlue.shade200, width: 0.75),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Color3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      translate('mortage_calculator_page.the_remaining_dept_is'),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      translate('mortage_calculator_page.the_monthly_rate_is'),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      translate('mortage_calculator_page.there_are'),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      translate('mortage_calculator_page.the_monthly_payment'),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      translate('mortage_calculator_page.total_payment'),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      translate('mortage_calculator_page.total_interest_payment'),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text("\$ 50000",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color2,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text("\$ 168",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color2,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Text("\$ 2467 ",
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 23,
                                              color: Color2,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        Text(
                                          translate('mortage_calculator_page.payment_pending'),
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 23,
                                              color: Color2,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    child: Text("\$ 84250",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color2,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text("\$ 23322590221",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color2,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 35,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text("\$ 23322590221",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color2,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }

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
  void _showDialog1(Widget child) {
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
