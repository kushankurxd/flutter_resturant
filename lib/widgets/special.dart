import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class SpecialMenuXD extends StatefulWidget{

  @override
  State createState() {
    return _SpecialMenuXDState();
  }
}

class _SpecialMenuXDState extends State<SpecialMenuXD> {


  List specialFoodList = [
    new Food('img/specialfood1.png', 'Egg Roll', 'Snacks', '4', 'EATSNACK', '4.0', '10 min', '10'),
    new Food('img/specialfood2.png', 'Chicken Lollipop', 'Snacks', '5', 'EATSNACK', '4.0', '10 min', '25'),
  ];


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.safeBlockVertical * 22,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: specialFoodList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 4,
                  top: SizeConfig.safeBlockHorizontal * 2),
              child: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2)
                      ),
                      height: SizeConfig.safeBlockVertical * 22,
                      width: SizeConfig.safeBlockHorizontal * 68,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2),
                          child: Image.asset('${specialFoodList[index].image}',fit: BoxFit.cover,))
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(SizeConfig.safeBlockHorizontal * 2),
                              bottomRight: Radius.circular(SizeConfig.safeBlockHorizontal * 2)),
                          color: Colors.black.withOpacity(0.2)
                      ),
                      height: SizeConfig.safeBlockVertical * 8,
                      width: SizeConfig.safeBlockHorizontal * 68,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 3),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  '${specialFoodList[index].name}',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.2,
                                      fontSize: SizeConfig.safeBlockHorizontal * 3.4
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '${specialFoodList[index].type}',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: SizeConfig.safeBlockHorizontal * 3
                                      ),
                                    ),
                                    SizedBox(width: SizeConfig.safeBlockHorizontal * 3.4,),
                                    Icon(Icons.timer,color: Colors.white,size: SizeConfig.safeBlockHorizontal * 2.4,),
                                    SizedBox(width: SizeConfig.safeBlockHorizontal,),
                                    Text(
                                      '${specialFoodList[index].time}',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: SizeConfig.safeBlockHorizontal * 3
                                      ),
                                    )
                                  ],
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            Text(
                              '\$ ${specialFoodList[index].price}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockHorizontal * 3,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}