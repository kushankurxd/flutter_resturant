import 'package:flutter/material.dart';
import 'package:flutterresturant/screens/coupon.dart';
import 'package:flutterresturant/screens/payment.dart';
import 'package:flutterresturant/transition/scale.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class CartXD extends StatefulWidget{

  @override
  State createState() {
    return _CartXDState();
  }
}

class _CartXDState extends State<CartXD> {
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


                //Appbar
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 6.4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Cart',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                          letterSpacing: 0.2,
                          wordSpacing: 1.4,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),



                //Cart Item Listview
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child: cart.length == 0 ?
                  Container(
                    height: SizeConfig.screenHeight * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            'img/emptycart.png',
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Your Cart Is Empty',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.2,
                            wordSpacing: 1,
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.safeBlockHorizontal * 4
                          ),
                        ),
                        SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                        Text(
                          'Looks like you haven\'t added',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.4,
                              wordSpacing: 1,
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.safeBlockHorizontal * 3.2
                          ),
                        ),
                        Text(
                          'anything to your cart',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.4,
                              wordSpacing: 1,
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.safeBlockHorizontal * 3.2
                          ),
                        )
                      ],
                    ),
                  ) :
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 42,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: cart.length,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: EdgeInsets.only(bottom: SizeConfig.safeBlockHorizontal,right: SizeConfig.safeBlockHorizontal * 2),
                                child: Container(
                                  height: SizeConfig.safeBlockVertical * 12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Card(
                                            elevation: SizeConfig.safeBlockHorizontal * 1.4,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(SizeConfig.safeBlockVertical * 8),
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(SizeConfig.safeBlockVertical * 8),
                                              child: Image.asset(
                                                '${cart[index].image}',
                                                width: SizeConfig.safeBlockHorizontal * 16.4,
                                                height: SizeConfig.safeBlockVertical * 8,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: SizeConfig.safeBlockHorizontal * 2.4,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '${cart[index].name}',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.2,
                                                    color: Colors.grey[900]
                                                ),
                                              ),
                                              SizedBox(height: SizeConfig.safeBlockHorizontal * 1.4,),
                                              Text(
                                                '\$ ${(int.parse('${cart[index].price}') * int.parse('${cart[index].count}'))}',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                                    wordSpacing: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      //Add or Remove Item in cart
                                      AnimatedSwitcher(
                                        duration: Duration(milliseconds: 300),
                                        transitionBuilder: (Widget child, Animation<double> animation) {
                                          return ScaleTransition(child: child, scale: animation);
                                        },
                                        child: int.parse('${cart[index].count}') < 1 ?
                                        GestureDetector(
                                          onTap: (){
                                            adjustPrice(int.parse('${cart[index].price}'), true);
                                            setState(() {
                                              cart[index].count = (int.parse('${cart[index].count}') + 1).toString();
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 1.2)
                                            ),
                                            padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 4,
                                                vertical: SizeConfig.safeBlockVertical ),
                                            child: Text(
                                              'ADD',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.4
                                              ),
                                            ),
                                          ),
                                        ) :
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            GestureDetector(
                                              child: CircleAvatar(
                                                child: Icon(Icons.remove,size: SizeConfig.safeBlockHorizontal * 3.4,color: Colors.white,),
                                                radius: SizeConfig.safeBlockHorizontal * 2.4,
                                                backgroundColor: Colors.black,
                                              ),
                                              onTap: (){
                                                if(int.parse('${cart[index].count}') > 0) {
                                                  adjustPrice(int.parse(
                                                      '${cart[index]
                                                          .price}'), false);
                                                  setState(() {
                                                    cart[index].count = (int
                                                        .parse(
                                                        '${cart[index]
                                                            .count}') - 1)
                                                        .toString();
                                                  });
                                                }
                                              },
                                            ),
                                            SizedBox(width: SizeConfig.safeBlockHorizontal * 2,),
                                            Text(
                                              '${cart[index].count}',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: SizeConfig.safeBlockHorizontal * 3
                                              ),
                                            ),
                                            SizedBox(width: SizeConfig.safeBlockHorizontal * 2,),
                                            GestureDetector(
                                              child: CircleAvatar(
                                                child: Icon(Icons.add,size: SizeConfig.safeBlockHorizontal * 3.4,color: Colors.white,),
                                                radius: SizeConfig.safeBlockHorizontal * 2.4,
                                                backgroundColor: Colors.black,
                                              ),
                                              onTap: (){
                                                adjustPrice(int.parse('${cart[index].price}'), true);
                                                setState(() {
                                                  cart[index].count = (int.parse('${cart[index].count}') + 1).toString();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                        ),
                      ),



                      //Promo Code
                      SizedBox(height: SizeConfig.safeBlockVertical * 5.4),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, ScaleRoute(page: CouponXD()));
                        },
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'img/copun.png',
                              width: SizeConfig.safeBlockHorizontal * 10,
                            ),
                            SizedBox(width: SizeConfig.safeBlockHorizontal * 4.4,),
                            Text(
                              'APPLY COUPON',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.2,
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 2
                              ),
                            ),
                            SizedBox(width: SizeConfig.safeBlockHorizontal * 42,),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: SizeConfig.safeBlockHorizontal * 6.4,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                      ),




                      //Discount
                      SizedBox(height: SizeConfig.safeBlockVertical * 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2.4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Discount',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                  color: Colors.grey[800]
                              ),
                            ),
                            Text(
                              '\$ $discount',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                  wordSpacing: 2,
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2
                              ),
                            )
                          ],
                        ),
                      ),

                      //Total
                      SizedBox(height: SizeConfig.safeBlockHorizontal),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 6.4,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4,
                                  color: Colors.grey[800]
                              ),
                            ),
                            Text(
                              '\$ ${price - discount}',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                  wordSpacing: 2,
                                  fontSize: SizeConfig.safeBlockHorizontal * 6
                              ),
                            )
                          ],
                        ),
                      ),

                      //Order time - Current time
                      SizedBox(height: SizeConfig.safeBlockVertical * 4),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Order time',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4,
                                  wordSpacing: 2,
                                  color: Colors.grey[800]
                              ),
                            ),
                            Text(
                              '16:42 pm',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                  wordSpacing: 2,
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2
                              ),
                            )
                          ],
                        ),
                      ),

                      //Expected delivery time
                      SizedBox(height: SizeConfig.safeBlockVertical),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Expected delivery time',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4,
                                  wordSpacing: 2,
                                  color: Colors.grey[800]
                              ),
                            ),
                            Text(
                              '17:02 pm',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                  wordSpacing: 2,
                                  fontSize: SizeConfig.safeBlockHorizontal * 3.2
                              ),
                            )
                          ],
                        ),
                      ),

                      //Pay
                      SizedBox(height: SizeConfig.safeBlockVertical * 5.4),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 1.4)
                        ),
                        color: Colors.black,
                        onPressed: (){
                          Navigator.push(context, ScaleRoute(page: PaymentXD()));
                        },
                        child: Container(
                          width: SizeConfig.screenWidth * 0.76,
                          height: SizeConfig.safeBlockVertical * 5.2,
                          child: Center(
                            child: Text(
                              'PROCEED TO PAY',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                letterSpacing: 0.4,
                                wordSpacing: 2,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )


              ],
            ),
          ),
        ],
      ),
    );
  }

  adjustPrice(int tempPrice,bool flag){
    setState(() {
      price =
      flag ? price + tempPrice : price - tempPrice;
    });
  }
}