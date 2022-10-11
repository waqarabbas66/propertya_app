import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:propertya_app/Utils/Constants.dart';
import 'package:intl/intl.dart';


class ScheduleATour extends StatefulWidget {

  @override
  State<ScheduleATour> createState() => _ScheduleATourState();
}

class _ScheduleATourState extends State<ScheduleATour> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime dateTime = DateTime.now();
  bool showDate = false;
  bool showTime = false;
  bool showDateTime = false;

  // Select for Date
  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }

// Select for Time
  Future<TimeOfDay> _selectTime(BuildContext context) async {
    final selected = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (selected != null && selected != selectedTime) {
      setState(() {
        selectedTime = selected;
      });
    }
    return selectedTime;
  }
  // select date time picker

  Future _selectDateTime(BuildContext context) async {
    final date = await _selectDate(context);
    if (date == null) return;

    final time = await _selectTime(context);

    if (time == null) return;
    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  String getDate() {
    // ignore: unnecessary_null_comparison
    if (selectedDate == null) {
      return 'select date';
    } else {
      return DateFormat('MMM d, yyyy').format(selectedDate);
    }
  }

  String getDateTime() {
    // ignore: unnecessary_null_comparison
    if (dateTime == null) {
      return 'select date timer';
    } else {
      return DateFormat('yyyy-MM-dd HH: ss a').format(dateTime);
    }
  }

  String getTime(TimeOfDay tod) {
    final now = DateTime.now();

    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color2),
        title: Text(
          translate('schedule_a_tour_page.schedule_a_tour'),
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
                                 Text(
                                   translate('schedule_a_tour_page.date'),
                                   style: TextStyle(
                                       fontSize: 20,
                                       color: Color2,
                                       fontWeight: FontWeight.w500
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Expanded(
                                   child: InkWell(
                                     onTap: (){
                                       _selectDate(context);
                                       showDate = true;
                                     },
                                     child: Container(
                                       height: 80,
                                      decoration: BoxDecoration(
                                        color: Color3,
                                        border: Border.all(color: Colors.lightBlue.shade100, width: 0.75),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                       child: Center(child: Text(getDate(),
                                       style: TextStyle(
                                         fontSize: 17,
                                         color: Color2,
                                         fontWeight: FontWeight.w500
                                       ),
                                       )),
                                     ),
                                   ),
                                 )
                           ],
                         ),
                       ),
                     ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translate('schedule_a_tour_page.time'),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 5,),
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    _selectTime(context);
                                    showTime = true;
                                  },
                                  child: Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color3,
                                      border: Border.all(color: Colors.lightBlue.shade100, width: 0.75),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(child: Text(getTime(selectedTime),
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color2,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )),
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
                              Text(
                                translate('schedule_a_tour_page.your_name'),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color2,
                                    fontWeight: FontWeight.w500
                                ),
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
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translate('schedule_a_tour_page.phone'),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 5,),
                              Expanded(
                                child: Container(
                                  height: 80,
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
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                              Text(
                                translate('schedule_a_tour_page.email'),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color2,
                                    fontWeight: FontWeight.w500
                                ),
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 170,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translate('schedule_a_tour_page.your_message'),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 10,),
                              Expanded(
                                child: Container(
                                  height: 190,
                                  color: Color3,
                                  child: TextField(
                                    style: TextStyle(color: Color2, fontWeight: FontWeight.bold),
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    //controller: controller.descriptionTextEditingController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color1,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                      child: Text(
                        translate('schedule_a_tour_page.send_email'),
                        style: TextStyle(
                            color: Color3,
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
