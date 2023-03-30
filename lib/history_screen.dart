import 'package:exouss/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/services.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HistoryScreen> {
  late DateTime _selectedDate;
@override
  void initState() {
    super.initState();
    _resetSelectedDate();

}
  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CalendarTimeline(

                showYears: false,




                initialDate: _selectedDate,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 365)),
                onDateSelected: (date) {
                  setState(() {
                    _selectedDate = date;
                  });
                },
                leftMargin: 20,
                shrink: true,




                monthColor: Color(0xFF0F91AB),
                dayColor: Color(0xFF0F91AB),
                dayNameColor: Colors.white,
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Color(0xFF0F91AB),
                dotsColor: Colors.white,
                selectableDayPredicate: (date) => date.day != 23,
                locale: 'en',

              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: double.infinity,
                height: 600,

                decoration: BoxDecoration(
                  color:AppCubit.get(context).isDark?Colors.black: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'Active',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF0F91AB),
                        ),


                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 500,

                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:    ListView.separated(
                          itemBuilder: (context,index)=>    Container(
                            height: 66,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,

                              ),
                              borderRadius: BorderRadius.circular(20),

                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/img_18.png'),
                                    width: 43,
                                    height: 43,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Text(
                                        'Move your Hand',
                                          style:Theme.of(context).textTheme.titleMedium


                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Active',
                                          style:Theme.of(context).textTheme.titleMedium


                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),


                          separatorBuilder: (context,index)=>Container(
                            width: double.infinity,
                            height:AppCubit.get(context).isDark? 10:10,

                            color: AppCubit.get(context).isDark?Colors.black: Colors.grey[200],

                          ),
                          itemCount: 10,
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
    );
  }
}
