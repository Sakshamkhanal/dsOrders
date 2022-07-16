import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class calander extends StatefulWidget {
  const calander({Key? key}) : super(key: key);

  @override
  State<calander> createState() => _calanderState();
}

class _calanderState extends State<calander> {
   var _selectedDay;
   var _focusedDay;
   var _calendarFormat;
  @override
  void initState() {
   super.initState();
    var _selectedDay  = DateTime.now();
    var _focusedDay = DateTime.now();
    
  }
  Widget build(BuildContext context) {
    return Material(
      child: Container( 
        child:TableCalendar(
        shouldFillViewport: true,
        focusedDay:  DateTime.now(),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        selectedDayPredicate: (day)
        {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay,focusedDay)
        {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        onFormatChanged: (Format)
        {
          if (_calendarFormat != Format)
          {
               setState(() {
            _calendarFormat = Format;
          }
          );
          }
       
        },
        ), 
      ),
    );
  }
}

