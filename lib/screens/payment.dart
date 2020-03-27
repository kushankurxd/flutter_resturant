import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class PaymentXD extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _PaymentXDState();
  }

}

class _PaymentXDState extends State<PaymentXD> {


  List finalCart;
  String walletPoints;


  @override
  void initState() {
    super.initState();
    finalCart = new List();
    for(CartItem item in cart){
      if(int.parse(item.count) == 0) continue;
      else finalCart.add(item);
    }

    walletPoints = totalPoints == 0 ? 'Select plans to add money in your wallet' : '$totalPoints points available';
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
                      'Payment',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                          letterSpacing: 0.2,
                          wordSpacing: 1.4,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: SizeConfig.safeBlockVertical * 2,),
                  ],
                ),


                //Recipt
                SizedBox(height: SizeConfig.safeBlockVertical * 4.4,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100].withOpacity(0.6),
                      borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 3)
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 6,
                        bottom: SizeConfig.safeBlockVertical * 2.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 7.4,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: finalCart.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: EdgeInsets.only(
                                    right:
                                    SizeConfig.safeBlockHorizontal *
                                        4.6),
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        child: Card(
                                          elevation: SizeConfig.safeBlockVertical * 0.6,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 8),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 8),
                                            child: Image.asset(
                                              '${finalCart[index].image}',
                                              width: SizeConfig.safeBlockHorizontal * 13,
                                              height: SizeConfig.safeBlockVertical * 6,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeConfig
                                            .safeBlockHorizontal *
                                            10.4,
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue[500],
                                        radius: SizeConfig.safeBlockVertical,
                                        child: Text(
                                          '${finalCart[index].count}',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: SizeConfig
                                                  .safeBlockHorizontal *
                                                  2,
                                              color:
                                              Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),


                        SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                        Padding(
                          padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Amount',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '\$ $price',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal,right: SizeConfig.safeBlockHorizontal * 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '+ GST',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Text(
                                '\$ 1',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal,right: SizeConfig.safeBlockHorizontal * 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '+ Delivery Charges',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Text(
                                '\$ 5',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal,right: SizeConfig.safeBlockHorizontal * 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '+ Packaging Charges',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Text(
                                '\$ 2',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: SizeConfig.safeBlockVertical * 1.6,),
                        Padding(
                          padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 6),
                          child: Container(
                            color: Colors.grey[400],
                            height: SizeConfig.safeBlockHorizontal * 0.1,
                          ),
                        ),

                        SizedBox(height: SizeConfig.safeBlockVertical * 1.4,),
                        Padding(
                          padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.2
                                ),
                              ),
                              Text(
                                '\$ ${price + 8}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 46),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 7),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Make Payment',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                            wordSpacing: 1,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(width: SizeConfig.safeBlockHorizontal * 6,),
                        Icon(Icons.arrow_forward,size: SizeConfig.safeBlockHorizontal * 3,)
                      ],
                    ),

                    SizedBox(height: SizeConfig.safeBlockVertical * 3.4,),
                    Card(
                      elevation: SizeConfig.safeBlockHorizontal * 1.4,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2.4)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 4,
                          vertical: SizeConfig.safeBlockVertical * 2.6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                           Row(
                             children: <Widget>[
                               Image.asset(
                                 'img/wallet.png',
                                 width: SizeConfig.safeBlockHorizontal * 11,
                                 height: SizeConfig.safeBlockVertical * 5.4,
                                 fit: BoxFit.cover,
                               ),
                               SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text(
                                     'Wallet',
                                     style: TextStyle(
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w500,
                                       letterSpacing: 0.2,
                                     ),
                                   ),
                                   Text(
                                     '$walletPoints',
                                     style: TextStyle(
                                         fontFamily: 'Poppins',
                                         fontSize: SizeConfig.safeBlockHorizontal * 2.6,
                                         letterSpacing: 0.1,
                                         color: Colors.grey[700]
                                     ),
                                   )
                                 ],
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
                    ),

                    SizedBox(height: SizeConfig.safeBlockVertical * 2.4,),
                    Card(
                      elevation: SizeConfig.safeBlockHorizontal * 1.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2.4)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 4,
                            vertical: SizeConfig.safeBlockVertical * 2.6),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Image.asset(
                                      'img/coupon2.png',
                                      width: SizeConfig.safeBlockHorizontal * 10.4,
                                      height: SizeConfig.safeBlockVertical * 5.2,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                                    Text(
                                      'Google Pay',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        fontSize: SizeConfig.safeBlockHorizontal * 3.2,
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

                            SizedBox(height: SizeConfig.safeBlockVertical * 2.6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    SizedBox(width: SizeConfig.safeBlockHorizontal * 0.3,),
                                    Image.asset(
                                      'img/coupon4.png',
                                      width: SizeConfig.safeBlockHorizontal * 10,
                                      height: SizeConfig.safeBlockVertical * 5.2,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                                    Text(
                                      'Phone Pe',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        fontSize: SizeConfig.safeBlockHorizontal * 3.2,
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


                            SizedBox(height: SizeConfig.safeBlockVertical * 2.6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    SizedBox(width: SizeConfig.safeBlockHorizontal ,),
                                    Image.asset(
                                      'img/amazon.png',
                                      width: SizeConfig.safeBlockHorizontal * 9,
                                      height: SizeConfig.safeBlockVertical * 5,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(width: SizeConfig.safeBlockHorizontal * 3,),
                                    Text(
                                      'Amazon Pay',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        fontSize: SizeConfig.safeBlockHorizontal * 3.2,
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
                          ],
                        )

                      ),
                    ),



                    SizedBox(height: SizeConfig.safeBlockVertical * 3.4,),
                    Card(
                      elevation: SizeConfig.safeBlockHorizontal * 1.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2.4)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 4,
                            vertical: SizeConfig.safeBlockVertical * 2.6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'img/cod.png',
                                  width: SizeConfig.safeBlockHorizontal * 11,
                                  height: SizeConfig.safeBlockVertical * 5.4,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: SizeConfig.safeBlockHorizontal * 3.2,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Cash',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.2,
                                      ),
                                    ),
                                    Text(
                                      'Keep change for better serving',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: SizeConfig.safeBlockHorizontal * 2.6,
                                          letterSpacing: 0.1,
                                          color: Colors.grey[700]
                                      ),
                                    )
                                  ],
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
                    ),

                    SizedBox(height: SizeConfig.safeBlockVertical * 3.4,),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}