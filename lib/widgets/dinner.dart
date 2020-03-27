import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class DinnerMenuXD extends StatefulWidget{

  @override
  State createState() {
    return _DinnerMenuXDState();
  }
}

class _DinnerMenuXDState extends State<DinnerMenuXD> {

  List dinnerList = [
    new Food('img/dinner2.png', 'Panner Butter Masala', 'Dinner , Eastern', '50', 'DINNERON', '4.5', '12 min', '25'),
    new Food('img/dinner1.png', 'Butter Roti', 'Veg', '40', 'DAILYDINNER', '4.0', '10 min', '5'),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.safeBlockVertical * 16,
      child: ListView.builder(
        itemCount: 2,
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
                            child: Image.asset('${dinnerList[index].image}',fit: BoxFit.cover,))
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
                            '${dinnerList[index].name}',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                                fontSize: SizeConfig.safeBlockHorizontal * 3.4
                            ),
                          ),
                          Text(
                            '${dinnerList[index].type}',
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
                                '${dinnerList[index].discount}% off',
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
                                'Use coupon ${dinnerList[index].coupon}',
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
                                '${dinnerList[index].rating}',
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
                                '${dinnerList[index].time}',
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
                                '\$ ${dinnerList[index].price}',
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