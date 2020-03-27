import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class CouponXD extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CouponXDState();
  }

}

class _CouponXDState extends State<CouponXD> {

  List _couponList = [
    new CouponItem('img/coupon1.png', 'SWIGGYIT', 'Get 50% off', ''),
    new CouponItem('img/coupon2.png', 'DINNER60', 'Get 60% off', ''),
    new CouponItem('img/coupon3.png', 'CELEBRATE30', 'Get 30% using debit card', ''),
    new CouponItem('img/coupon4.png', 'PHONEPESUPER', 'Get 25% discount using Phonepe', ''),
  ];


  @override
  void initState() {
    super.initState();
    _couponList..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 6.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[


                  //AppBar
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 6.4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                          child: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.grey[800],
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          }),
                      Text(
                        'Coupon',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                            letterSpacing: 0.2,
                            wordSpacing: 1.4,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal * 6,),
                    ],
                  ),


                  //Enter coupon code
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 3.4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(SizeConfig.safeBlockVertical)
                    ),
                    padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical,
                              horizontal: SizeConfig.safeBlockHorizontal * 2.4),
                    child: Stack(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Coupon Code',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.safeBlockHorizontal * 3.4,
                              fontWeight: FontWeight.w500
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 1.6,right: SizeConfig.safeBlockVertical),
                            child: Text(
                              'DONE',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: SizeConfig.safeBlockVertical * 4,),
                  Text(
                    'AVAILABLE COUPONS',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: SizeConfig.safeBlockHorizontal  * 3.2,
                      letterSpacing: 0.4,
                      wordSpacing: 2,
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 76,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: _couponList.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical * 4.4),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(SizeConfig.safeBlockHorizontal),
                                              bottomRight: Radius.circular(SizeConfig.safeBlockHorizontal))
                                            ),
                                            padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical),
                                            child: Image.asset(
                                              '${_couponList[index].image}',
                                              width: SizeConfig.safeBlockHorizontal  * 13.6,
                                              height: SizeConfig.safeBlockVertical * 2.6,
                                            )
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(SizeConfig.safeBlockHorizontal),
                                                    bottomLeft: Radius.circular(SizeConfig.safeBlockHorizontal))
                                            ),
                                            padding: EdgeInsets.all(SizeConfig.safeBlockVertical * 1.2),
                                            child: Text(
                                                '${_couponList[index].code}',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                                letterSpacing: 0.2
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'APPLY',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                            letterSpacing: 0.2,
                                          color: Colors.orange[600]
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                                  Text(
                                    '${_couponList[index].name}',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                        letterSpacing: 0.2
                                    ),
                                  ),

                                  SizedBox(height: SizeConfig.safeBlockVertical * 1.2,),
                                  Text(
                                      'Use code SWIGGYIT and get 60% offon your next order No.'
                                          ' minimum order value. Maximum discount of Rs 100',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: SizeConfig.safeBlockHorizontal * 3,
                                        letterSpacing: 0.2,
                                        wordSpacing: 1
                                    ),
                                  ),

                                  SizedBox(height: SizeConfig.safeBlockVertical * 1.6,),
                                  Text(
                                      'MORE DETAILS',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.safeBlockHorizontal * 3.1,
                                        letterSpacing: 0.2,
                                        wordSpacing: 2,
                                        color: Colors.blue[600]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}