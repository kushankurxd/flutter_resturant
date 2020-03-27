import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class BreakfastMenuXD extends StatefulWidget{

  @override
  State createState() {
    return _BreakfastMenuXDState();
  }
}

class _BreakfastMenuXDState extends State<BreakfastMenuXD> {

  List breakfastFoodList1 = [
    new Food('img/breakfast1.png', 'Salad Omlet', 'Breakfast , Healthy', '30', 'DAILY4', '4.0', '15 min', '10'),
    new Food('img/breakfast2.png', 'Cheese Bread', 'Breakfast , Tasty', '10', 'MORNINGX', '3.4', '10 min', '14'),
  ];

  List breakfastFoodList2 = [
    new Food('img/breakfast3.png', 'Chicken Sausage', 'Non-Veg , Rich', '25', 'MORNINGX', '4.2', '20 min', '25'),
    new Food('img/breakfast4.png', 'Oats - Fruits Mixed', 'Starter , Veg', '30', 'DAILYFOOD', '4.0', '5 min', '15'),
  ];


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.safeBlockVertical * 28,
      child: ListView.builder(
        itemCount: breakfastFoodList1.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 4,
                top: SizeConfig.safeBlockHorizontal * 2),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2)
                        ),
                        height: SizeConfig.safeBlockVertical * 12,
                        width: SizeConfig.safeBlockHorizontal * 26,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2),
                            child: Image.asset('${breakfastFoodList1[index].image}',fit: BoxFit.cover,))
                    ),
                    SizedBox(width: SizeConfig.safeBlockHorizontal * 2.4,),
                    Container(
                      width: SizeConfig.safeBlockHorizontal * 50,
                      height: SizeConfig.safeBlockVertical * 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Text(
                            '${breakfastFoodList1[index].name}',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                                fontSize: SizeConfig.safeBlockHorizontal * 3.4
                            ),
                          ),
                          Text(
                            '${breakfastFoodList1[index].type}',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey[800],
                                fontSize: SizeConfig.safeBlockHorizontal * 3
                            ),
                          ),



                          SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'img/copun.png',
                                width: SizeConfig.safeBlockHorizontal * 3.4,
                              ),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                '${breakfastFoodList1[index].discount}% off',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                '|',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                'Use coupon ${breakfastFoodList1[index].coupon}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: SizeConfig.safeBlockHorizontal * 1.4,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2),
                            child: Container(
                              height: SizeConfig.safeBlockHorizontal * 0.1,
                              color: Colors.grey[400],
                            ),
                          ),

                          SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.star, size: SizeConfig.safeBlockHorizontal * 3,color: Colors.grey[600],),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                '${breakfastFoodList1[index].rating}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                              Text(
                                '.',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),

                              Icon(Icons.timer,color: Colors.black,size: SizeConfig.safeBlockHorizontal * 2.4,),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),

                              Text(
                                '${breakfastFoodList1[index].time}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                              Text(
                                '.',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                              Text(
                                '\$ ${breakfastFoodList1[index].price}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),


                //Secound half
                SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2)
                        ),
                        height: SizeConfig.safeBlockVertical * 12,
                        width: SizeConfig.safeBlockHorizontal * 26,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2),
                            child: Image.asset('${breakfastFoodList2[index].image}',fit: BoxFit.cover,))
                    ),
                    SizedBox(width: SizeConfig.safeBlockHorizontal * 2.4,),
                    Container(
                      width: SizeConfig.safeBlockHorizontal * 50,
                      height: SizeConfig.safeBlockVertical * 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Text(
                            '${breakfastFoodList2[index].name}',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                                fontSize: SizeConfig.safeBlockHorizontal * 3.4
                            ),
                          ),
                          Text(
                            '${breakfastFoodList2[index].type}',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey[800],
                                fontSize: SizeConfig.safeBlockHorizontal * 3
                            ),
                          ),



                          SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'img/copun.png',
                                width: SizeConfig.safeBlockHorizontal * 3.4,
                              ),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                '${breakfastFoodList2[index].discount}% off',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                '|',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                'Use coupon ${breakfastFoodList2[index].coupon}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: SizeConfig.safeBlockHorizontal * 1.4,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2),
                            child: Container(
                              height: SizeConfig.safeBlockHorizontal * 0.1,
                              color: Colors.grey[400],
                            ),
                          ),

                          SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.star, size: SizeConfig.safeBlockHorizontal * 3,color: Colors.grey[600],),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),
                              Text(
                                '${breakfastFoodList2[index].rating}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                              Text(
                                '.',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),

                              Icon(Icons.timer,color: Colors.black,size: SizeConfig.safeBlockHorizontal * 2.4,),
                              SizedBox(width: SizeConfig.safeBlockHorizontal,),

                              Text(
                                '${breakfastFoodList2[index].time}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                              Text(
                                '.',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              ),

                              SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                              Text(
                                '\$ ${breakfastFoodList2[index].price}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: SizeConfig.safeBlockHorizontal * 3
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}