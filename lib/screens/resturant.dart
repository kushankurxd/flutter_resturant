import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresturant/screens/cart.dart';
import 'package:flutterresturant/screens/homeTab.dart';
import 'package:flutterresturant/screens/subscriptionTab.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class ResturantXD extends StatefulWidget{

  @override
  State createState() {
    return _ResturantXDState();
  }

}

class _ResturantXDState extends State<ResturantXD> {

  _setCurrentIndex(index){
    setState(() {
      currentIndex = index;
    });
  }

  List widgetList = [
    HomeTabXD(),
    CartXD(),
    SubscriptionXD(),
  ];


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[

          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child:  widgetList[currentIndex],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: SizeConfig.safeBlockVertical * 6.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(SizeConfig.safeBlockVertical * 4,),
                    topRight: Radius.circular(SizeConfig.safeBlockVertical * 4)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    GestureDetector(
                      onTap: (){
                        _setCurrentIndex(0);
                      },
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          return ScaleTransition(child: child, scale: animation);
                        },
                        child: currentIndex == 0 ? CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18,
                            child: Icon(Icons.home,size: SizeConfig.safeBlockHorizontal * 4.2,color: Colors.white,)) :
                        Icon(Icons.home,size: SizeConfig.safeBlockHorizontal * 5.2,),
                      ),
                    ),



                    GestureDetector(
                      onTap: (){
                        _setCurrentIndex(1);
                      },
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          return ScaleTransition(child: child, scale: animation);
                        },
                        child: currentIndex == 1 ? CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18,
                            child: Icon(Icons.shopping_basket,size: SizeConfig.safeBlockHorizontal * 4.2,color: Colors.white,)) :
                        Icon(Icons.shopping_basket,size: SizeConfig.safeBlockHorizontal * 5.2,),
                      ),
                    ),


                    GestureDetector(
                      onTap: (){
                        _setCurrentIndex(2);
                      },
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          return ScaleTransition(child: child, scale: animation);
                        },
                        child: currentIndex == 2 ? CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18,
                            child: Icon(Icons.attach_money,size: SizeConfig.safeBlockHorizontal * 4.2,color: Colors.white,)) :
                        Icon(Icons.attach_money,size: SizeConfig.safeBlockHorizontal * 5.2,),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}