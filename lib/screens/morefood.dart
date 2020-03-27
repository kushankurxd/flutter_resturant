import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/utils/helper.dart';

class MoreFoodXD extends StatefulWidget{

  final int index;
  MoreFoodXD(this.index);

  @override
  State<StatefulWidget> createState() {
    return _MoreFoodXDState();
  }

}

class _MoreFoodXDState extends State<MoreFoodXD> {
  List _popularList = [
    new Food('img/breakfast1.png', 'Salad Omlet', 'Breakfast , Healthy', '30', 'DAILY4', '4.0', '15 min', '10'),
    new Food('img/breakfast2.png', 'Cheese Bread', 'Breakfast , Tasty', '10', 'MORNINGX', '3.4', '10 min', '14'),
    new Food('img/breakfast3.png', 'Chicken Sausage', 'Non-Veg , Rich', '25', 'MORNINGX', '4.2', '20 min', '25'),
    new Food('img/breakfast4.png', 'Oats - Fruits Mixed', 'Starter , Veg', '30', 'DAILYFOOD', '4.0', '5 min', '15'),
    new Food('img/dinner2.png', 'Panner Butter Masala', 'Dinner , Eastern', '50', 'DINNERON', '4.5', '12 min', '25'),
    new Food('img/dinner1.png', 'Butter Roti', 'Veg', '40', 'DAILYDINNER', '4.0', '10 min', '5'),
    new Food('img/lunch2.png', 'Chicken Briyani', 'Lunch , North Indian', '50', 'LUNCHIT', '4.5', '20 min', '30'),
    new Food('img/lunch1.png', 'Chicken Butter Masala', 'Non-Veg', '40', 'LUNCHIT', '4.2', '10 min', '25'),
  ];

  List _specialList = [
    new Food('img/specialfood1.png', 'Egg Roll', 'Snacks', '4', 'EATSNACK', '4.0', '10 min', '10'),
    new Food('img/specialfood2.png', 'Chicken Lollipop', 'Snacks', '5', 'EATSNACK', '4.0', '10 min', '25'),
    new Food('img/dinner2.png', 'Panner Butter Masala', 'Dinner , Eastern', '50', 'DINNERON', '4.5', '12 min', '25'),
    new Food('img/breakfast4.png', 'Oats - Fruits Mixed', 'Starter , Veg', '30', 'DAILYFOOD', '4.0', '5 min', '15'),
  ];

  int _index = 0;
  ScrollController cartScrollController = new ScrollController();

  _setIndex(index){
    setState(() {
      _index = index;
      _popularList..shuffle();
      _specialList..shuffle();
    });
  }


  @override
  void initState() {
    super.initState();
    _index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                //Appbar
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 6.4,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.safeBlockHorizontal * 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,size: SizeConfig.safeBlockHorizontal * 5.4, color: Colors.grey[800],)),
                      Icon(Icons.person_outline,color: Colors.grey[800],)
                    ],
                  ),
                ),


                SizedBox(
                  height: SizeConfig.safeBlockVertical * 4,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.safeBlockHorizontal * 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          GestureDetector(
                            onTap: (){
                              _setIndex(0);
                            },
                            child: AnimatedSwitcher(
                              transitionBuilder: (Widget child, Animation<double> animation) {
                                return ScaleTransition(child: child, scale: animation);
                              },
                              duration: Duration(milliseconds: 200),
                              child: _index == 0 ? Column(
                                children: <Widget>[
                                  Text(
                                    'Breakfast',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: SizeConfig.safeBlockHorizontal * 4.4,
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
                                'Breakfast',
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
                            onTap: (){
                              _setIndex(1);
                            },
                            child: AnimatedSwitcher(
                              transitionBuilder: (Widget child, Animation<double> animation) {
                                return ScaleTransition(child: child, scale: animation);
                              },
                              duration: Duration(milliseconds: 200),
                              child: _index == 1 ? Column(
                                children: <Widget>[
                                  Text(
                                    'Lunch',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: SizeConfig.safeBlockHorizontal * 4.4,
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
                                'Lunch',
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
                            onTap: (){
                              _setIndex(2);
                            },
                            child: AnimatedSwitcher(
                              transitionBuilder: (Widget child, Animation<double> animation) {
                                return ScaleTransition(child: child, scale: animation);
                              },
                              duration: Duration(milliseconds: 200),
                              child: _index == 2 ? Column(
                                children: <Widget>[
                                  Text(
                                    'Dinner',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: SizeConfig.safeBlockHorizontal * 4.4,
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
                                'Dinner',
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
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(SizeConfig.safeBlockVertical)
                        ),
                        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
                        child: Icon(Icons.search,size: SizeConfig.safeBlockHorizontal * 5.4,color: Colors.grey[700],),
                      ),
                    ],
                  ),
                ),



                //Special List
                SizedBox(height: SizeConfig.safeBlockVertical * 4,),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 22,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 4,
                              top: SizeConfig.safeBlockHorizontal * 2),
                          child: GestureDetector(
                            onTap: (){
                              addItemCart(_specialList[index]);
                            },
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
                                        child: Image.asset('${_specialList[index].image}',fit: BoxFit.cover,))
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
                                                '${_specialList[index].name}',
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
                                                    '${_specialList[index].type}',
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
                                                    '${_specialList[index].time}',
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
                                            '\$ ${_specialList[index].price}',
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
                          ),
                        );
                      }
                  ),
                ),


                //Popular List
                SizedBox(height: SizeConfig.safeBlockVertical * 3,),
                Row(
                  children: <Widget>[
                    Icon(Icons.star,color: Colors.yellow[600],size: SizeConfig.safeBlockHorizontal * 4.4,),
                    SizedBox(width: SizeConfig.safeBlockHorizontal  * 2,),
                    Text(
                      'Popular',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.2
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: cart.length > 0 ? SizeConfig.safeBlockVertical * 44 : SizeConfig.safeBlockVertical * 54,
                  child: ListView.builder(
                    itemCount: 6,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: EdgeInsets.only(bottom: SizeConfig.safeBlockHorizontal * 4.4),
                          child: GestureDetector(
                            onTap: (){
                              addItemCart(_popularList[index]);
                            },
                            child: Row(
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
                                        child: Image.asset('${_popularList[index].image}',fit: BoxFit.cover,))
                                ),
                                SizedBox(width: SizeConfig.safeBlockHorizontal * 2.6,),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal * 50,
                                  height: SizeConfig.safeBlockVertical * 12,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[


                                      Text(
                                        '${_popularList[index].name}',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.2,
                                            fontSize: SizeConfig.safeBlockHorizontal * 3.4
                                        ),
                                      ),
                                      Text(
                                        '${_popularList[index].type}',
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
                                            '${_popularList[index].discount}% off',
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
                                            'Use coupon ${_popularList[index].coupon}',
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
                                            '${_popularList[index].rating}',
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
                                            '${_popularList[index].time}',
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
                                            '\$ ${_popularList[index].price}',
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
                          ),
                        );
                      },
                  ),
                )
              ],
            ),
          ),





          AnimatedOpacity(
            opacity: cart.length > 0 ? 1 : 0,
            duration: Duration(milliseconds: 200),
            child: DraggableScrollableSheet(
              initialChildSize: 0.11,
              maxChildSize: 0.11,
              minChildSize: 0.11,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  controller: scrollController,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              SizeConfig.safeBlockHorizontal * 14.4),
                          topLeft: Radius.circular(
                              SizeConfig.safeBlockHorizontal * 14.4)),
                    ),
                    height: MediaQuery.of(context).size.height * 0.11,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.safeBlockHorizontal * 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical),
                            child: Center(
                              child: Container(
                                width: 40.4,
                                height: 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: SizeConfig.safeBlockVertical * 1.6),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      currentIndex = 1;
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Transform.rotate(
                                    child: Text(
                                      'Cart',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.6,
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                          SizeConfig.safeBlockHorizontal * 4),
                                    ),
                                    angle: -pi / 180 * 90,
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.safeBlockHorizontal * 4,
                                ),
                                SizedBox(
                                  width: SizeConfig.safeBlockHorizontal * 54,
                                  height: SizeConfig.safeBlockVertical * 6,
                                  child: ListView.builder(
                                    controller: cartScrollController,
                                    physics: BouncingScrollPhysics(),
                                    itemCount: cart.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          removeCartItem(index);
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                              SizeConfig.safeBlockHorizontal *
                                                  2.4),
                                          child: Stack(
                                            children: <Widget>[
                                              Center(
                                                child: Container(
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 8),
                                                    child: Image.asset(
                                                      '${cart[index].image}',
                                                      width: SizeConfig.safeBlockHorizontal * 13,
                                                      height: SizeConfig.safeBlockVertical * 6,
                                                      fit: BoxFit.cover,
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
                                                    '${cart[index].count}',
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
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.safeBlockHorizontal * 4,
                                ),
                                Text(
                                  '\$ $price',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.6,
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                      SizeConfig.safeBlockHorizontal * 3.4),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  addItemCart(Food item) {
    adjustPrice(int.parse(item.price), true);

    for(int i=0;i<cart.length;i++){
      if(cart[i].name == item.name){
        setState(() {
          cart[i].count = (int.parse(cart[i].count) + 1).toString();
          adjustScroll(i);
        });
        return;
      }
    }
    setState(() {
      cart.add(new CartItem(item.name, '1', item.price, item.image));
      adjustScroll(cart.length - 1);
    });
  }

  removeCartItem(int index) {
    if((int.parse(cart[index].count)) > 0)
      adjustPrice(int.parse(cart[index].price), false);

    if((int.parse(cart[index].count)) > 1){
      setState(() {
        cart[index].count = (int.parse(cart[index].count) - 1).toString();
      });
      return;
    }
    setState(() {
      cart.removeAt(index);
    });
  }

  adjustPrice(int tempPrice,bool flag){
    setState(() {
      price =
      flag ? price + tempPrice : price - tempPrice;
    });
  }

  adjustScroll(int pos){
    cartScrollController.animateTo(
      pos * SizeConfig.safeBlockHorizontal * 14,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),);
  }

}