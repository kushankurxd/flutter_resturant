import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';


class SubscriptionXD extends StatefulWidget{

  @override
  State createState() {
    return _SubscriptionXDState();
  }
}

class _SubscriptionXDState extends State<SubscriptionXD> {

  List _paymentList = [
    new Payment('img/coupon2.png', 'Google pay'),
    new Payment('img/coupon4.png', 'Phone Pe'),
    new Payment('img/amazon.png', 'Amazon Pay'),
  ];


  static List _planMenuList = [
    new PlanMenu('Veg Meal', '1'),
    new PlanMenu('Chicken Meal', '1'),
  ];
  static List _planMenuList1 = [
    new PlanMenu('Veg Meal', '2'),
    new PlanMenu('Chicken Meal', '1'),
    new PlanMenu('Egg Meal', '3'),
  ];
  static List _planMenuList2 = [
    new PlanMenu('Veg Meal', '4'),
    new PlanMenu('Chicken Meal', '2'),
    new PlanMenu('Fish Meal', '2'),
    new PlanMenu('Special Meal', '1'),
  ];
  static List _planMenuList3 = [
    new PlanMenu('Veg Meal', '5'),
    new PlanMenu('Chicken Meal', '1'),
    new PlanMenu('Fish Meal', '2'),
    new PlanMenu('Egg Meal', '3'),
    new PlanMenu('Special Meal', '2'),
  ];
  static List _planMenuList4 = [
    new PlanMenu('Veg Meal', '5'),
    new PlanMenu('Chicken Meal', '3'),
    new PlanMenu('Fish Meal', '2'),
    new PlanMenu('Egg Meal', '4'),
    new PlanMenu('Mutton Meal', '4'),
    new PlanMenu('Special Meal', '2'),
  ];
  static List _planMenuList5 = [
    new PlanMenu('Veg Meal', '11'),
    new PlanMenu('Chicken Meal', '8'),
    new PlanMenu('Fish Meal', '4'),
    new PlanMenu('Egg Meal', '6'),
    new PlanMenu('Mutton Meal', '2'),
    new PlanMenu('Special Meal', '4'),
  ];

  List _planList = [
    new Plan('0', '2', _planMenuList),
    new Plan('10', '7', _planMenuList1),
    new Plan('15', '15', _planMenuList2),
    new Plan('25', '21', _planMenuList3),
    new Plan('30', '28', _planMenuList4),
    new Plan('40', '64', _planMenuList5),
  ];


  _setSelected(index, days) {
    setState(() {
      planSelected = index;
      totalPoints = days;
    });
  }






  int _index = 0;

  _setIndex(index) {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 6.4),
            child: Column(
              children: <Widget>[


                //AppBar
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 6.4,
                ),
                Text(
                  'Plans',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: SizeConfig.safeBlockHorizontal * 8.2,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4
                  ),
                ),


                //Selection between student,employee,others
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 3.4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    GestureDetector(
                      onTap: () {
                        _setIndex(0);
                      },
                      child: AnimatedSwitcher(
                        transitionBuilder: (Widget child,
                            Animation<double> animation) {
                          return ScaleTransition(
                              child: child, scale: animation);
                        },
                        duration: Duration(milliseconds: 200),
                        child: _index == 0 ? Column(
                          children: <Widget>[
                            Text(
                              'Student',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal *
                                      4.4,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  letterSpacing: 0.4
                              ),
                            ),
                            CircleAvatar(
                              radius: SizeConfig.safeBlockHorizontal * 0.8,
                            )
                          ],
                        ) :

                        Text(
                          'Student',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.safeBlockHorizontal * 4,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                              letterSpacing: 0.4
                          ),
                        ),
                      ),
                    ),


                    SizedBox(width: SizeConfig.safeBlockHorizontal * 8.4,),
                    GestureDetector(
                      onTap: () {
                        _setIndex(1);
                      },
                      child: AnimatedSwitcher(
                        transitionBuilder: (Widget child,
                            Animation<double> animation) {
                          return ScaleTransition(
                              child: child, scale: animation);
                        },
                        duration: Duration(milliseconds: 200),
                        child: _index == 1 ? Column(
                          children: <Widget>[
                            Text(
                              'Employee',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal *
                                      4.4,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  letterSpacing: 0.4
                              ),
                            ),
                            CircleAvatar(
                              radius: SizeConfig.safeBlockHorizontal * 0.8,
                            )
                          ],
                        ) :

                        Text(
                          'Employee',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.safeBlockHorizontal * 4,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                              letterSpacing: 0.4
                          ),
                        ),
                      ),
                    ),


                    SizedBox(width: SizeConfig.safeBlockHorizontal * 8.4,),
                    GestureDetector(
                      onTap: () {
                        _setIndex(2);
                      },
                      child: AnimatedSwitcher(
                        transitionBuilder: (Widget child,
                            Animation<double> animation) {
                          return ScaleTransition(
                              child: child, scale: animation);
                        },
                        duration: Duration(milliseconds: 200),
                        child: _index == 2 ? Column(
                          children: <Widget>[
                            Text(
                              'Others',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal *
                                      4.4,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  letterSpacing: 0.4
                              ),
                            ),
                            CircleAvatar(
                              radius: SizeConfig.safeBlockHorizontal * 0.8,
                            )
                          ],
                        ) :

                        Text(
                          'Others',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.safeBlockHorizontal * 4,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                              letterSpacing: 0.4
                          ),
                        ),
                      ),
                    ),

                  ],
                ),


                //Plans
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2.4,
                ),
                SizedBox(
                    height: SizeConfig.safeBlockVertical * 54,
                    child: GridView.builder(
                        itemCount: _planList.length,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              _setSelected(
                                  index, int.parse(_planList[index].validity));
                            },
                            child: Transform.scale(
                              scale: planSelected == index ? 1.1 : 1,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.safeBlockHorizontal * 2),
                                child: Container(
                                  width: SizeConfig.safeBlockHorizontal * 40,
                                  height: SizeConfig.safeBlockVertical * 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.safeBlockHorizontal * 4),
                                      border: Border.all(
                                          color: planSelected == index ? Colors
                                              .orange[200] : Colors.grey[200]
                                      )
                                  ),
                                  child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 200),
                                    child: planSelected == index ?
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: SizeConfig.safeBlockVertical * 5,
                                          bottom: SizeConfig.safeBlockVertical *
                                              4),
                                      child: ListView.builder(
                                          itemCount: _planList[index].planMenu
                                              .length,
                                          itemBuilder: (context, index1) {
                                            return Center(
                                              child: Text(
                                                '${_planList[index]
                                                    .planMenu[index1]
                                                    .count} x ${_planList[index]
                                                    .planMenu[index1].name}',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: SizeConfig
                                                        .safeBlockHorizontal * 3
                                                ),
                                              ),
                                            );
                                          }
                                      ),
                                    )
                                        :
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: <Widget>[
                                        Text(
                                          '\$${_planList[index].price}',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.2,
                                              fontWeight: FontWeight.w500,
                                              fontSize: SizeConfig
                                                  .safeBlockHorizontal * 6.4
                                          ),
                                        ),
                                        Text(
                                          '${_planList[index].validity} days',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.2,
                                              fontWeight: FontWeight.w500,
                                              fontSize: SizeConfig
                                                  .safeBlockHorizontal * 3.2
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    )
                ),

                SizedBox(height: SizeConfig.safeBlockVertical * 7.4,),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 8.4,
                  child: ListView.builder(
                      itemCount: _paymentList.length,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: SizeConfig
                              .safeBlockHorizontal * 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.safeBlockHorizontal * 4),
                                border: Border.all(color: Colors.grey[200])
                            ),
                            width: SizeConfig.screenWidth * 0.66,
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.safeBlockHorizontal *
                                    4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: SizeConfig.safeBlockHorizontal *
                                          0.3,),
                                    Image.asset(
                                      '${_paymentList[index].image}',
                                      width: SizeConfig.safeBlockHorizontal *
                                          10,
                                      height: SizeConfig.safeBlockVertical *
                                          5.2,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.safeBlockHorizontal *
                                          3,),
                                    Text(
                                      '${_paymentList[index].name}',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        fontSize: SizeConfig
                                            .safeBlockHorizontal * 3.2,
                                      ),
                                    ),
                                  ],
                                ),

                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: SizeConfig.safeBlockHorizontal * 3.2,
                                ),

                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),

                SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                Text(
                  'See terms and condition',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey[400],
                    fontSize: SizeConfig.safeBlockHorizontal * 3,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}